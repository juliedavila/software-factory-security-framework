# SF² Framework Development Guide for Claude Code

## Repository Context

This is the **Software Factory Security Framework (SF²)** - an open-source strategic framework for scaling security capabilities while improving business outcomes.

**Author**: Julie Davila
**Purpose**: Help security leaders make strategic decisions about positioning, investment, and transformation
**License**: CC BY 4.0
**Audience**: Security leaders, CISOs, VPs of Security at software organizations

## Framework Principles (Core DNA)

When working on this framework, these principles are foundational:

### 1. Strategic Over Tactical
- Framework is about **positioning and investment strategy**, not specific security controls
- Focus on **sustainable scaling** at organizational level
- Guide leaders to appropriate security for their context

### 2. Honest and Pragmatic
- **Call out hard truths**: scaling crisis is inevitable, two-axis transformation is high-risk
- **Realistic timelines**: Challenger transformations take 3-5 years, not 12 months
- **Acknowledge tradeoffs**: no perfect solutions, only context-appropriate choices
- **Supply Chain #1 since 2017**: Adversary evolution to automated discovery is non-negotiable

### 3. Actionable and Specific
- Provide **concrete checklists** (Week 1, Month 1, Quarter 1)
- Include **success indicators** with measurable targets
- Offer **decision frameworks** (should we build or buy? which quadrant? what timeline?)
- Real **use cases and examples** grounded in actual organizational situations

### 4. Framework Relationships, Not Competition
- SF² is **strategic overlay** for NIST SSDF, OWASP SAMM, BSIMM, OWASP ASVS
- Other frameworks provide **practices and requirements**
- SF² provides **sequencing, prioritization, and sustainability strategy**
- Integration, not replacement

### 5. Accessible to Security Leaders
- **Executive-appropriate** language (board-ready)
- **Avoid security jargon** where possible; explain when necessary
- **Visual thinking** (quadrants, matrices, decision trees)
- **Storytelling with data** (metrics that inform decisions)

## Content Development Philosophy

### Voice and Tone

**Strategic Advisor** - The primary voice:
- Confident but not prescriptive
- Direct about challenges and risks
- Empathetic to organizational constraints
- Data-informed without being academic
- Professional without being corporate

**What to Avoid**:
- Academic paper style (too theoretical)
- Vendor marketing language (too promotional)
- Compliance checklist mentality (too rigid)
- Security absolutism ("you must do X")
- Buzzword overload

**What to Embrace**:
- Clear positioning: "Visionaries should...", "Challengers face..."
- Honest tradeoffs: "faster timeline but higher risk"
- Contextual guidance: "if you have strong executive support..."
- Practical examples: "like when a Series B startup..."

### Content Structure Patterns

**Assessment Questions** - Help reader determine their situation:
```
| Question | Low | Moderate | High |
|----------|-----|----------|------|
| Specific assessment criterion | Description | Description | Description |
```

**Implementation Guidance** - Actionable steps:
```
Week 1:
- [ ] Specific, measurable action
- [ ] Another specific action

Month 1:
- [ ] Achievable milestone
```

**Decision Frameworks** - Clear criteria:
```
Choose Option A if:
- Criterion 1
- Criterion 2

Choose Option B if:
- Different criterion
- Another consideration
```

**Success Indicators** - Measurable outcomes:
```
6 Months:
- [ ] **Metric reduced/improved X%** from baseline
- [ ] **Qualitative outcome** (specific and verifiable)
```

## Working with This Repository

### Documentation Structure

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

### Content Iteration Patterns

**Adding New Content**:
1. Identify which section it belongs to
2. Check cross-references to related concepts
3. Maintain consistent terminology (use Glossary)
4. Include practical examples or decision frameworks
5. Add navigation links (Next Steps buttons)

**Refining Existing Content**:
1. Read surrounding context for consistency
2. Preserve the strategic advisor voice
3. Enhance with specific, measurable guidance
4. Add missing cross-references
5. Verify all links work

**Framework Evolution**:
- New concepts should integrate with existing two-axis model
- Additional modifiers should be truly contextual (not universal)
- Implementation guides should stay quadrant-specific
- Examples should represent diverse organizational contexts

### MkDocs Conventions

**Navigation Structure**:
- Top-level tabs for major sections
- Hierarchical for subsections
- "Next Steps" buttons at bottom of pages
- "Edit this page" links for contributions

**Markdown Extensions Used**:
- Admonitions: `!!! note/warning/tip`
- Tables: Standard markdown tables
- Buttons: `[:octicons-icon: Text](link.md){ .md-button }`
- Checklists: `- [ ] Item`

**Cross-References**:
- Always use relative paths: `../02-stewardship/supply-chain.md`
- Reference specific sections: `[Supply Chain #1](../02-stewardship/supply-chain.md#2017-adversary-evolution)`
- Link to related concepts liberally

## Common Tasks for Claude Code

### 1. Adding a New Use Case

**Pattern**:
```markdown
## Use Case X: [Descriptive Title]

### Situation
[Specific organizational context]

### Framework Application

**Strategic Position**: [Quadrant]

**Contextual Modifiers**:
- [Modifier 1]: [Impact]
- [Modifier 2]: [Impact]

**Investment Strategy**:
[Specific approach]

**Outcome**: [Measurable result]
```

### 2. Enhancing Implementation Guides

**Check for**:
- Clear quadrant positioning characteristics
- Specific investment priorities with rationale
- Realistic timelines (Challengers = years, not months)
- Common pitfalls with solutions
- Success indicators at multiple timeframes
- Movement paths (if staying in quadrant or transitioning)

### 3. Creating Decision Frameworks

