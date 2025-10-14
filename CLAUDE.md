# SF² Framework Development Guide for Claude Code

## Repository Context

This is the **Software Factory Security Framework (SF²)** - an open-source strategic framework for scaling security capabilities while improving business outcomes.

**Purpose**: Help security leaders make strategic decisions about positioning, investment, and transformation
**License**: CC BY 4.0 (open for contributions)
**Audience**: Security leaders, CISOs, VPs of Security at software organizations
**Website**: https://sf2framework.com

## Framework Core Principles

When working on this framework, these principles are foundational:

### 1. Strategic Over Tactical
- Framework guides **positioning and investment strategy**, not specific security controls
- Focus on **sustainable scaling** at organizational level
- Help leaders find appropriate security for their context

### 2. Honest and Pragmatic
- **Call out hard truths**: Scaling crisis is inevitable, two-axis transformation is high-risk
- **Realistic timelines**: Challenger transformations take 3-5 years, not 12 months
- **Acknowledge tradeoffs**: No perfect solutions, only context-appropriate choices
- **Supply Chain #1 since 2017**: Adversary evolution to automated discovery is non-negotiable

### 3. Actionable and Specific
- Provide **concrete checklists** (Week 1, Month 1, Quarter 1)
- Include **success indicators** with measurable targets
- Offer **decision frameworks** (should we build or buy? which quadrant? what timeline?)
- Use **real examples** grounded in actual organizational situations

### 4. Framework Integration, Not Competition
- SF² is **strategic overlay** for NIST SSDF, OWASP SAMM, BSIMM, OWASP ASVS
- Other frameworks provide **practices and requirements**
- SF² provides **sequencing, prioritization, and sustainability strategy**
- Integration, not replacement

### 5. Accessible to Security Leaders
- **Executive-appropriate** language (board-ready)
- **Minimal jargon**; explain when necessary
- **Visual thinking** (quadrants, matrices, decision trees)
- **Storytelling with data** (metrics that inform decisions)

## Content Voice and Tone

### Primary Voice: Strategic Advisor

The framework should read like advice from an experienced security leader who:
- Understands organizational constraints
- Has lived through scaling challenges
- Balances ambition with realism
- Speaks directly without corporate-speak
- Backs recommendations with reasoning

**Good example**:
> "Visionaries should automate from the start. Your high operational readiness makes this achievable—don't build manual processes you'll need to replace in 18 months."

**Avoid**:
> "Organizations in the Visionary quadrant may wish to consider implementing automation where feasible and appropriate to their context."

### Tone Guidelines

**Be Direct**:
- ✅ "This transformation will fail without executive support"
- ❌ "Executive support is recommended for success"

**Be Specific**:
- ✅ "Reduce manual reviews from 40% to 10% of team time"
- ❌ "Improve efficiency in security review processes"

**Be Contextual**:
- ✅ "Challengers need 3-5 years. Fast-tracking creates technical debt."
- ❌ "Transformation timelines vary by organization"

**Be Honest About Tradeoffs**:
- ✅ "Faster timeline but higher failure risk"
- ❌ "Multiple approaches are available"

## Documentation Structure

```
docs/
├── 01-foundation/           # Core definitions (Software Factory concept)
├── 02-stewardship/          # 5 universal areas (Supply Chain #1)
├── 03-positioning/          # Two-axis model, four quadrants
├── 04-investment/           # BAU vs Scaling, portfolio framework
├── 05-context/              # 6 contextual modifiers
├── 06-implementation/       # Quadrant-specific guides
├── 07-relationships/        # Integration with other frameworks
├── 08-use-cases/            # Real-world scenarios
├── 09-ai-integration/       # AI tool integration guides
└── appendix/                # Glossary, references
```

## Content Patterns to Follow

### 1. Assessment Questions

Help readers determine their situation:

```markdown
| Question | Low | Moderate | High |
|----------|-----|----------|------|
| Specific criterion | Description | Description | Description |
```

### 2. Implementation Checklists

Provide actionable steps:

```markdown
### Week 1: Assessment
- [ ] Specific, measurable action
- [ ] Another specific action

### Month 1: Foundation
- [ ] Achievable milestone
- [ ] Measurable outcome
```

### 3. Decision Frameworks

Clear criteria for choices:

```markdown
## Should You [Decision]?

**Yes, if:**
- Criterion 1 with context
- Criterion 2 with context

**No, if:**
- Different criterion
- Risk factor to consider
```

### 4. Success Indicators

Measurable outcomes with timelines:

```markdown
### 6 Months
- [ ] **Specific metric reduced/improved X%** from baseline
- [ ] **Qualitative outcome** (verifiable)

### 12 Months
- [ ] **Next milestone with number**
```

### 5. Common Pitfalls

Problems with solutions:

```markdown
### [Pitfall Name]
**Risk**: What can go wrong

**Symptoms**:
- Observable warning sign
- Another indicator

**Solution**: Specific corrective action
```

