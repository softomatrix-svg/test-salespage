# Skill Creator

**Version:** 2.0.0  
**Author:** OpenClaw Community  
**Source:** https://github.com/openclaw/skills/skill-creator

Create, edit, improve, or audit AgentSkills for OpenClaw/Codex.

## Installation

### Drop-in Installation

1. Download the skill folder (or extract from zip)
2. Drop into your OpenClaw skills directory:
   ```bash
   cp -r skill-creator /usr/local/lib/node_modules/openclaw/skills/
   ```
3. Verify installation:
   ```bash
   openclaw skills info skill-creator
   ```

No additional configuration required!

## Configuration

### Required Environment Variables

**None** - This is a meta-skill that doesn't require external API keys.

### Optional Dependencies

For helper scripts:
- Python 3.7+ (for init_skill.py, package_skill.py, quick_validate.py)
- PyYAML library (`pip install pyyaml`)

## Supported Commands

This skill responds to skill authoring requests:

### ✅ Supported Operations

- "Create a new skill called [name]"
- "Improve this skill"
- "Review/audit [skill]"
- "Clean up/tidy up this SKILL.md"
- "Package this skill for distribution"
- "Validate skill structure"

### ❌ Out of Scope

- Installing skills (use OpenClaw CLI)
- Managing skill repositories
- Skill discovery/search
- Runtime skill loading/unloading

### Refusal Behavior

If you request something outside skill authoring, you'll get:

```
⚠️ I only support skill creation and maintenance operations.
For [your request], please use OpenClaw CLI or documentation.
```

## Helper Scripts

### scripts/init_skill.py

Creates a new skill from template.

**Usage:**
```bash
python scripts/init_skill.py <skill-name> --path <path> [--resources scripts,references,assets] [--examples]
```

**Examples:**
```bash
# Basic skill
python scripts/init_skill.py my-skill --path ./skills

# With resources
python scripts/init_skill.py api-helper --path ./skills --resources scripts,references

# With examples
python scripts/init_skill.py custom-skill --path ./skills --resources scripts --examples
```

### scripts/package_skill.py

Packages a skill into a .skill zip file.

**Usage:**
```bash
python scripts/package_skill.py <skill-folder> [output-dir]
```

**Examples:**
```bash
python scripts/package_skill.py ./my-skill
python scripts/package_skill.py ./my-skill ./dist
```

### scripts/quick_validate.py

Validates skill structure.

**Usage:**
```bash
python scripts/quick_validate.py <skill-directory>
```

## Key Principles

### Concise is Key
- Challenge every piece of information: "Does this justify its token cost?"
- Prefer examples over explanations

### Progressive Disclosure
1. Metadata (always loaded)
2. SKILL.md body (when skill triggers)
3. Bundled resources (loaded as needed)

### Set Appropriate Freedom
- **High freedom:** Text instructions for flexible tasks
- **Medium freedom:** Pseudocode for preferred patterns
- **Low freedom:** Scripts for fragile operations

## Guardrails Checklist

When creating skills, ensure:

1. ✅ **Valid YAML frontmatter** with required fields:
   - `name`, `slug`, `author`, `source`, `description`, `version`
2. ✅ **Drop-in structure** (single folder matching slug)
3. ✅ **No hardcoded secrets** (use `{{ env.VAR }}` placeholders)
4. ✅ **Command scope documented** in README.md
5. ✅ **Graceful failure** for missing config
6. ✅ **Safety scan passed** (no eval, no unsafe exec)

## Security & Safety

### No Secrets in Repo

✅ This skill contains no API keys or secrets  
✅ No configuration required  
✅ Safe to share publicly  

### External Services

**None** - This skill operates locally only.

### Shell Commands Used

⚠️ **Helper scripts use Python file I/O only**

```python
# Safe operations:
- Path.write_text() - File writing
- Path.read_text() - File reading
- zipfile.ZipFile() - Zip packaging
- yaml.safe_load() - YAML parsing
```

**Safety measures:**
- ✅ No `eval()` or `exec()`
- ✅ No shell command execution
- ✅ Uses Path objects (prevents directory traversal)
- ✅ Validates all user input

### Safety Scan Results

✅ **No dangerous patterns detected:**
- ❌ No eval / Function / dynamic code execution
- ❌ No exec/spawn with user input
- ❌ No curl | bash patterns
- ❌ No large base64 blobs

## Usage Examples

### Creating a New Skill

**User:** "Create a new skill called twitter-analytics"

**AI will:**
1. Use `scripts/init_skill.py` to generate template
2. Follow skill-creator best practices
3. Set up proper YAML frontmatter
4. Organize scripts/references/assets

### Improving Existing Skill

**User:** "Review and improve the poststream-social skill"

**AI will:**
1. Check against skill-creator principles
2. Optimize for context efficiency
3. Apply progressive disclosure patterns
4. Validate with `quick_validate.py`

### Packaging for Distribution

**User:** "Package the my-skill for distribution"

**AI will:**
1. Validate skill structure
2. Run `package_skill.py`
3. Create .skill zip file
4. Confirm package ready

## File Structure

```
skill-creator/
├── SKILL.md                    # Main skill documentation (with guardrails)
├── README.md                   # This file (installation & usage)
├── license.txt                 # License information
└── scripts/
    ├── init_skill.py           # Create new skill from template
    ├── package_skill.py        # Package skill for distribution
    └── quick_validate.py       # Validate skill structure
```

## Troubleshooting

### "Module 'yaml' not found"

Install PyYAML:
```bash
pip install pyyaml
```

### "Permission denied" when running scripts

Make scripts executable:
```bash
chmod +x scripts/*.py
```

### Validation fails with "Invalid YAML"

Check that:
- YAML starts and ends with `---`
- All required fields present
- No syntax errors in YAML

## Support

- **Skill Creator Docs:** See SKILL.md for full guidance
- **OpenClaw Docs:** https://docs.openclaw.ai
- **AgentSkills Spec:** https://github.com/openclaw/skills
- **Issues:** https://github.com/openclaw/skills/issues

## License

See license.txt for details.

## Version History

### 2.0.0 (2026-03-26)
- ✅ Guardrails compliant
- ✅ Added required YAML fields (slug, author, source, version)
- ✅ Created comprehensive README.md
- ✅ Documented command scope
- ✅ Security audit of helper scripts
- ✅ Drop-in installation ready

### 1.0.0 (Initial)
- Basic skill creation guidance
- Helper scripts for init/package/validate
