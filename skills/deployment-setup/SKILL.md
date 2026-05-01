---
name: deployment-setup
description: "Guided setup to connect GitHub and Vercel so future deployment skills can use authenticated, verified credentials and the correct Vercel scope."
version: 1.0.0
license: MIT
metadata: {"openclaw":{"emoji":"🚀"}}
---

# Deployment Setup

**Trigger:** `/deployment setup` or "help me connect GitHub and Vercel"

**Purpose:** Connect GitHub and Vercel so OpenClaw is ready for future deployment skills.

**Job:** Setup only. Do NOT build pages, create businesses, or deploy live projects unless the user explicitly asks for a simple test.

---

## STEP 1 — Check Secure Stored Credentials First

Before asking for anything, check whether GitHub and Vercel credentials are already available in OpenClaw's secure credential storage system.

If both are already stored, skip to STEP 3 and validate them.
Only ask for missing items.
Do not assume old credentials are still valid without testing them.

---

## STEP 2 — Ask for Missing Credentials

If credentials are missing, say exactly:

> Let's get your deployment setup ready.
>
> I need 3 things:
> 1. Your GitHub username
> 2. A GitHub Personal Access Token (classic, with `repo` enabled)
> 3. A Vercel token
>
> GitHub stores your code. Vercel hosts your live site.

Only ask for items that are missing.
Never re-ask for something already provided.

**GitHub token instructions (if needed):**
1. Go to GitHub Settings
2. Open Developer settings
3. Open Personal access tokens
4. Click **Tokens (classic)**
5. Click **Generate new token (classic)**
6. Name it `OpenClaw`
7. Enable `repo`
8. Generate the token and copy the full value

**Preferred GitHub token:** Classic token with `repo` enabled.

If GitHub authentication works but repository actions fail, explain:

> This may be a GitHub permission issue. If you used a fine-grained token, make sure repository access is set to **All repositories** and **Contents** is set to **Read and Write**, or create a classic token with `repo` enabled.

**Vercel token instructions (if needed):**
1. Log into Vercel
2. Go to Settings
3. Open Tokens
4. Create a new token
5. Name it `OpenClaw`
6. Copy the full token

---

## STEP 3 — Validate Inputs

Check:
- GitHub username is not blank
- GitHub token is not blank
- Vercel token is not blank

Do not reject a token only because it does not match a specific prefix.
The real test is whether the token works through the API.

If a token looks obviously cut off or incomplete, say:

> That token looks incomplete. Please copy the full token and send it again.

**SECURITY RULE:**
- Never display full tokens in chat
- Never repeat full tokens back to the user
- Always mask tokens when referencing them
- GitHub example: `ghp_****...****`
- Vercel example: `vcp_****...****`

---

## STEP 4 — Test GitHub Connection

Use the GitHub API to authenticate with the provided token.

Confirm:
- authentication works
- the account is reachable
- the authenticated username matches the username provided by the user

**If auth fails:**

> I could not connect to GitHub with that token. Please make sure you copied it correctly and that it is a classic token with `repo` enabled.

**If username mismatch:**

> The GitHub token worked, but it appears to be connected to a different GitHub account than the username you entered. Please double-check which GitHub account you want to use.

Do not continue until resolved.

---

## STEP 5 — Confirm GitHub Repository Access

After GitHub authentication succeeds, verify the token can be used for future repository actions such as:
- creating repositories
- pushing files
- updating code

Prefer a real repository-permission check over a token-format guess.

If repository access is missing, say:

> Your GitHub token connected, but it does not appear to include repository access. Please create a classic GitHub token and enable `repo`.

If needed, add:

> If you used a fine-grained token, make sure repository access is set to **All repositories** and **Contents** is set to **Read and Write**.

---

## STEP 6 — Test Vercel Connection

Use the Vercel API to authenticate with the provided token.

Confirm:
- authentication works
- the Vercel account is reachable

**If auth fails:**

> I could not connect to Vercel with that token. Please make sure you copied it correctly and try again.

---

## STEP 7 — Detect Vercel Scope

Use the Vercel API to detect available scopes or workspaces.

**Rules:**
- 0 teams or workspaces beyond the personal account → use the personal scope automatically
- 1 team or workspace in addition to the personal account → default to that workspace, but confirm before saving it as the future deployment scope
- 2 or more possible scopes → show the list and ask which one should be used for future deployments

**If multiple scopes:**

> I found multiple Vercel workspaces. Which one would you like to use for future deployments?

Then list them clearly.

Explain simply:

> Vercel scope means which account or workspace will own deployed projects.

---

## STEP 8 — Confirm Vercel Project Readiness

After authentication and scope selection, verify that the token can be used for future project actions in the chosen scope.

This should confirm the token is suitable for tasks such as:
- listing projects
- creating projects
- supporting deployment workflows

If access is limited, say:

> Your Vercel token connected, but it does not appear to have enough access for future deployment actions. Please create a new Vercel token and try again.

---

## STEP 9 — Save Credentials Securely

If both systems are verified, store the following using OpenClaw's secure credential storage system, if available:
- GitHub username
- GitHub token
- Vercel token
- selected Vercel scope

Do NOT store credentials in:
- visible chat output
- general log files
- plain text notes
- screenshots
- local files unless the environment explicitly supports secure local secret storage

---

## STEP 10 — Final Success Message

> Deployment setup is complete.
>
> GitHub is connected for code and repositories.
> Vercel is connected for hosting and deployment.
>
> You are now ready for future OpenClaw deployment skills.

If a Vercel scope was selected, also say:

> Future deployments will use this Vercel scope: **[scope name]**

---

## STEP 11 — If One Side Fails

Clearly explain what worked and what still needs attention.

Example:

> GitHub is connected successfully.
> Vercel still needs to be fixed before deployment setup is complete.

---

## SUCCESS STATE

Skill is complete when ALL of these are true:
- [ ] GitHub username collected
- [ ] GitHub token collected
- [ ] Vercel token collected
- [ ] GitHub authentication succeeds
- [ ] GitHub repository access is confirmed
- [ ] Vercel authentication succeeds
- [ ] Vercel scope selected or auto-selected
- [ ] Vercel project readiness confirmed
- [ ] Credentials saved securely
- [ ] User told deployment setup is ready
