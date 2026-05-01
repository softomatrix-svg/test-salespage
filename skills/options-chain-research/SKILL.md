---
name: options-chain-research
description: Extract stock tickers from pasted text, fetch options chain data via an external API hook, select contracts that match target criteria (delta, days to expiration, open interest), and produce a structured, plain-English research report. Use for informational options-chain research only; never for personalized financial advice or trade recommendations.
---

# Options Chain Research

Modular workflow for researching options contracts from noisy pasted text.

## Scope

Use this skill to:
- parse pasted text and extract likely US stock ticker symbols
- call an external options-chain API for each validated ticker
- screen contracts based on target delta, minimum days to expiration, and minimum open interest
- select the nearest matching contract per ticker
- generate a clean, plain-English **OPTIONS RESEARCH REPORT**

Do **not** use this skill to:
- provide personalized financial advice
- recommend buying, selling, or holding any security
- claim any trade is the best, safest, or guaranteed
- fabricate or guess market data

## Safety & Compliance

Global safety rules:
- research and information only
- never provide personalized financial advice
- never recommend specific trades or positions
- never describe any trade as "best", "safest", "guaranteed", "cannot lose", or equivalent
- never fabricate prices, greeks, open interest, or other market data
- never claim data is live/real-time unless explicitly confirmed by the provider
- refuse assistance involving insider trading, market manipulation, evasion of regulation, or illegal coordination
- when uncertain or when data is missing, say so clearly

Always append this disclaimer to reports:

> This report is for informational purposes only and is not financial advice. Options involve risk, and market data may be delayed, incomplete, unavailable, or inaccurate.

## Inputs

Use the orchestrator with an input of this shape:

```json
{
  "pasted_text": "string",
  "min_days_to_expiration": 30,
  "target_delta": 0.80,
  "option_type": "call",
  "max_tickers": 25,
  "min_open_interest": 1
}
```

Parameters:
- **pasted_text**: arbitrary text that may contain tickers
- **min_days_to_expiration**: minimum days to expiration for contracts to consider
- **target_delta**: target option delta to screen around (e.g. 0.3, 0.5, 0.8)
- **option_type**: `call` or `put`
- **max_tickers**: maximum number of tickers to process
- **min_open_interest**: minimum open interest for contracts when OI is available

## Modular Workflow Overview

### Module 1 – `ticker_extractor_v1`

Purpose:
- extract likely US-listed stock tickers from `pasted_text`.

Logic:
- favor 1–5 letter uppercase symbols
- deduplicate tickers
- ignore obvious non-ticker words (buy, sell, dates, percentages, etc.)
- prefer explicit symbols over company names
- label each candidate as `Valid`, `Uncertain`, or `Invalid` with a brief reason

Output fields:
- `ticker_candidates_count`
- `valid_deduplicated_count`
- `tickers[]` with `ticker`, `validation_status`, `confidence`, `reason`

If no tickers are found, return an empty list and indicate zero counts.

### Module 2 – `options_chain_fetcher_v1`

Purpose:
- call an external API hook to retrieve options-chain data for a validated ticker.

Expected API hook (template):

```json
{
  "hook_name": "get_options_chain_for_ticker",
  "request": {
    "ticker": "AAPL",
    "option_type": "call",
    "min_days_to_expiration": 30,
    "target_delta": 0.80,
    "min_open_interest": 1
  }
}
```

Normalization rules:
- propagate only factual data from the provider
- do **not** estimate missing fields
- keep missing values `null` when not provided
- normalize `option_type` to `call` or `put`
- normalize `data_status` to one of: `Live`, `Delayed`, `Unavailable`, `Unknown`

Failure handling:
- if provider returns no usable data → `contracts: []`, `data_status` and `error` set appropriately
- if provider errors → pass through a short error message
- if `delta` is missing → keep the contract record but **do not** invent `delta`

### Module 3 – `contract_selector_v1`

Purpose:
- filter fetched contracts and select the one closest to `target_delta`.

Screening rules:
1. restrict to requested `option_type`
2. exclude contracts with `days_to_expiration` below `min_days_to_expiration`
3. if `open_interest` exists, exclude contracts below `min_open_interest`
4. exclude contracts missing `delta` when delta-based selection is required
5. choose the contract whose `delta` is closest to `target_delta`

Tiebreak rules (in order):
1. nearest valid expiration
2. higher `open_interest`
3. tighter spread (when both bid and ask exist)
4. for calls → lower strike; for puts → higher strike

If no contract qualifies, return `selection_status: "No suitable contract found"` with a clear reason.

### Module 4 – `options_chain_research_orchestrator_v3`

Purpose:
- coordinate the full process and produce the final report.

Steps:
1. pass `pasted_text` to `ticker_extractor_v1`
2. keep only tickers marked `Valid`; skip `Invalid`, optionally skip `Uncertain` unless confirmed by provider
3. for each valid ticker, call `options_chain_fetcher_v1`
4. pass each response to `contract_selector_v1`
5. compile all results into a plain-English options research report

## Final Report Format

The orchestrator should output a report like:

```text
OPTIONS RESEARCH REPORT

Run Settings:
- Minimum Days to Expiration: [number]
- Target Delta: [number]
- Option Type: [Call or Put]
- Maximum Tickers Reviewed: [number]

Source Summary:
- Extracted ticker candidates: [number]
- Valid deduplicated tickers: [number]
- Successfully researched tickers: [number]
- Tickers with unavailable data: [number]

Results:

Ticker: [TICKER]
Validation Status: [Valid / Invalid / Uncertain]
Underlying Price: [value or Unavailable]
Option Type: [Call or Put]
Expiration: [YYYY-MM-DD]
Days to Expiration: [number]
Strike: [value]
Delta: [value]
Bid: [value]
Ask: [value]
Open Interest: [value]
Data Status: [Live / Delayed / Unavailable / Unknown]
Selection Basis: [brief explanation]
Notes: [brief note]

[...repeat per ticker...]

Disclaimer:
This report is for informational purposes only and is not financial advice. Options involve risk, and market data may be delayed, incomplete, unavailable, or inaccurate.
```

Failure cases:
- **No valid tickers** → return a short message like:
  - `No valid ticker symbols were confidently extracted from the provided text.`
  - plus the standard disclaimer
- **API errors for some tickers** → mark those tickers individually and continue with others
- **Missing delta** → do not select a contract if delta-based targeting is required; explain why
- **Missing open interest** → use available contracts and note that open interest was unavailable when relevant

## Language & Compliance

Preferred phrases:
- "matching contract"
- "screened result"
- "available contract data"
- "connected source returned"
- "informational research result"

Disallowed phrases:
- "you should buy"
- "best option"
- "guaranteed income"
- "safest contract"
- "cannot lose"
- "sure thing"

Always end with the global disclaimer:

> This report is for informational purposes only and is not financial advice. Options involve risk, and market data may be delayed, incomplete, unavailable, or inaccurate.
