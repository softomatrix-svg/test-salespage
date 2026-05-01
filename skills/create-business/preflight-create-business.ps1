# PRE-FLIGHT CHECK: /CREATE BUSINESS
# Verifies all dependencies before executing the 7-stage workflow
# Auto-fixes issues when possible

Write-Host "`n🔍 Checking system..." -ForegroundColor Cyan

$allGood = $true
$autoFixed = @()

# STAGE 3: SALES PAGE
Write-Host "[STAGE 3 - SALES PAGE]" -ForegroundColor Yellow

# Check Vercel token
if (Test-Path "credentials/credentials-vercel.txt") {
    $vercelToken = Get-Content "credentials/credentials-vercel.txt" -Raw
    if ($vercelToken -match "vcp_[a-zA-Z0-9]+") {
        Write-Host "  ✅ Vercel token found" -ForegroundColor Green
    } else {
        Write-Host "  ❌ Vercel token invalid" -ForegroundColor Red
        $allGood = $false
    }
} else {
    Write-Host "  ❌ Vercel token missing" -ForegroundColor Red
    $allGood = $false
}

# Check copywriting skills
if (Test-Path "skills/copywriting/OPENCLAW-SALES-PAGE-DIRECTIVE.md") {
    Write-Host "  ✅ Sales page copywriting skill" -ForegroundColor Green
} else {
    Write-Host "  ❌ Sales page directive missing" -ForegroundColor Red
    $allGood = $false
}

if (Test-Path "skills/copywriting/OPENCLAW-HERO-3PART-HEADLINE-DOCTRINE.md") {
    Write-Host "  ✅ Hero headline skill" -ForegroundColor Green
} else {
    Write-Host "  ❌ Hero directive missing" -ForegroundColor Red
    $allGood = $false
}

if (Test-Path "skills/copywriting/STAGE-3-DESIGN-STYLE.md") {
    Write-Host "  ✅ Landing page design skill" -ForegroundColor Green
} else {
    Write-Host "  ❌ Design style directive missing" -ForegroundColor Red
    $allGood = $false
}

# Check Unsplash API (for images)
if (Test-Path "credentials/unsplash-api.txt") {
    Write-Host "  ✅ Unsplash API key" -ForegroundColor Green
} else {
    Write-Host "  ⚠️  Unsplash API missing (can use placeholders)" -ForegroundColor Yellow
}

# STAGE 4: VSL + STRIPE
Write-Host "`n[STAGE 4 - VSL + STRIPE]" -ForegroundColor Yellow

# Check ElevenLabs API
$elevenLabsFound = $false
if (Test-Path "credentials/elevenlabs-api.txt") {
    Write-Host "  ✅ ElevenLabs API key" -ForegroundColor Green
    $elevenLabsFound = $true
} elseif (Test-Path "skills/vsl/VSL-COMMAND.md") {
    $vslContent = Get-Content "skills/vsl/VSL-COMMAND.md" -Raw
    if ($vslContent -match "sk_[a-f0-9]{32}") {
        Write-Host "  ✅ ElevenLabs API key (in VSL skill)" -ForegroundColor Green
        $elevenLabsFound = $true
    }
}
if (-not $elevenLabsFound) {
    Write-Host "  ❌ ElevenLabs API missing" -ForegroundColor Red
    $allGood = $false
}

# Check VSL skill
if (Test-Path "skills/vsl/VSL-COMMAND.md") {
    Write-Host "  ✅ VSL creation skill" -ForegroundColor Green
} else {
    Write-Host "  ❌ VSL skill missing" -ForegroundColor Red
    $allGood = $false
}

# Check ffmpeg (for VSL video creation)
$ffmpeg = Get-Command ffmpeg -ErrorAction SilentlyContinue
if ($ffmpeg) {
    Write-Host "  ✅ ffmpeg installed" -ForegroundColor Green
} else {
    Write-Host "  ❌ ffmpeg missing (required for VSL)" -ForegroundColor Red
    $allGood = $false
}

# Check Python (for VSL rendering)
$python = Get-Command python -ErrorAction SilentlyContinue
if ($python) {
    Write-Host "  ✅ Python installed" -ForegroundColor Green
} else {
    Write-Host "  ❌ Python missing (required for VSL)" -ForegroundColor Red
    $allGood = $false
}

# Check Stripe keys
if (Test-Path "credentials/stripe-keys.txt") {
    $stripeContent = Get-Content "credentials/stripe-keys.txt" -Raw
    if ($stripeContent -match "sk_live_" -and $stripeContent -match "pk_live_") {
        Write-Host "  ✅ Stripe API keys" -ForegroundColor Green
    } else {
        Write-Host "  ❌ Stripe keys incomplete" -ForegroundColor Red
        $allGood = $false
    }
} else {
    Write-Host "  ❌ Stripe keys missing" -ForegroundColor Red
    $allGood = $false
}

# STAGE 5: TRAFFIC ASSETS
Write-Host "`n[STAGE 5 - TRAFFIC ASSETS]" -ForegroundColor Yellow

# Check email formula skill
if (Test-Path "skills/email-formula/EMAIL-FORMULA.md") {
    Write-Host "  ✅ Email formula skill" -ForegroundColor Green
} else {
    Write-Host "  ⚠️  Email formula skill missing (can use copywriting directive)" -ForegroundColor Yellow
}

# STAGE 6: BUSINESS BOARD
Write-Host "`n[STAGE 6 - BUSINESS BOARD]" -ForegroundColor Yellow

if (Test-Path "nicelycontrol-boards") {
    Write-Host "  ✅ Business Board folder" -ForegroundColor Green
} else {
    Write-Host "  ❌ Business Board missing" -ForegroundColor Red
    $allGood = $false
}

# GENERAL DEPENDENCIES
Write-Host "`n[GENERAL DEPENDENCIES]" -ForegroundColor Yellow

# Check Node.js
$node = Get-Command node -ErrorAction SilentlyContinue
if ($node) {
    Write-Host "  ✅ Node.js installed" -ForegroundColor Green
} else {
    Write-Host "  ❌ Node.js missing" -ForegroundColor Red
    $allGood = $false
}

# Check workflow file
if (Test-Path "workflows/create-business.md") {
    Write-Host "  ✅ /create business workflow" -ForegroundColor Green
} else {
    Write-Host "  ❌ Workflow file missing" -ForegroundColor Red
    $allGood = $false
}

# FINAL RESULT
Write-Host ""
if ($autoFixed.Count -gt 0) {
    Write-Host "🔧 Auto-fixed: $($autoFixed -join ', ')" -ForegroundColor Yellow
}
if ($allGood) {
    Write-Host "✅ Ready to build!`n" -ForegroundColor Green
    exit 0
} else {
    Write-Host "❌ Missing critical dependencies - cannot proceed`n" -ForegroundColor Red
    exit 1
}
