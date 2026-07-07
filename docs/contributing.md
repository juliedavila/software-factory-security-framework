# Contributing to SF²

Thank you for your interest in contributing to the Software Factory Security Framework (SF²)! This framework is designed as a **public resource** for security leaders and practitioners.

## Quick Start

The easiest way to contribute is to:

1. **Click "Edit this page"** on any documentation page
2. Make your changes in the GitHub web editor
3. Submit a pull request with a clear description

## Types of Contributions

We welcome several types of contributions:

### ✏️ Content Improvements

- Clarifying existing concepts
- Adding examples or use cases
- Correcting errors or outdated information
- Improving readability and structure

### 🔗 Framework Relationships

- Documenting how SF² relates to other security frameworks
- Adding implementation mappings
- Sharing integration experiences

### 💡 Use Cases & Stories

- Real-world application examples
- Success stories (anonymized if needed)
- Lessons learned from implementation

### 🐛 Issues & Feedback

- Reporting unclear sections
- Suggesting new topics
- Identifying gaps in coverage

## Guidelines

### Content Standards

!!! warning "Keep Content Universal"
    Contributions should be broadly applicable to all organizations. Do not include:

    - Organization-specific internal details or processes
    - Proprietary information or trade secrets
    - Customer/partner sensitive data
    - Confidential metrics or implementation details

### Writing Style

- **Executive-friendly**: Write for security leaders, not practitioners alone
- **Actionable**: Provide clear guidance, not theory
- **Examples-driven**: Illustrate concepts with concrete examples
- **Scale-agnostic**: Ensure content applies across organization sizes

### Tone & Voice

The framework uses:

- **Direct, pragmatic language** - Avoid jargon where possible
- **Strategic framing** - Focus on business outcomes and tradeoffs
- **Authentic voice** - Professional but not corporate-speak
- **Empathy** - Acknowledge the challenges security leaders face

## How to Contribute

### Option 1: Quick Edits (Recommended for Minor Changes)

1. Navigate to the page you want to edit
2. Click **"Edit this page"** button (pencil icon)
3. Make your changes in the web editor
4. Provide a clear commit message
5. Submit the pull request

### Option 2: Full Repository Workflow (For Larger Changes)

```bash
# Clone the repository
git clone https://github.com/juliedavila/software-factory-security-framework.git
cd software-factory-security-framework

# Create a feature branch
git checkout -b feature/your-contribution

# Install dependencies
pip install -r requirements.txt

# Make your changes to docs/*.md files

# Preview locally
mkdocs serve
# Visit http://127.0.0.1:8000

# Commit your changes
git add docs/
git commit -m "feat: add <description of your changes>"

# Push and create pull request
git push origin feature/your-contribution
```

### Option 3: Issues & Discussions

Can't contribute directly but have feedback?

1. Open an [Issue](https://github.com/juliedavila/software-factory-security-framework/issues)
2. Use issue templates for:
   - Content suggestions
   - Error reports
   - New topic requests

## Pull Request Guidelines

### PR Title Format

Use conventional commit format:

- `feat: add new section on ...`
- `fix: correct typo in ...`
- `docs: improve clarity in ...`
- `refactor: reorganize ...`

### PR Description

Include:

1. **What**: Brief description of the change
2. **Why**: Motivation or problem being solved
3. **Impact**: Who benefits from this change

### Review Process

1. **Automatic checks** run on every PR (validation, linting, build verification)
2. **Content review** by framework maintainers
3. **Feedback & iteration** - we'll work with you to refine contributions
4. **Merge** - approved PRs are merged to master and deployed automatically

### Automation: We Handle the Details! 🎉

**You don't need to worry about consistency!** Our CI/CD pipeline automatically:

- **Validates** version consistency across all files
- **Checks** documentation structure and file counts
- **Verifies** critical cross-references (Supply Chain #1, adversary evolution)
- **Tests** terminology consistency
- **Confirms** AI optimization files are valid
- **Builds** the documentation to catch errors

**What this means for you:**

- Focus on writing great content
- Don't worry about updating robots.txt, framework.json, or other meta files
- If there's an issue, the pipeline will tell you exactly what needs fixing
- Clear, helpful error messages guide you to the solution

**Learn more**: See [scripts/README.md](https://github.com/juliedavila/software-factory-security-framework/blob/master/scripts/README.md) for automation details

## Content Organization

### Directory Structure

```
docs/
├── index.md                    # Landing page
├── executive-summary.md        # High-level overview
├── 01-foundation/             # Core concepts
├── 02-stewardship/            # 5 universal security conditions
├── 03-positioning/            # Strategic positioning model
├── 04-investment/             # Investment portfolio framework
├── 05-context/                # Contextual modifiers
├── 06-implementation/         # Quadrant-specific guides
├── 07-relationships/          # Framework mappings
├── 08-use-cases/              # Application examples
├── 09-ai-integration/         # AI tool integration guides
├── 10-coadaptive/             # Coadaptive Security Layer (capstone)
└── appendix/                  # Glossary, references
```

### File Naming

- Use lowercase with hyphens: `file-name.md`
- Be descriptive: `supply-chain-complexity.md` not `sc.md`
- Follow section numbering in directory names

### Markdown Standards

We use Material for MkDocs markdown extensions:

```markdown
# Main heading

## Section heading

### Subsection heading

!!! note "Title"
    Callout content

!!! warning "Important"
    Warning content

!!! example "Use Case"
    Example content

| Column 1 | Column 2 |
|----------|----------|
| Data     | Data     |

[Link text](relative/path.md)

[:octicons-arrow-right-24: Button text](link.md){ .md-button }
```

## Recognition

Contributors are recognized in several ways:

- Listed in commit history
- Mentioned in release notes for significant contributions
- Optional attribution in specific sections (if desired)

## Questions?

- **Issues**: [Open an issue](https://github.com/juliedavila/software-factory-security-framework/issues)
- **Email**: Available in GitHub profile
- **General questions**: Use issue discussions

## Code of Conduct

### Our Standards

- **Respectful**: Value diverse perspectives and experiences
- **Collaborative**: Work together toward better security practices
- **Constructive**: Provide helpful, actionable feedback
- **Inclusive**: Welcome contributors of all backgrounds

### Unacceptable Behavior

- Harassment or discrimination
- Trolling or inflammatory comments
- Personal attacks
- Publishing others' private information

## License

By contributing to SF², you agree that your contributions will be licensed under the **Creative Commons Attribution 4.0 International (CC BY 4.0)** license.

See [LICENSE](https://github.com/juliedavila/software-factory-security-framework/blob/master/LICENSE) for details.

---

## Thank You!

Small fixes matter as much as big ones. Thank you for the time and effort you put into making SF² better for everyone.

**Ready to contribute?** Find a page that could be improved and click **"Edit this page"**!

[:octicons-arrow-right-24: View all documentation](index.md){ .md-button .md-button--primary }
[:octicons-arrow-right-24: Open an issue](https://github.com/juliedavila/software-factory-security-framework/issues){ .md-button }
