# Create Business Skill - Quick Start

## Installation

1. **Extract to workspace:**
   ```
   Unzip to: .openclaw/workspace/skills/create-business/
   ```

2. **Copy workflow:**
   ```powershell
   Copy-Item skills/create-business/create-business.md workflows/
   ```

3. **Copy pre-flight check:**
   ```powershell
   Copy-Item skills/create-business/preflight-create-business.ps1 commands/
   ```

## Required Credentials

Create these files in `credentials/`:

**credentials/credentials-vercel.txt:**
```
Vercel
Token: vcp_YOUR_TOKEN_HERE
```

**credentials/stripe-keys.txt:**
```
Publishable Key: pk_live_YOUR_KEY
Secret Key: sk_live_YOUR_KEY
```

**ElevenLabs API Key:**
- Stored in `skills/vsl/VSL-COMMAND.md` OR
- `credentials/elevenlabs-api.txt`

## Dependencies

Install these on your system:

**Node.js:**
```powershell
winget install OpenJS.NodeJS
```

**ffmpeg:**
```powershell
winget install Gyan.FFmpeg
```

**Python:**
```powershell
winget install Python.Python.3.11
```

**Vercel CLI:**
```powershell
npm install -g vercel
```

## Verify Installation

Run the pre-flight check:
```powershell
powershell -File commands/preflight-create-business.ps1
```

Should see: `✅ Ready to build!`

## Usage

In your chat with the AI:
```
/create business
```

The AI will:
1. Generate 10 product opportunities
2. Stop and wait for "continue"
3. Proceed through 7 stages
4. Deploy everything live

## What Gets Created

- Sales page (deployed to Vercel)
- VSL video
- Stripe product + checkout
- Traffic assets (ads, emails, posts)
- Business Board tracking

## Support

Issues? Check:
- Pre-flight passes all checks
- Credentials files formatted correctly
- All dependencies installed

---

**Version:** 1.0 (2026-03-21)
