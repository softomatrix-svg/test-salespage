# Options Command & Skill

This file collects everything for your `/options` command and the corresponding Options Chain Research Skill.

---

## 1. SKILL.md – options-chain-research

```markdown
---
name: options-chain-research
description: >
  Extract U.S. stock and ETF tickers from pasted text, then research each ticker's options
  chain to find the nearest expiration at least 30 days out and the call (or put) contract
  closest to a target delta (default 0.80), returning strike, bid, ask, open interest, and
  warnings. Use when the user wants research support on option contracts, not trade advice.
---

# Options Chain Research Skill

Use this skill when the user pastes website text, article text, newsletter text, or any
copied content and wants to:

1. Extract U.S. stock or ETF tickers.
2. Research each ticker’s option chain.
3. Find an expiration at least 30 days out.
4. Identify a contract near a target delta (default 0.80 for calls).
5. Return strike, bid, ask, open interest, and warnings.
6. Clearly describe limitations, data quality, and risk.

This skill is for **research support only**, not trade execution or financial advice.

---

## Default Settings

Unless the user specifies otherwise:

- **Option type:** Calls
- **Target delta (calls):** +0.80
- **Delta tolerance (calls):** 0.75–0.85
- **Target delta (puts):** −0.80 (only when user clearly asks for puts)
- **Delta tolerance (puts):** −0.75 to −0.85
- **Minimum days to expiration:** 30 calendar days from “today”
- **Market scope:** U.S. stocks and ETFs

If the user asks:

- “Use puts” → switch to put options with delta near −0.80.
- “Different delta” → adjust target and tolerance around their requested value.
- “Different days out” → adjust the minimum days-to-expiry accordingly.

---

## Step 1 — Extract Tickers from Pasted Text

When the user runs `/options` or otherwise invokes this flow:

1. Ask them to **paste the text** they copied from a website, screener, article, or newsletter.
2. From that text, extract candidate tickers.

### What to include as candidate tickers

- 1–5 uppercase letters (e.g. `AAPL`, `MSFT`, `SPY`, `QQQ`, `TQQQ`, `CSTM`, `NWSA`).
- Symbols with a dot when clearly used as tickers (e.g. `BRK.B`).
- Symbols that appear alongside a company name or clear context like:
  - “Ticker: XYZ”
  - “Stock: XYZ”
  - “ETF: XYZ”

### What to exclude

- Obvious non-tickers and noise:
  - `USA`, `CEO`, `EPS`, `ETF` as a generic word, months like `JAN`, `FEB`, `MAR`, etc.
  - Section headers, navigation items, or UI text (e.g. `HOME`, `MENU`, `LOGIN`).
- Ambiguous capitalized words that appear as normal language without ticker context.

If you’re unsure about a symbol:

- Do **not** silently discard it.
- Put it in an **“uncertain tickers”** list and **do not** use it for options lookup unless
  the user confirms.

### Cleaning the ticker list

- Uppercase all symbols.
- Deduplicate.
- Optionally sort alphabetically for presentation.

---

## Step 2 — Options Research for Each Ticker

For each **valid ticker**:

1. **Confirm options exist.**
   - If no options are listed for the symbol, mark the ticker as:
     - `Warnings: "no listed options for this ticker"` and set all option-specific fields to `unavailable`.

2. **Find expiration ≥ minimum days out.**
   - Determine today’s date.
   - List the available option expiration dates for the ticker.
   - Filter to expirations at least `min_days` out (default 30 days).
   - Select the **nearest expiration date** that is **≥ min_days**.
   - If no expiration meets this requirement:
     - Mark: `Warnings: "no expiration at least <N> days out"` and set contract fields to `unavailable`.

3. **Select option type and target delta.**
   - Default option type: **Call**.
   - If user explicitly asks for puts, switch option type: **Put**.
   - Calls:
     - Target delta: **+0.80** with tolerance **0.75–0.85**.
   - Puts:
     - Target delta: **−0.80** with tolerance **−0.75–−0.85**.
   - The user may request a different delta; adjust target and tolerance accordingly.

4. **Choose the contract closest to target delta.**
   - Look at all options of the chosen type (Call/Put) for the selected expiration.
   - Filter to those **with a valid delta**.
   - Prefer contracts where delta is inside the tolerance range.
   - If none are inside, choose the contract whose delta is **numerically closest** to the target.
   - If delta data is missing for all contracts:
     - Mark delta as `unavailable`.
     - Choose a reasonable at-the-money or near-the-money strike based on price, but clearly flag that delta was not used.
     - Explain in `Warnings` that delta data was unavailable; do **not** fabricate delta.

---

## Step 3 — Required Output Fields

For each ticker, output at least:

- **Ticker**  
- **Company** (if available; otherwise `unavailable`)  
- **Option Type** (Call / Put)  
- **Expiration** (YYYY-MM-DD, exact date)  
- **Target Delta** (e.g. 0.80 or −0.80)  
- **Observed Delta** (or `unavailable` if not provided by data source)  
- **Strike** (numeric, e.g. 100.0)  
- **Bid** (or `unavailable`)  
- **Ask** (or `unavailable`)  
- **Open Interest** (or `unavailable`)  
- **Notes** (short comments about context or calculations)  
- **Warnings** (comma-separated or bullet list of issues)

---

## Step 4 — Warning Flags

Explicitly flag any of the following conditions:

- **Delayed quote or non-real-time data**  
  - e.g. `"quotes may be delayed; verify in brokerage"`.

- **Wide bid/ask spread**
  - Example rule of thumb:
    - If `spread > 10–15%` of mid-price, mark `"wide bid/ask spread"`.

- **Low open interest**
  - If OI is very low (threshold can be ~10–50 contracts, depending on context), mark `"low open interest"` or `"very low open interest"`.

- **Missing delta**
  - If delta is not provided, set `"Observed Delta: unavailable"` and warn:
    - `"delta not available from data source; contract chosen without delta matching"`.

- **No listed options**
  - `"no listed options for this ticker"`.

- **No expiration ≥ N days**
  - `"no expiration at least <N> days out"`.

- **Outside delta range**
  - If chosen contract’s delta is outside tolerance:
    - `"delta outside target range; closest available contract used"`.

- **Uncertain ticker**
  - If ticker had ambiguity or low confidence:
    - `"ticker mapping uncertain; verify symbol and underlying"`.

- **Conflicting or incomplete data**
  - If data from source appears inconsistent, note that explicitly.

---

## Step 5 — Guard Rails

Always adhere to the following:

- **Do not invent or fabricate data.**
  - If any field is not available, explicitly set it to `"unavailable"`.

- **Data quality and timing:**
  - Assume quotes may be delayed and not real-time.
  - Note when market may be closed (e.g. after hours, weekends) and that prices can be stale.

- **No financial advice:**
  - Do not recommend specific trades.
  - Do not say "buy", "sell", or "this is a good trade".
  - Frame everything as **research information**, not a recommendation.

- **Liquidity transparency:**
  - Clearly flag low open interest and wide spreads.
  - Do not hide uncertainty or risk.

- **Clarity:**
  - Keep calls vs. puts unambiguous.
  - Use exact dates and unambiguous ticker symbols.

---

## Step 6 — Workflow Summary

Follow this high-level workflow:

1. Read the user’s pasted content.
2. Extract candidate tickers.
3. Clean and validate to produce:
   - Valid tickers.
   - Uncertain tickers (if any).
4. For each **valid ticker**:
   - Check options availability.
   - Find expiration ≥ minimum days out (default 30).
   - Select the target option type (Call/Put).
   - Choose contract closest to target delta.
   - Capture expiration, delta, strike, bid, ask, and open interest.
   - Attach notes and warnings.
5. For tickers that cannot be completed:
   - Include them in the output.
   - Mark missing fields as `unavailable`.
   - Explain why, when possible.
6. Present results in a structured, easy-to-scan format.
7. End with a clear disclaimer.

---

## Output Format

### Run Summary

At the top of the response, include a brief summary:

- **Date** of the run (in user’s timezone if known, otherwise UTC).
- **Settings used**:
  - Option type (Call/Put).
  - Target delta and tolerance.
  - Minimum days to expiration.
- **Total tickers found**.
- **Tickers successfully researched**.
- **Tickers with warnings or missing data**.

### Extracted Tickers

Show:

- **Valid tickers:** a list of all tickers you actually researched.
- **Uncertain tickers:** a separate list, if any, with a note to verify before using.

### Per-Ticker Results (Standard Mode)

For each ticker, output a block like:

```text
Ticker: AAPL
Company: Apple Inc.
Option Type: Call
Expiration: 2026-06-21
Target Delta: 0.80
Observed Delta: 0.78
Strike: 200
Bid: 5.20
Ask: 5.50
Open Interest: 1,250
Notes: Nearest call to 0.80 delta at first expiration ≥ 30 days.
Warnings: quotes may be delayed; verify spread and OI in your brokerage before trading.
```

### Spreadsheet Mode (Optional)

If the user asks for a spreadsheet-friendly or table format, output:

```text
Ticker | Company | Option Type | Expiration | Target Delta | Observed Delta | Strike | Bid | Ask | Open Interest | Notes | Warnings
AAPL   | Apple Inc. | Call | 2026-06-21 | 0.80 | 0.78 | 200 | 5.20 | 5.50 | 1250 | Nearest call to 0.80 delta at first expiration ≥ 30 days. | quotes may be delayed; verify before trading.
```

---

## Final Disclaimer

Always end responses from this skill with a short disclaimer similar to:

> **Disclaimer:** All options data may be delayed and is provided for research purposes only.  
> This is not financial advice. Always verify pricing, Greeks, and liquidity in your own
> brokerage platform before making any trading decision.
```

---

## 2. Quick Prompt for `/options`

You can also use this quick prompt to describe the `/options` command behavior:

```text
When I type `/options` and paste text:

1. Extract all valid U.S. stock and ETF tickers from the pasted text.
2. For each ticker with listed options:
   - Find the nearest option expiration date at least 30 days out.
   - By default, use call options and target delta 0.80 (preferred range 0.75–0.85).
3. Return for each ticker: ticker, company, expiration, option type, target delta, observed delta,
   strike, bid, ask, open interest, and any warnings.
4. Do not invent missing data; mark unavailable fields as "unavailable" and explain when possible.
5. Clearly state that quotes and options data may be delayed, this is for research only, and all
   details must be verified in my brokerage platform before trading. This is not financial advice.
```