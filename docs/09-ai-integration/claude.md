# Claude Integration for SF² Strategic Planning

## Why Claude for Security Strategy?

Claude excels at strategic analysis and long-form reasoning, making it particularly well-suited for security leadership work:

- **Deep context understanding** - Handles complex organizational situations
- **Balanced analysis** - Weighs competing priorities and tradeoffs
- **Professional communication** - Executive-ready output
- **Long conversations** - Extended strategic planning sessions
- **Projects feature** - Persistent framework knowledge base

## Setup: Claude Projects

### Creating an SF² Strategy Project

**Claude Desktop**: Projects → New Project

**Project Name**: `SF² Security Strategy`

**Project Instructions**:
```markdown
You are a strategic security advisor helping me apply the Software Factory Security Framework (SF²) to my organization.

## Your Role
- Help assess our current SF² quadrant position
- Guide investment strategy decisions
- Analyze contextual modifiers and their impact
- Develop transformation roadmaps
- Draft executive communications

## Framework Principles
- Supply Chain Stewardship is #1 priority (due to adversary evolution to automated discovery)
- BAU activities should be constrained, not expanded
- Scaling investments create compound capabilities
- Operational readiness determines automation feasibility
- Contextual modifiers significantly affect strategy
- Two-axis transformation is high-risk

## Communication Style
- Strategic and pragmatic
- Direct about tradeoffs and risks
- Executive-appropriate language
- Data-informed recommendations
- Clear prioritization and sequencing

## Always Consider
1. Which SF² quadrant is this organization in?
2. What contextual modifiers apply?
3. Is this BAU work (to constrain) or scaling investment?
4. What's the realistic timeline?
5. What are the transformation risks?
```

### Adding Framework Documentation

**Project Knowledge**:

1. **Add this website**: https://sf2framework.com
   - Claude can read and reference the complete framework

2. **Or add specific framework sections** as text documents:
   - Foundation and core concepts
   - Your quadrant's implementation guide
   - Relevant framework relationships (NIST SSDF, OWASP SAMM, etc.)

3. **Add your organizational context**:
   - Current organizational assessment
   - Team structure and capabilities
   - Existing investments and constraints
   - Strategic objectives

## Strategic Workflows

### Workflow 1: Position Assessment

**Initial Message**:
```
Help me assess our SF² position:

Company: [Describe your organization]
- Engineering team size: [number]
- Products/services: [description]
- Revenue stage: [series B, public, etc.]

Infrastructure:
- Platform: [AWS/GCP/Azure, on-prem, hybrid]
- CI/CD: [mature/developing/manual]
- Automation level: [high/moderate/low]
- Architecture: [cloud-native/transitioning/legacy]

Security team:
- Size: [number]
- Current focus: [what you do today]
- Biggest pain points: [manual work, bottlenecks]

What's our quadrant position and what should we prioritize?
```

**Claude Response Pattern**:
- Analyzes operational complexity factors
- Evaluates operational readiness indicators
- Determines quadrant positioning
- Identifies applicable contextual modifiers
- Provides strategic recommendations

### Workflow 2: Investment Planning

**Planning Prompt**:
```
Based on our [quadrant] position, help me plan our next 12 months:

Current BAU consuming most time:
1. [Manual security reviews - 40% of team time]
2. [Vulnerability triage - 25% of team time]
3. [Compliance reporting - 15% of team time]

Available resources:
- Security team: [X people with Y skill mix]
- Budget for tools/platforms: [$Z or limited/moderate/significant]
- Engineering partnership: [strong/developing/needs work]
- Executive support: [high/moderate/uncertain]

Constraints:
- [Regulatory requirements]
- [Technical debt/legacy systems]
- [Organizational change capacity]

Design our investment strategy with specific priorities.
```

**Claude Analysis**:
- Maps current work to BAU vs scaling categories
- Identifies highest-leverage automation opportunities
- Sequences investments based on dependencies
- Estimates timelines and success probability
- Highlights risks and mitigation strategies

