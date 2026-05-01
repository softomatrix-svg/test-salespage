# Create Business Skill

**Complete 7-stage product creation engine for building businesses from scratch.**

## Command

`/create business`

## What It Does

Takes you from zero to launched business in 7 stages:
1. **Opportunity Intelligence** - 10 viable product ideas
2. **Product Architecture** - Business blueprint
3. **Sales Page** - Copywriting + design + deployed to Vercel
4. **VSL + Stripe + Checkout** - Video, payment processing, delivery
5. **Traffic Assets** - Organic + paid + email sequences
6. **Active Traffic** - Actually launch and deploy
7. **Optimization** - Scale plan

## Setup

1. Copy `create-business/` folder to `skills/`
2. Copy `create-business.md` to `workflows/`
3. Copy `preflight-create-business.ps1` to `commands/`
4. Ensure you have:
   - Vercel token in `credentials/credentials-vercel.txt`
   - Stripe keys in `credentials/stripe-keys.txt`
   - ElevenLabs API key (for VSL)
   - ffmpeg + Python installed

## Usage

Type: `/create business`

The assistant will:
- Run pre-flight check
- Execute Stage 1 (opportunities)
- Wait for "continue"
- Execute next stage
- Repeat until all 7 stages complete

## Dependencies

**Required:**
- Vercel CLI + token
- Stripe API keys
- Node.js
- ffmpeg
- Python

**Skills Used:**
- Copywriting (10-element sales page)
- Hero headline (3-part doctrine)
- Landing page design (Vault style)
- VSL creation
- Email formula

## Output Style

- Brief and beginner-friendly
- Auto-fixes issues when possible
- Clean output (checkmarks + URLs only)
- Stops after each stage for approval

## Files

- `SKILL.md` - This file
- `create-business.md` - Full 7-stage workflow
- `preflight-create-business.ps1` - Dependency checker
- `README.md` - Quick start guide

---

**Created:** 2026-03-21
**Version:** 1.0
**Author:** Pacino
