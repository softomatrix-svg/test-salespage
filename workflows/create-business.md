# /CREATE BUSINESS - PRODUCT CREATION ENGINE

**ABSOLUTE RULE: NEVER DEVIATE FROM THIS PROTOCOL.**

When Chad types `/create business`:
1. Execute each stage completely
2. **STOP after each stage**
3. **WAIT for Chad to say "continue"** before proceeding to next stage
4. Never auto-advance through stages

---

## STAGE 1 — OPPORTUNITY INTELLIGENCE

Generate 10 viable product opportunities. For each idea identify:
- Target buyer
- Painful problem
- Demand indicators (search activity, competitors, social signals)
- Supported market price range
- 2–3 competitors or substitutes
- Estimated profit potential (low / medium / high) with reasoning

Score each idea on urgency, speed to revenue, competition strength, and scalability.

**Output:** Concise Opportunity Report with the strongest opportunity selected.

---

## STAGE 2 — PRODUCT ARCHITECTURE

Create a Business Blueprint including:
- Core offer
- Unique positioning
- Pricing strategy
- Upsell / backend potential
- Traffic entry point
- Fulfillment model
- Revenue model (one-time, subscription, hybrid)

**Rule:** Do not proceed if the blueprint is weak or unclear.

---

## STAGE 3 — SALES PAGE

**Step 1: Use Copywriting Skill (3,000 words)**
- `skills/copywriting/OPENCLAW-SALES-PAGE-DIRECTIVE.md` (10 elements)
- `skills/copywriting/CONVERSION-INTELLIGENCE-DIRECTIVE.md`
- Full sales copy (problem, solution, mechanism, proof, offer, guarantee)
- Target: 3,000 words minimum

**Step 2: Use Hero Skill**
- `skills/copywriting/OPENCLAW-HERO-3PART-HEADLINE-DOCTRINE.md`
- 3-part hero: Eyebrow → Headline (with colored highlight) → Subheadline