### Workflow 3: Executive Communication

**Communication Request**:
```
Draft a board slide on our security strategy using SF² positioning:

Context:
- Board is concerned about: [security incidents, growth, compliance]
- They understand: [what board knows about security]
- Time allocation: [5 minutes / single slide / 15-minute deep dive]

Our strategy:
- Current position: [quadrant]
- Scaling crisis: [description of unsustainable manual work]
- Investment approach: [what we're building]
- Expected outcomes: [metrics and timeline]

Make it board-appropriate with clear business value.
```

**Claude Deliverable**:
- Executive-appropriate summary
- Clear problem statement and solution
- Business value articulation
- Risk-balanced presentation
- Anticipated questions and answers

### Workflow 4: Framework Application to Specific Decision

**Decision Analysis**:
```
We're deciding whether to [specific decision, e.g., "build vs buy security platform"].

Option A: [Description]
- Pros: [list]
- Cons: [list]
- Investment: [resources required]

Option B: [Description]
- Pros: [list]
- Cons: [list]
- Investment: [resources required]

Apply SF² framework: which option aligns with our [quadrant] position and strategic priorities?
```

**Claude Analysis**:
- Maps options to BAU vs scaling investment categories
- Evaluates alignment with quadrant-specific priorities
- Considers contextual modifiers
- Analyzes compound capability potential
- Provides framework-grounded recommendation

### Workflow 5: Transformation Planning

**Roadmap Development**:
```
We're planning to move from [current quadrant] to [target quadrant]:

Timeline: [how long we have]
Resources: [what we can commit]
Constraints: [what limits us]
Risk tolerance: [high/moderate/low]

Create a realistic transformation roadmap with:
- Major phases and milestones
- Success indicators at 6/12/24 months
- Resource requirements per phase
- Risk factors and mitigation
- Decision points and criteria
```

**Claude Roadmap**:
- Phased approach with clear milestones
- Realistic timelines based on complexity
- Success indicators tied to framework positioning
- Risk assessment with contingency planning
- Clear decision criteria for go/no-go moments

## Advanced Usage Patterns

### Multi-Turn Strategic Planning Sessions

Claude excels at extended conversations. Use this for:

**Session 1: Discovery and Assessment** (30-60 minutes)
- Explore organizational context
- Assess quadrant positioning
- Identify contextual modifiers
- Clarify strategic objectives

**Session 2: Investment Strategy** (45-90 minutes)
- Analyze current BAU activities
- Identify scaling investment opportunities
- Prioritize and sequence investments
- Develop success metrics

**Session 3: Roadmap and Communication** (30-60 minutes)
- Create transformation roadmap
- Draft executive communications
- Prepare board materials
- Plan team communications

### Using Claude for Framework Learning

**Learning Conversation Pattern**:
```
I'm new to the SF² framework. Walk me through:

1. The core concept of [specific topic]
2. Why this matters for security leaders
3. How to apply this to my [organizational context]
4. Common pitfalls to avoid
5. Success indicators

Use my organization as examples to make it concrete.
```

**Benefits**:
- Personalized framework education
- Context-specific examples
- Interactive Q&A
- Practical application focus

### Comparative Analysis

**Framework Comparison**:
```
Compare how SF² would guide our approach vs [traditional approach/different framework]:

Scenario: [specific situation]

Traditional approach:
[describe conventional wisdom]

SF² approach:
[apply framework positioning]

What's different, why does it matter, and what are the tradeoffs?
```

## Example Strategic Planning Conversation

### Part 1: Initial Assessment

**You**:
```
Help me assess our position. We're a Series B SaaS company with 150 engineers across 3 product teams. Infrastructure is cloud-native (AWS), we have solid CI/CD, but security reviews are blocking releases. Security team of 5 people spending 60% of time on manual security reviews.
```

