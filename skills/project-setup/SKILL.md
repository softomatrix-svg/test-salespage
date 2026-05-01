---
name: project-setup
description: Prepare a GitHub repository and Vercel project for future deployment workflows. Use when setting up project infrastructure only: choosing a project name, deciding GitHub owner/visibility, checking whether a repo or Vercel project already exists, creating missing resources, linking GitHub to Vercel, and saving non-secret project metadata. Do not use for content generation, code authoring, app deployment, or storing credentials.
---

# Project Setup

Set up destination infrastructure for later build/deploy skills.

## Scope

Do:
- choose and normalize a project name
- verify GitHub access
- choose personal account vs organization ownership
- check whether the GitHub repo already exists
- create the repo if needed
- verify Vercel access and selected scope
- check whether the Vercel project already exists
- create the Vercel project if needed
- link the GitHub repo to the Vercel project
- save non-secret metadata for future skills

Do not:
- generate project content
- push app files
- deploy production content
- store or expose tokens
- assume a fixed Vercel team/scope

## Required Inputs

Before starting, confirm these are available from the environment or prior setup flow:
- GitHub authentication
- Vercel authentication
- preferred Vercel scope (team or personal)

If GitHub auth is missing:
> GitHub is not connected yet. Please run deployment setup first.

If Vercel auth is missing:
> Vercel is not connected yet. Please run deployment setup first.

If Vercel scope is unknown:
> I need to know which Vercel scope to use before setting up the project.

## Workflow

### 1) Get the project name

Ask:
> What would you like to name this project?
>
> Keep it simple. Lowercase with dashes is best, for example `my-project`.
> I’ll use this for both GitHub and Vercel unless you want different names.

Normalize names conservatively:
- lowercase
- trim whitespace
- replace spaces/underscores with dashes
- remove leading/trailing punctuation
- keep only letters, numbers, and dashes when possible

If the cleaned name differs, suggest it and confirm before continuing.

### 2) Verify GitHub access

Confirm the authenticated GitHub user can be queried successfully.

If verification fails:
> I could not connect to GitHub with the saved setup. Please run deployment setup again.

### 3) Choose repository owner

Ask:
> Should this repository live under your personal GitHub account or a GitHub organization?

Defaults:
- default to personal
- if organization is chosen, ask for the org name and verify access before continuing

### 4) Decide repository visibility

Ask:
> Should the GitHub repository be public or private?

Default to public unless the user asks for private.

### 5) Check the Vercel Hobby/private-org risk

Stop and explain clearly if all are true:
- Vercel scope is personal/Hobby
- GitHub owner is an organization
- GitHub repo will be private

Use:
> This combination often fails on Vercel Hobby: a private GitHub organization repository linked to a personal/Hobby Vercel scope. Use a personal repo, make it public, switch to an appropriate Vercel team, or upgrade before continuing.

### 6) Check whether the GitHub repo exists

Look up the target repo under the selected owner.

If it exists, ask:
> I found an existing GitHub repository with that name. Do you want to use it, or choose a different name?

If reusing, verify it is accessible for later pushes.

If access cannot be verified:
> I found the repository, but I could not verify access for future updates.

### 7) Create the GitHub repo if needed

If the repo does not exist, create it with:
- selected owner
- selected visibility
- initial README or equivalent initialization so the repo is immediately linkable

If creation fails:
> I could not create the GitHub repository. Please check your GitHub permissions and try again.

### 8) Verify Vercel access and scope

Confirm Vercel authentication works.

Resolve the target scope dynamically:
- use the previously saved user preference when available
- otherwise list available scopes and ask the user to choose
- do not hardcode a team id, slug, or name in this skill

If verification fails:
> I could not connect to Vercel. Please run deployment setup again.

### 9) Check whether the Vercel project exists

Look for a project matching the chosen project name in the selected scope.

If it exists, ask:
> I found an existing Vercel project with that name. Do you want to use it, or choose a different name?

### 10) Create the Vercel project if needed

If the Vercel project does not exist, create it in the selected scope.

Guidance:
- set the framework only if confidently known
- otherwise leave framework unspecified rather than guessing wrong
- do not trigger a deployment here

If creation fails:
> I could not create the Vercel project. Please check your Vercel access and selected scope.

### 11) Link GitHub to Vercel

Link the GitHub repo to the Vercel project.

If linking fails:
> The GitHub repository and Vercel project both exist, but I could not link them together. This is usually caused by permissions, the wrong Vercel scope, missing Git provider access in Vercel, or an unsupported private organization repository on Hobby.

Common causes:
- Vercel account lacks GitHub integration access
- wrong Vercel scope selected
- repo ownership mismatch
- unsupported Hobby/private-org combination

### 12) Save project metadata

Save non-secret metadata to:
`projects/[project-name]/project-info.json`

Example shape:

```json
{
  "projectName": "my-project",
  "cleanedName": "my-project",
  "github": {
    "owner": "bill",
    "repo": "my-project",
    "fullName": "bill/my-project",
    "visibility": "public",
    "isOrganization": false,
    "isNew": true
  },
  "vercel": {
    "projectId": "prj_123",
    "projectName": "my-project",
    "scope": "personal",
    "scopeId": "team_or_user_id",
    "isNew": true
  },
  "linkedAt": "YYYY-MM-DD",
  "status": "ready"
}
```

Rules:
- never store tokens, cookies, or raw credentials
- store only the metadata needed for future project-aware skills
- update the file if the repo/project is reused instead of newly created

### 13) Confirm success

Use:
> ✅ Project setup is complete.
>
> **GitHub:** `[owner/repo-name]` — ready  
> **Vercel:** `[project-name]` — ready  
> **Linked:** GitHub → Vercel ✓  
> **Scope:** [scope name]
>
> Future build skills can now use this GitHub repository and Vercel project.

## Failure Messages

- GitHub auth failure:
  - `I could not connect to GitHub. Please run deployment setup again.`
- GitHub repo creation failure:
  - `I could not create the GitHub repository. Please check your GitHub permissions and try again.`
- Repo exists but access unclear:
  - `I found the repository, but I could not verify access for future updates.`
- Vercel auth failure:
  - `I could not connect to Vercel. Please run deployment setup again.`
- Vercel project creation failure:
  - `I could not create the Vercel project. Please check your Vercel access and selected scope.`
- Linking failure:
  - `The repo and project exist, but linking them failed. This may be caused by permissions, wrong scope, missing Git provider access in Vercel, or an unsupported private organization repository on Hobby.`
- Hobby/private-org risk:
  - `This setup is likely to fail on Vercel Hobby because private organization-owned Git repositories are not supported for this deployment path.`

## Rules

- setup only; no content generation or deployment
- never expose or persist secrets
- default to personal GitHub ownership unless the user chooses otherwise
- default to public visibility unless the user chooses private
- dynamically resolve Vercel scope; never rely on stale hardcoded scope data
- always ask before reusing an existing repo or project
- stop and explain clearly when any prerequisite or step fails

## Success Checklist

- [ ] project name defined and cleaned
- [ ] GitHub auth verified
- [ ] repository owner chosen
- [ ] visibility chosen
- [ ] Hobby/private-org risk checked
- [ ] GitHub repository exists and is accessible
- [ ] Vercel auth verified
- [ ] Vercel scope confirmed
- [ ] Vercel project exists and is accessible
- [ ] repo linked to Vercel project
- [ ] project metadata saved
- [ ] user told setup is complete