**Structure**:
```markdown
## Decision: [Question]

### Criteria Assessment
[Table or list comparing options]

### Framework Guidance
[How SF² positioning affects the decision]

### Recommendation Pattern
[If X then Y, with reasoning]
```

### 4. Writing Executive Summaries

**Key Elements**:
- Start with strategic positioning question
- Present two-axis model visually/conceptually
- Show investment portfolio framework
- Link to relevant implementation guide
- Single-page digestible format

## Framework Terminology (Consistent Usage)

**Required Precision**:
- **Software Factory** (capitalized) - not "software organization" or "development team"
- **Supply Chain Stewardship is #1 priority** - always with context "since 2017 adversary evolution"
- **BAU (Business-as-Usual)** - activities to constrain
- **Scaling Investments** - capabilities that create compound effects
- **Operational Complexity** and **Operational Readiness** - the two axes (not "maturity")
- **Quadrant names**: Visionaries, Leaders, Niche Players, Challengers (capitalized)

**Avoid These Terms**:
- "Security maturity" (use operational readiness)
- "Best practices" (use position-appropriate practices)
- "Security controls" (use security capabilities)
- "Security debt" (use technical debt in security context)

## Quality Standards for Content

### Before Committing New Content

**Checklist**:
- [ ] Aligns with core framework principles
- [ ] Uses consistent terminology (check Glossary)
- [ ] Provides actionable guidance (not just concepts)
- [ ] Includes specific examples or decision frameworks
- [ ] Has appropriate cross-references
- [ ] Maintains strategic advisor voice
- [ ] Board-ready language (if executive-facing)
- [ ] Navigation links work
- [ ] Follows MkDocs conventions

### Content Balance

**Aim for**:
- 60% practical guidance (how-to, checklists, decisions)
- 30% strategic context (why this matters, tradeoffs)
- 10% conceptual foundation (definitions, principles)

**Warning Signs**:
- Too theoretical (lacks actionable steps)
- Too prescriptive (doesn't acknowledge context)
- Too detailed (loses strategic altitude)
- Too generic (could apply to anything)

## Version Management

**Semantic Versioning**:
- **Patch (0.3.X)**: Content refinements, typo fixes, clarifications
- **Minor (0.X.0)**: New sections, substantial content additions, new frameworks
- **Major (X.0.0)**: Fundamental framework changes, restructuring

**Update Locations**:
- `docs/appendix/references.md` - "About This Framework" section
- Git tags: `git tag vX.Y.Z && git push origin vX.Y.Z`

## Repository-Specific Claude Code Workflows

### Strategic Content Review

When asked to review content:
1. **Assess strategic alignment**: Does this help security leaders make better decisions?
2. **Check positioning specificity**: Are recommendations quadrant-appropriate?
3. **Verify actionability**: Can a reader actually use this guidance?
4. **Evaluate voice**: Does it maintain strategic advisor tone?
5. **Test practical value**: Would you use this in a real organizational decision?

### Framework Evolution Guidance

When proposing new framework elements:
1. **Integration test**: How does this fit with two-axis model?
2. **Necessity test**: Is this truly needed or is existing framework sufficient?
3. **Actionability test**: Does this help leaders make different/better decisions?
4. **Clarity test**: Can this be explained to a board in 2 minutes?
5. **Evidence test**: What real-world situations validate this addition?

### Cross-Reference Enhancement

When improving existing content:
1. Look for orphaned concepts (mentioned but not linked)
2. Add references to related sections
3. Create "See also" connections
4. Enhance "Next Steps" navigation
5. Build conceptual bridges between sections

## Meta-Principles for This Work

### Framework as Living Document
- SF² evolves with security landscape changes
- Community contributions enhance it
- Real-world application validates it
- Julie's experience at GitLab informs it
- Open source enables broader impact

### Integrity Over Completeness
- **Honest about limitations**: Framework doesn't solve everything
- **Transparent about tradeoffs**: Every choice has costs
- **Realistic about timelines**: Don't oversell transformation speed
- **Humble about certainty**: Security is probabilistic, not deterministic

### Accessibility Over Comprehensiveness
- Better to be **useful to many** than complete for few
- Strategic leaders need **decision frameworks**, not encyclopedias
- **Practical beats theoretical** in every content decision
- **Clear language beats precise jargon**

## When Working with Julie on This Repository

### Understanding Context

Julie brings:
- **Lived experience** in Challenger quadrant (GitLab Product Security)
- **Strategic thinking** shaped by systems, psychology, and philosophy
- **Authentic voice** that values directness and empathy
- **Open source ethos** that prioritizes community value

### Response Patterns

**For Content Development**:
- Lead with strategic framing (what problem does this solve?)
- Provide concrete examples from her context when relevant
- Maintain board-ready professional tone
- Acknowledge organizational complexity honestly

**For Framework Iteration**:
- Build on existing structure (don't propose dramatic restructuring)
- Integrate with two-axis model and existing terminology
- Test ideas against real organizational scenarios
- Consider how security leaders will actually use this

**For Technical Decisions** (MkDocs, structure, etc.):
- Prioritize reader experience over technical elegance
- Maintain consistency with existing patterns
- Keep it simple and maintainable
- Document why, not just what

## Final Reminder

This framework exists to help security leaders make **better strategic decisions** in their specific organizational context.

Every word we add should:
- Clarify strategic positioning
- Guide investment decisions
- Enable realistic transformation planning
- Empower leaders with appropriate confidence

The test: **Would a security leader use this to make a consequential decision?**

If yes → Keep it.
If no → Refine or remove it.

---

**For questions about framework philosophy, positioning, or content direction**:
Refer to Julie's personal Claude Desktop preferences, which provide her complete strategic and philosophical context.

**For questions about this repository, documentation structure, or content development**:
This CLAUDE.md is your primary guide.

Together, these contexts enable high-quality strategic framework development.