**Claude**:
```
Based on your description, you're positioned as **Visionaries** (Simple + High Readiness):

Operational Complexity: Simple
- 150 engineers is moderate scale
- 3 product teams is manageable
- Single platform (AWS cloud-native)

Operational Readiness: High
- Cloud-native infrastructure
- Solid CI/CD foundation
- Modern tech stack

Critical Issue: You're at the **scaling crisis**
- 60% of security team time on manual reviews is unsustainable
- This will only get worse as you grow
- You're positioned to solve this through automation

Strategic Priority: Constrain BAU, invest in scaling
- Reduce manual reviews through automation
- Build paved roads for common patterns
- Self-service security capabilities

This is actually an ideal position - you have the readiness to automate effectively.

Shall we design your investment strategy?
```

### Part 2: Investment Strategy

**You**:
```
Yes. Main BAU activities:
- Security reviews (60%)
- Vulnerability triage (20%)
- Compliance work (15%)
- Other (5%)

What should we automate first?
```

**Claude**:
```
Priority Investment Sequence for Visionaries:

**Phase 1 (Months 1-3): Security Review Automation**
Invest 70% of time in automation, constrain reviews to 30%:

1. Deploy automated security scanning:
   - SAST/DAST integrated into CI/CD
   - Dependency/supply chain scanning (Supply Chain #1!)
   - Container security scanning

2. Create secure templates:
   - Identify 3 most common architecture patterns
   - Build pre-approved secure templates
   - Self-service for standard patterns

3. Triage criteria:
   - Manual review only for novel architectures
   - Everything else uses automation + templates

Expected outcome: Security reviews drop from 60% to 20% of time

**Phase 2 (Months 4-6): Vulnerability Automation**
Redirect saved time to vulnerability management:

1. Automated vulnerability scanning and prioritization
2. Auto-patching for approved dependency updates
3. SLA-driven vulnerability remediation workflow

Expected outcome: Vulnerability triage drops from 20% to 5%

**Phase 3 (Months 7-12): Scaling Further**
With 50% time saved, invest in:

1. Advanced security automation
2. Security champions program (distribute knowledge)
3. Policy-as-code capabilities

This sequence:
- Addresses your biggest pain point first (reviews)
- Leverages your high operational readiness
- Creates compound capabilities (each builds on previous)
- Realistic for 12-month timeline with your team

Shall we detail Phase 1 implementation?
```

## Tips for Effective Claude Usage

### 1. Provide Rich Context
- Don't assume Claude remembers everything (even in Projects)
- Restate key context when starting new conversation threads
- Be specific about organizational constraints

### 2. Ask for Reasoning
```
Explain your framework-based reasoning for this recommendation.
Why is this the right approach for our quadrant position?
```

### 3. Request Alternatives
```
What would be different if we were [different quadrant]?
What are alternative approaches and their tradeoffs?
```

### 4. Iterate on Output
```
Make this more [concise/detailed/executive-friendly]
Focus more on [specific aspect]
Add [specific element]
```

### 5. Use for Scenario Planning
```
What if [contextual modifier changes]?
How would this recommendation change if [constraint added]?
Model best-case and worst-case timelines.
```

## Claude Desktop Advantages

### Persistent Projects
- Framework knowledge always available
- Organizational context maintained
- Strategic continuity across conversations

### Privacy Controls
- Projects stored locally by default
- Can be used offline for sensitive planning
- No training on your conversations (Anthropic policy)

### Long Context
- Handle complex organizational situations
- Extended strategic planning sessions
- Reference lengthy framework documentation

### File Uploads
- Upload organizational assessments
- Analyze existing strategy documents
- Process team surveys and feedback

---

## Next Steps

[:octicons-arrow-right-24: See ChatGPT Integration](chatgpt.md){ .md-button }
[:octicons-arrow-right-24: See Gemini Integration](gemini.md){ .md-button }
[:octicons-arrow-left-24: Back to AI Integration Overview](overview.md){ .md-button }

[:octicons-arrow-right-24: Edit this page](https://gitlab.com/juliedavila/software-factory-security-framework/-/edit/master/docs/09-ai-integration/claude.md){ .md-button }