**Step 3: Use Landing Page Design Skill**
- `skills/copywriting/STAGE-3-DESIGN-STYLE.md` (ABSOLUTE RULE - NEVER DEVIATE)
- Dark navy/black backgrounds (#0a0f1e, #141414)
- Bright accent colors (cyan #00d9ff, green #10b981, yellow #fbbf24)
- HUGE bold headlines (4-5rem)
- Full-width sections with visual variety
- Dark cards with borders and accents
- Yellow/gold CTA buttons
- Timeline breakdowns, comparison sections, feature grids
- Based on FastStart, Local Newsletter Playbook examples

**Hero Section Structure (MANDATORY ORDER):**
1. Eyebrow text (small, uppercase, colored)
2. Headline (HUGE, with colored highlight)
3. Subheadline (gray text)
4. **VIDEO** ← Always in the hero, below subheadline
5. **CTA BUTTON** ← Always below video

**Then Page Sections:**
1. Problem section
2. Solution/mechanism
3. Timeline/breakdown (if applicable)
4. Comparison (if applicable)
5. Features/benefits
6. Offer/pricing
7. Guarantee
8. FAQ
9. Final CTA

**Deploy to Vercel:**
- ALWAYS use token from `credentials/credentials-vercel.txt`
- Command: `$env:VERCEL_TOKEN = "[token]"; npx vercel --prod --yes --token $env:VERCEL_TOKEN`

**CRITICAL:** Sales page MUST be deployed to Vercel and accessible via URL.

**Stage output format:**
```
## STAGE 3 — SALES PAGE

✅ Sales Page Written (10-Element + 3-Part Hero + Vault Design)
✅ Sales Page Deployed: [LIVE VERCEL URL]

---
Ready for Stage 4? (Reply 'continue')
```

---

## STAGE 4 — VSL + STRIPE + CHECKOUT

**Create VSL:**
- Use `/vsl` command (see `skills/vsl/VSL-COMMAND.md`)
- ALWAYS use Chad's ElevenLabs voice (voiceId: PeMXWXe7DDCb8HldBr2s)
- ALWAYS use UPPERCASE text on slides
- ALWAYS use white background, black text
- Target 5 minutes (1,200-1,500 words)
- **Embed VSL on sales page** (so Chad can watch it)

**Create Stripe Products:**
- Create Stripe product
- Create Stripe price (recurring or one-time)
- **Connect checkout to sales page and VERIFY it works** (critical - don't skip!)
- Test that clicking CTA button opens Stripe checkout

**Setup Delivery:**
- Document delivery/fulfillment process

**Stage output format:**
```
## STAGE 4 — VSL + STRIPE + CHECKOUT

✅ Stripe Product Created
✅ Stripe Price ($47/month)
✅ Stripe Checkout Connected & Working (click CTA to test)
✅ VSL Created & Embedded on Page
✅ Delivery Setup Documented

**Sales Page:** [VERCEL URL]

---
Ready for Stage 5? (Reply 'continue')
```

**CRITICAL:** After sending the stage completion message, use the message tool to send the VSL video:
```
message action=send channel=telegram target=[chat_id] message="VSL Preview (playable):" media=[path/to/vsl-video.mp4]
```

**DO NOT use MEDIA: paths in text responses - they don't actually send the video!**

---

## STAGE 5 — TRAFFIC + CONVERSION ASSETS

### A) Organic Assets
- 1 primary launch post
- 5 follow-up posts
- 10 engagement hooks
- 5 authority-building posts

### B) Paid Ad Assets
- 5 short-form hooks
- 3 long-form ads
- 2 retargeting ads
- 10 headline variations

### C) Email Sequence
Write a 7-email launch sequence:
1. Announcement
2. Problem agitation
3. Solution breakdown
4. Mechanism deep dive
5. Objection handling
6. Urgency
7. Final call

Each email must include:
- Subject line
- Preview text
- Body
- Clear CTA

---

## STAGE 6 — ACTIVE TRAFFIC DEPLOYMENT

**Go beyond asset creation and EXECUTE traffic:**
- Publish organic posts
- Schedule follow-up posts
- Launch paid ads (if ad accounts connected)
- Set daily budget recommendation
- Define targeting criteria
- Define tracking events
- Install tracking pixels if missing
- Monitor early engagement signals

**If accounts are not connected:** Clearly state what credentials are required and pause ONLY that step.

---

## STAGE 7 — OPTIMIZATION + SCALE PLAN

After traffic begins:
- Identify 3 optimization levers
- Identify 3 scaling strategies
- Identify one long-term brand expansion opportunity
- Recommend daily revenue target and scaling threshold

---

## FINAL OUTPUT REQUIREMENTS

**Only claim completion when you provide ALL of these:**
- ✅ Sales page URL
- ✅ Stripe product ID + checkout link
- ✅ Product delivery link
- ✅ VSL script
- ✅ VSL audio file (ElevenLabs)
- ✅ Ad copy set
- ✅ Email sequence
- ✅ Traffic deployment confirmation

**Rules:**
- No fake urgency
- No fake proof
- No exaggerated income claims
- Build sustainable revenue assets

---

## BUSINESS BOARD INTEGRATION (MANDATORY)

**After EACH stage completion:**
1. Update Business Board at nicelycontrol.com/businesses
2. Mark tasks DONE
3. Add resources (URLs, files, assets)
4. Track progress

**The board is the source of truth.**

---

## EXECUTION STYLE

- **Brief output** - New people get overwhelmed by long text
- **Auto-fix issues** - Don't ask, just fix and mention what you fixed
- **Execute, don't explain** - Show results, not process
- **Complete deliverables** - Don't stop halfway
- **All stages required** - Never skip steps
- **CLEAN OUTPUT** - Just checkmarks and URLs. No IDs. No stats. No previews. No details.
- **STOP after each stage** - Wait for "continue" before proceeding

**Remember:** Chad wants to wake up and see progress, not questions. Keep it simple for beginners.
