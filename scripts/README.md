# SF² Framework Automation Scripts

This directory contains automation scripts to help maintain framework consistency and reduce contributor burden.

## For Contributors: You Don't Need to Worry About This! 🎉

**Good news**: These scripts run automatically in the CI/CD pipeline. You can focus on writing great content—the automation handles consistency checks.

### What Happens Automatically

When you open a merge request, the CI/CD pipeline automatically:
1. ✅ **Validates** framework consistency (versions, structure, terminology)
2. ✅ **Builds** the documentation site to catch errors
3. ✅ **Checks** for common issues (broken links, missing references)
4. ✅ **Suggests** fixes if anything needs attention

You'll see the results in your merge request. If there are issues, the pipeline will tell you exactly what needs fixing.

## Available Scripts

### `validate-consistency.sh`
**Purpose**: Checks framework consistency across all files

**Runs automatically** in CI/CD on every merge request

**What it checks**:
- ✅ Version consistency across docs/index.md, docs/appendix/references.md, docs/framework.json
- ✅ Documentation structure (expected file counts per section)
- ✅ Critical cross-references (Supply Chain #1, 2017 adversary evolution)
- ✅ Terminology consistency (operational readiness vs security maturity)
- ✅ AI optimization files (framework.json validity, robots.txt existence)
- ✅ MkDocs configuration validity

**Manual use** (optional):
```bash
./scripts/validate-consistency.sh
```

**Exit codes**:
- `0`: All checks passed (may have warnings)
- `1`: Validation failed (must fix before merge)

### `update-version.sh`
**Purpose**: Updates version consistently across all files

**When to use**: When bumping the framework version (minor or major releases)

**Usage**:
```bash
./scripts/update-version.sh 0.4.0
```

**What it updates**:
- `docs/appendix/references.md` - "About This Framework" section
- `docs/index.md` - YAML frontmatter and About section
- `docs/framework.json` - Version field

**Workflow**:
```bash
# 1. Update version
./scripts/update-version.sh 0.4.0

# 2. Verify changes
git diff

# 3. Run validation to confirm
./scripts/validate-consistency.sh

# 4. Commit
git commit -am "chore: bump version to 0.4.0"

# 5. Tag and push
git tag v0.4.0
git push origin master
git push origin v0.4.0
```

## For Maintainers: How the Automation Works

### CI/CD Pipeline Flow

```
┌─────────────────────────────────────────────┐
│  Merge Request Opened / Updated             │
└────────────────┬────────────────────────────┘
                 │
                 ▼
┌─────────────────────────────────────────────┐
│  Stage: Test                                │
│  ┌───────────────────────────────────────┐  │
│  │ validate: Framework consistency       │  │
│  │  - Version matching                   │  │
│  │  - Structure validation               │  │
│  │  - Terminology checks                 │  │
│  │  - AI file validation                 │  │
│  └───────────────────────────────────────┘  │
│  ┌───────────────────────────────────────┐  │
│  │ test: Build documentation             │  │
│  │  - mkdocs build --strict              │  │
│  │  - Catch build errors                 │  │
│  └───────────────────────────────────────┘  │
│  ┌───────────────────────────────────────┐  │
│  │ lint: Markdown linting (optional)     │  │
│  │  - Style and formatting checks        │  │
│  └───────────────────────────────────────┘  │
└─────────────────┬───────────────────────────┘
                  │
                  ▼
┌─────────────────────────────────────────────┐
│  ✅ All Tests Pass → Ready to Merge         │
│  ❌ Tests Fail → Review and Fix Issues      │
└─────────────────────────────────────────────┘
```

### Validation Rules

#### Version Consistency (ERROR if mismatched)
All three locations must have matching version:
- `docs/appendix/references.md`
- `docs/index.md` (2 locations: frontmatter + About)
- `docs/framework.json`

#### Structure Validation (WARNING if unexpected)
Expected file counts:
- Stewardship: 6 files (overview + 5 areas)
- Implementation: 4 files (4 quadrants)
- Framework Relationships: 4 files (NIST SSDF, OWASP SAMM, BSIMM, OWASP ASVS)
- AI Integration: 4 files (overview + Claude + ChatGPT + Gemini)

#### Critical Cross-References (WARNING if insufficient)
- Supply Chain #1 priority: Minimum 5 references
- 2017 adversary evolution: Minimum 3 references

#### Terminology Checks (WARNING if found)
Avoid these terms:
- "security maturity" → use "operational readiness"
- "best practices" → use "position-appropriate practices"

#### AI Optimization Files (ERROR if missing/invalid)
Required files:
- `docs/ai-framework-summary.md` (must be substantial: 500+ lines)
- `docs/framework.json` (must be valid JSON)
- `docs/robots.txt` (must exist)

### Adding New Validation Rules

To add a new consistency check:

1. Edit `scripts/validate-consistency.sh`
2. Add your check in the appropriate section
3. Use `error()` for blocking issues or `warning()` for non-blocking
4. Test locally: `./scripts/validate-consistency.sh`
5. Commit and verify in CI/CD

Example:
```bash
# Check for something important
if [ some_condition ]; then
    error "Description of what's wrong"
else
    success "Check passed"
fi
```

### Extending Automation

**Want to auto-generate files?**

Consider:
- Will it always be correct? (false positives are frustrating)
- Can contributors override if needed?
- Does it reduce cognitive load or add complexity?

**Philosophy**: Validate and suggest > Auto-generate and possibly break

**Better approach**:
1. Detect inconsistency
2. Show clear error message
3. Suggest fix (maybe provide script to run)
4. Let contributor decide

### Updating Scripts

When updating automation scripts:

1. **Test thoroughly** - Run on actual content
2. **Document changes** - Update this README
3. **Consider contributors** - Will this confuse people?
4. **Provide helpful errors** - Clear messages about what's wrong and how to fix

## Common Questions

### Q: What if validation fails on my merge request?

**A**: Don't worry! The pipeline will show exactly what needs fixing:
- Read the error message carefully
- Fix the specific issue mentioned
- Push your fix and the pipeline will re-run
- If stuck, ask for help in the merge request comments

### Q: Do I need to run these scripts locally?

**A**: No! The CI/CD pipeline runs them automatically. But you can run them locally if you want to catch issues early:
```bash
./scripts/validate-consistency.sh
```

### Q: What if I'm only changing one markdown file?

**A**: The automation is smart enough to only check what matters. Most likely it'll just validate the build and you're good to go.

### Q: Can I skip validation for a special case?

**A**: If you have a legitimate reason, mention it in your merge request description. A maintainer can review and merge with warnings if appropriate.

### Q: I updated the version but forgot to run update-version.sh

**A**: The validation will catch this! It'll tell you there's a version mismatch. Just run:
```bash
./scripts/update-version.sh <new-version>
```

## Philosophy

**Automation should be helpful, not burdensome.**

Goals:
- ✅ Catch real issues before they reach production
- ✅ Provide clear, actionable error messages
- ✅ Let contributors focus on content quality
- ✅ Make maintenance easier for everyone

Anti-goals:
- ❌ Create false positives that waste time
- ❌ Block contributions for minor style issues
- ❌ Make contributing feel complicated
- ❌ Over-automate things that need human judgment

## Need Help?

- **For contributors**: See [CLAUDE.md](../CLAUDE.md) and [contributing.md](../contributing.md)
- **For script issues**: Open an issue with the `automation` label
- **For CI/CD problems**: Tag a maintainer in your merge request

---

**Remember**: The goal is to make contributing easier, not harder. If automation is getting in your way, let us know!