## Terminology Standards

### Required Consistency

Use these terms precisely:

- **Software Factory** (capitalized) - organizations deploying code-based systems
- **Supply Chain Stewardship is #1 priority** - always with "since 2017 adversary evolution"
- **BAU (Business-as-Usual)** - activities to constrain
- **Scaling Investments** - capabilities that create compound effects
- **Operational Complexity** - "what you manage" axis (Simple → Complex)
- **Operational Readiness** - "how you operate" axis (Lower → Higher)
- **Quadrant names**: Visionaries, Leaders, Niche Players, Challengers (always capitalized)

### Terms to Avoid

Don't use:
- "Security maturity" → use "operational readiness"
- "Best practices" → use "position-appropriate practices"
- "Security controls" → use "security capabilities"
- "Compliance requirements" → use "regulatory constraints" (when contextual modifier)

### Check the Glossary

Before introducing new terms, check `docs/appendix/glossary.md`. Use established terminology consistently throughout the framework.

## Common Contribution Tasks

### Adding a New Use Case

**Location**: `docs/08-use-cases/scenarios.md`

**Template**:
```markdown
## Use Case X: [Descriptive Title]

### Situation
[Specific organizational context with enough detail to be recognizable]

### Framework Application

**Strategic Position**: [Quadrant]

**Contextual Modifiers**:
- [Modifier]: [Impact on strategy]
- [Modifier]: [Impact on strategy]

**Investment Strategy**:
1. [Specific approach]
2. [Timeline and resources]
3. [Expected outcomes]

**Outcome**: [Measurable result or lesson learned]

---
```

### Enhancing Implementation Guides

**Locations**: `docs/06-implementation/[quadrant].md`

**What to include**:
- Clear positioning characteristics
- Specific investment priorities with rationale
- Realistic timelines (be honest!)
- Common pitfalls with solutions
- Success indicators at 6/12/24 months
- Movement paths (staying vs transitioning)

**Quality check**:
- Would a security leader in this quadrant recognize themselves?
- Are recommendations specific enough to act on?
- Are timelines realistic (Challengers = years)?
- Do pitfalls reflect real organizational challenges?

### Creating Decision Frameworks

**Pattern**:
```markdown
## Decision: [Clear Question]

### Assessment Criteria

[Table or structured comparison of options]

### SF² Framework Guidance

**For [Quadrant Position]**:
- Recommendation with reasoning
- Contextual considerations

**For [Different Quadrant]**:
- Different recommendation
- Different reasoning

### Key Considerations

[Factors that affect the decision regardless of position]
```

### Adding Framework Relationships

**Location**: `docs/07-relationships/[framework].md`

**Structure**:
1. **Framework Overview** - What it is, what it does
2. **Relationship to SF²** - How they complement each other
3. **Integration Approach** - Practical guidance by quadrant
4. **Contextual Modifiers** - How context affects integration
5. **Examples** - Real scenarios showing integration

**Key principle**: SF² guides **which**, **when**, and **how fast** to implement other frameworks' practices.

## MkDocs Conventions

### Navigation Links

Always include "Next Steps" at the end of pages:

```markdown
[:octicons-arrow-right-24: Continue to Next Section](next.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Previous Section](previous.md){ .md-button }

[:octicons-arrow-right-24: Edit this page](https://gitlab.com/juliedavila/software-factory-security-framework/-/edit/master/docs/path/to/file.md){ .md-button }
```

### Cross-References

Link liberally to related concepts:

```markdown
See [Supply Chain Stewardship](../02-stewardship/supply-chain.md) for details on the #1 priority.

As discussed in [Investment Portfolio](../04-investment/portfolio-framework.md), constrain BAU activities...
```

### Admonitions

Use sparingly for important callouts:

```markdown
!!! note "Key Insight"
    Supply Chain became #1 priority in 2017 due to adversary evolution to automated discovery.

!!! warning "Critical Success Factor"
    Two-axis transformation has high failure risk. Sequence carefully.

!!! tip "Quick Win"
    Start with automated dependency scanning—high ROI, low risk.
```

## Content Quality Standards

### Before Committing

**Self-review checklist**:
- [ ] Aligns with core framework principles (strategic, honest, actionable)
- [ ] Uses consistent terminology (checked against Glossary)
- [ ] Provides actionable guidance (not just theory)
- [ ] Includes specific examples or decision frameworks
- [ ] Has appropriate cross-references to related sections
- [ ] Maintains strategic advisor voice (direct, specific, contextual)
- [ ] Uses executive-appropriate language
- [ ] Navigation links work correctly
- [ ] Follows MkDocs markdown conventions

### Content Balance Target

Aim for this mix in implementation-focused content:
- **60%** Practical guidance (how-to, checklists, decisions)
- **30%** Strategic context (why this matters, tradeoffs)
- **10%** Conceptual foundation (definitions, principles)

### Warning Signs

Content may need revision if it's:
- Too theoretical (lacks actionable steps)
- Too prescriptive (doesn't acknowledge different contexts)
- Too detailed (loses strategic altitude)
- Too generic (could apply to any framework)
- Too jargon-heavy (not executive-accessible)

## Version Management

**Semantic Versioning**:
- **Patch (0.3.X)**: Content refinements, typo fixes, clarifications, minor additions
- **Minor (0.X.0)**: New sections, substantial content additions, new capabilities
- **Major (X.0.0)**: Fundamental framework changes, restructuring, breaking changes

**Update Version In**:
1. `docs/appendix/references.md` - "About This Framework" section
2. Git tag: `git tag vX.Y.Z && git push origin vX.Y.Z`

## Strategic Content Review

When reviewing or adding content, ask:

### 1. Strategic Alignment
Does this help security leaders make better strategic decisions about positioning, investment, or transformation?

### 2. Positioning Specificity
Are recommendations appropriate for specific quadrants? Do they acknowledge that different positions need different approaches?

### 3. Actionability
Can a security leader actually use this guidance tomorrow? Is it specific enough to act on?

### 4. Voice Consistency
Does it maintain the strategic advisor tone (direct, specific, contextual, honest)?

### 5. Practical Value
Would you personally use this guidance in a real organizational decision?

## Framework Evolution Principles

### When Proposing New Elements

**Integration test**: How does this fit with the two-axis positioning model?

**Necessity test**: Is this truly needed or is the existing framework sufficient?

**Actionability test**: Does this help leaders make different or better decisions?

**Clarity test**: Can this be explained to a board in 2 minutes?

**Evidence test**: What real-world situations validate this addition?

### What Makes Good SF² Content

**Include**:
- Position-specific guidance (not one-size-fits-all)
- Realistic timelines and resource requirements
- Honest assessment of risks and tradeoffs
- Concrete success indicators
- Decision frameworks and checklists
- Real organizational scenarios

**Avoid**:
- Generic security advice ("implement defense in depth")
- Unrealistic timelines ("transform in 6 months")
- Security absolutism ("you must do X")
- Vendor-neutral language that says nothing ("consider solutions")
- Theoretical frameworks without application guidance

## Contributing Philosophy

### Framework as Living Document

SF² evolves based on:
- Security landscape changes (adversary evolution, new attack patterns)
- Community contributions (real-world applications)
- Validation through practice (what works in actual organizations)
- Feedback from security leaders using the framework

### Integrity Over Completeness

- **Honest about limitations**: Framework doesn't solve everything
- **Transparent about tradeoffs**: Every choice has costs
- **Realistic about timelines**: Don't oversell transformation speed
- **Humble about certainty**: Security is probabilistic, not absolute

### Accessibility Over Comprehensiveness

- Better to be **useful to many** than complete for few
- Security leaders need **decision frameworks**, not encyclopedias
- **Practical beats theoretical** in every content decision
- **Clear language beats precise jargon** every time

## Working with Claude Code

### Expected Usage Patterns

Claude Code users working on this repository typically:
- Refine existing implementation guides
- Add new use cases or examples
- Enhance cross-references and navigation
- Improve clarity and actionability
- Integrate new security frameworks
- Update for security landscape changes

### Helpful Context to Provide

When asking Claude Code for help:
- Specify which quadrant or section you're working on
- Indicate target audience (board, security leader, practitioner)
- Note any specific organizational context that matters
- Reference related sections that should be consistent
- Clarify whether you want strategic or tactical guidance

### Quality Reminders

The test for any content addition:

**Would a security leader use this to make a consequential decision about their organization's security strategy?**

If yes → Keep it.

If no → Refine or remove it.

---

## Quick Reference

**Core Concept**: Two-axis positioning model (Complexity × Readiness) creates four strategic positions

**Key Framework Elements**:
- 5 Universal Stewardship areas (Supply Chain #1)
- 4 Strategic Quadrants (implementation approaches differ)
- 6 Contextual Modifiers (affect strategy execution)
- Investment Portfolio (BAU vs Scaling)
- Framework Relationships (integration with NIST, OWASP, etc.)

**Primary Audience**: Security leaders (VP, CISO, Director level)

**Primary Use**: Strategic decision-making about positioning, investment, transformation

**Primary Value**: Context-appropriate guidance with realistic timelines

---

## Additional Resources

- **Contributing Guidelines**: See `contributing.md` for contribution process
- **Glossary**: See `docs/appendix/glossary.md` for terminology definitions
- **Live Site**: https://sf2framework.com
- **Repository**: https://gitlab.com/juliedavila/software-factory-security-framework

For questions about the framework itself, refer to the published documentation. For questions about contributing or repository structure, this CLAUDE.md is your guide.
