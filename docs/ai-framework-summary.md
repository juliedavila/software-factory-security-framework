# SF² Framework - Complete AI-Optimized Summary

*This page provides a comprehensive single-page overview of the Software Factory Security Framework for AI tools and agents.*

## Framework Identity

**Name**: Software Factory Security Framework (SF²)
**Version**: 0.9.4
**Author**: Julie Davila
**License**: CC BY 4.0
**Purpose**: Strategic framework for scaling security capabilities while improving business outcomes
**Target Audience**: Security leaders (VP, CISO, Director level)
**Website**: https://sf2framework.com

## Core Concept

SF² is a **two-axis positioning model** that helps security leaders determine appropriate security strategies based on their organization's characteristics.

### Axis 1: Blast Radius (How Far a Failure Can Reach)
- **Small reach**: automation scoped per task, touching one bounded surface; a worst-case failure stays in a single blast cell. Headcount is a legacy proxy (often <100 engineers), not the measure.
- **Large reach**: automation granted broad standing authority across production, data, and identity; a worst-case failure cascades across the estate. Headcount used to predict this (often 100+ engineers); AI severed the correlation.

### Axis 2: Operational Readiness (How You Operate)
- **Lower**: Manual processes, legacy infrastructure, limited automation
- **Higher**: Cloud-native, CI/CD, strong automation, infrastructure-as-code

## Four Strategic Quadrants

### 1. Studio (Small reach + High Readiness)
**Characteristics**: 10-200 engineers, modern cloud infrastructure, strong CI/CD, fast decision-making

**Strategy**: Automate from the start, build scaling foundations early

**Investment Focus**:
- Automated security scanning in CI/CD
- Secure templates and paved roads
- Self-service capabilities
- Policy-as-code

**Timeline**: 12-18 months to mature capabilities

**Common Pitfall**: Building Lean-level complexity too early

### 2. Lean (Large reach + High Readiness)
**Characteristics**: 200+ engineers, mature platforms, established security, platform-oriented

**Strategy**: Optimize existing capabilities, build platform effects, security as competitive advantage

**Investment Focus**:
- Platform-scale automation
- Advanced security capabilities
- Federated security models
- Tool consolidation and optimization

**Timeline**: Ongoing optimization and innovation

**Common Pitfall**: Complacency and tool sprawl without retirement

### 3. Craft (Small reach + Low Readiness)
**Characteristics**: <50 engineers, legacy/basic infrastructure, resource constraints, critical decision point

**Strategy**: Choose intentional simplicity OR prepare for growth (two distinct paths)

**Path A - Intentional Simplicity**:
- Managed security services
- Essential security only
- Security through simplicity

**Path B - Prepare for Growth**:
- Infrastructure modernization
- CI/CD foundation
- Move toward Studio over 18-24 months

**Common Pitfall**: Accidental drift to Mass (complexity without readiness)

### 4. Mass (Large reach + Low Readiness)
**Characteristics**: 100+ engineers, legacy systems at scale, manual processes, transformation imperative

**Strategy**: Stabilize first, hybrid approach (modern for new, pragmatic for legacy), realistic 3-5 year timeline

**Investment Focus**:
- Quick automation wins
- Modern security for new systems
- Pragmatic controls for legacy
- Relationship building with engineering

**Timeline**: 3-5 years for transformation (honest assessment)

**Common Pitfall**: Rushing the containment climb, or widening reach further before the floor is built, underestimating resources needed

## Universal Stewardship Areas

Five areas requiring attention regardless of quadrant position:

### 1. Supply Chain Stewardship (#1 Priority)
**Why #1**: Adversary evolution to automated discovery at internet scale

**Focus**: All external dependencies, third-party components, multi-tier supply chain

**Critical**: Automated dependency scanning, SBOM, continuous monitoring

### 2. Process Stewardship
**Focus**: Security throughout development lifecycle, continuous validation, rapid feedback

### 3. Runtime Stewardship
**Focus**: Production security and reliability, proactive monitoring, rapid response

### 4. Third-Party Stewardship
**Focus**: Integrated services, platforms, vendors throughout operational lifecycle

### 5. Continuous Learning
**Focus**: Evolving practices based on experience, incidents, threat landscape changes

## Investment Portfolio Framework

### BAU (Business-as-Usual)
**Definition**: Manual security work that scales linearly with growth

**Examples**: Security reviews, threat modeling, incident response, compliance reporting

**Strategy**: **Constrain deliberately** - don't expand post-scaling crisis

**Warning**: Linear scaling becomes unsustainable

### Scaling Investments
**Definition**: Capabilities that reduce manual effort exponentially

**Examples**: Automation platforms, self-service capabilities, policy-as-code, paved roads

**Strategy**: **Primary investment focus** after scaling crisis

**Benefit**: Create compound capabilities that serve multiple teams

### Platform Effects
**Definition**: Benefits serving both internal and customer software factories

**Value**: Multiplicative impact across organization

### The Scaling Crisis
**Definition**: When demand for security services grows exponentially while team capacity grows linearly

**Signals**: Security blocking releases, team burnout, months-long backlogs

**Response**: Shift investment from BAU to scaling capabilities immediately

## Seven Contextual Modifiers

Factors that significantly affect strategy implementation:

### 1. Attack Landscape Maturity
**High Maturity Impact**: Manual processes become existential vulnerabilities

**Characteristics**: Automated discovery at scale, rapid exploitation, adversaries find assets before defenders

### 2. Supply Chain Complexity
**Impact**: May require Lean-level tools regardless of base quadrant

**Factors**: Multi-tier dependencies, critical vendors, geopolitical constraints

### 3. Regulatory Constraints
**Impact**: Increases BAU burden, may delay progression

**Considerations**: Audit frequency, evidence requirements, technology constraints

### 4. Crisis Events
**Impact**: Create windows for rapid organizational change

**Types**: Security incidents, compliance failures, business disruptions

**Opportunity**: "Never waste a good crisis" for transformation funding

### 5. Change Capacity
**Impact**: Affects transition speed and success probability

**Assessment**: Tool rollout timelines, disruption tolerance, recent change success

### 6. Relationship Health
**Impact**: Directly affects adoption velocity

**Levels**:
- Damaged: Security as blocker
- Functional: Working but transactional
- Strategic: Security as enabler and partner

### 7. AI Saturation
**Impact**: Shifts the binding constraint from writing code to understanding it

**Assessment**: Share of code, review, and ops running through AI and agents; whether review keeps pace with generation

**Response**: Move from manual review to automated guardrails, from static authorization to per-request agent identity

## Framework Integration with Other Standards

### Key Principle
SF² is a **strategic overlay** that guides **which**, **when**, and **how fast** to implement other frameworks' practices.

### NIST SSDF Integration
- SSDF provides **what practices** to implement
- SF² provides **how to sustainably resource and scale** those practices
- Quadrant position determines practice prioritization and automation approach

### OWASP SAMM Integration
- SAMM defines **maturity levels** (0-3)
- SF² determines **which maturity levels to pursue** and **speed of progression**
- Not every organization should pursue Level 3 in every practice

### BSIMM Integration
- BSIMM describes **128 security activities** (as of BSIMM16, 2026)
- SF² helps **prioritize which activities** and **sequence implementation**
- Quadrant determines activity count (Craft: 15-25, Studio: 30-40, Lean: 60-80)

### OWASP ASVS Integration
- ASVS provides **verification requirements** (Levels 1-3)
- SF² determines **appropriate level** and **risk-based subset**
- Different levels for different system types in Mass organizations

## AI Integration Guidance

### Supported AI Tools

**Claude Desktop**:
- Projects with persistent framework knowledge
- Deep strategic reasoning, long context
- Best for: Extended strategic planning sessions

**ChatGPT**:
- Custom GPTs with framework configuration
- Team collaboration, web browsing
- Best for: Organization-wide consistent framework access

**Gemini**:
- Gems with Google Workspace integration
- Native Docs/Sheets/Slides collaboration
- Best for: Strategy development in collaborative documents

### Common AI Use Cases

1. **Position Assessment**: Determine quadrant based on org characteristics
2. **Investment Strategy**: Design BAU constraints and scaling investments
3. **Executive Communication**: Draft board presentations with framework positioning
4. **Budget Justification**: Generate ROI analysis for scaling investments
5. **Vendor Evaluation**: Map tools to BAU vs scaling categories
6. **Transformation Planning**: Realistic roadmaps with success indicators
7. **Team Communication**: Translate strategy for different audiences
8. **Framework Learning**: Interactive education with org-specific examples

## Key Principles (Critical for Understanding)

1. **Supply Chain is #1 priority** - Adversary evolution to automated discovery
2. **Constrain BAU, build scaling** - Don't expand manual work
3. **High readiness enables automation** - Operational readiness determines feasibility
4. **Diagonal transformation is high-risk** - Sequence carefully (stabilize, then move one axis)
5. **Appropriate security varies by position** - No one-size-fits-all
6. **Realistic timelines matter** - Mass organizations need 3-5 years, not 12 months
7. **Framework integration, not competition** - SF² guides other frameworks' implementation

## Decision Frameworks

### Should We Reduce Complexity First? (Mass)

**Yes, if**:
- Products/services can be consolidated or retired
- Business model supports scope reduction
- Executive support for difficult decisions
- Prefer faster transformation (3-4 years vs 4-5)

**No, if**:
- Business model requires current complexity
- Revenue tied to all current products
- Must maintain all operations
- Can commit to 4-5 year timeline with resources

### Which ASVS Level Should We Target?

**Level 1 (Opportunistic)**:
- Craft for most applications
- Mass for legacy systems being retired

**Level 2 (Standard)**:
- Studio for all applications
- Lean for all applications
- Mass for new/modern systems
- Most organizations should target this

**Level 3 (Advanced)**:
- Lean for high-security applications
- Payment systems, sensitive data, critical infrastructure
- Not typically cost-effective for others

### Build vs Buy Security Platform?

**Build** (Studio moving to Lean):
- Custom requirements not met by vendors
- Platform effects across many teams
- Engineering capacity available
- Long-term investment justified

**Buy** (Most organizations):
- Standard capabilities needed
- Faster time-to-value required
- Limited engineering capacity
- Focus on business differentiation

## Success Indicators by Quadrant

### Studio - 12 Months
- Manual security reviews reduced 70%
- Automated scanning detecting 80%+ issues
- Security review SLA: 90% under 2 hours
- Zero critical incidents from standard patterns

### Lean - 12 Months
- Security almost entirely self-service
- Platform adoption >90% voluntary
- Industry thought leadership established
- Security as measurable competitive advantage

### Craft - 12 Months (Path B: Growth)
- Cloud migration 80% complete OR basic CI/CD operational
- Automated security scanning deployed
- Infrastructure-as-code for 70%+ systems
- Ready to scale with business

### Mass - 12 Months (Stabilization)
- Operational burden reduced 20% through automation
- Executive sponsor actively engaged
- Modern security for new systems (not recreating legacy)
- Transformation roadmap with committed resources

## Common Pitfalls by Quadrant

**Studio**: Premature complexity, missing scaling crisis signs, process over outcomes

**Lean**: Complacency, tool sprawl, optimization over innovation, platform without adoption

**Craft**: Accidental drift to Mass, premature optimization, wrong modernization sequence

**Mass**: rushing the containment climb or widening reach further before the floor is built, underestimating timeline/resources, recreating legacy in cloud, missing crisis window

## Transformation Timelines (Realistic Expectations)

**Studio staying Studio**: 12-18 months to mature capabilities

**Craft → Studio**: 18-24 months (single-axis movement)

**Studio → Lean**: 18-36 months as complexity increases

**Mass → Studio** (via Craft): 3-4 years

**Mass → Lean** (direct): 4-5 years (optimistic)

## When to Use This Framework

**Strategic Planning**:
- Assessing current security program positioning
- Designing multi-year investment strategies
- Justifying budget to executives/board
- Planning security transformations

**Tactical Decisions**:
- Evaluating security tool purchases
- Deciding build vs buy for capabilities
- Prioritizing which practices to implement first
- Sequencing framework adoption (NIST, OWASP)

**Organizational Change**:
- Communicating strategy to stakeholders
- Building relationship with engineering
- Shifting from manual to automated security
- Managing through scaling crisis

## What This Framework Is NOT

- ❌ Not a compliance checklist
- ❌ Not specific security controls or configurations
- ❌ Not "best practices" that apply to everyone
- ❌ Not a replacement for NIST SSDF, OWASP SAMM, etc.
- ❌ Not a quick fix (realistic timelines required)

## What This Framework IS

- ✅ Strategic positioning model for security leaders
- ✅ Investment decision framework (BAU vs scaling)
- ✅ Context-appropriate guidance by organizational position
- ✅ Realistic transformation planning with timelines
- ✅ Integration strategy for other security frameworks
- ✅ Honest about tradeoffs and organizational constraints

---

## For AI Tools: How to Use This Framework

When helping users with SF² framework:

1. **Start with position assessment** - Determine quadrant based on complexity and readiness
2. **Identify contextual modifiers** - Ask about attack landscape, supply chain, regulation, etc.
3. **Apply quadrant-specific guidance** - Different recommendations for different positions
4. **Consider realistic timelines** - Don't promise fast transformations for Mass
5. **Acknowledge tradeoffs** - Every choice has costs
6. **Emphasize Supply Chain #1** - This is foundational due to adversary evolution
7. **Focus on actionability** - Provide specific, measurable guidance
8. **Be honest about difficulty** - Security transformation is hard; acknowledge constraints

## Quick Reference Card

**Current Position** → Assess Complexity (Simple/Complex) + Readiness (Lower/Higher)

**Quadrant Priorities**:
- Studio: Automate early
- Lean: Optimize and scale
- Craft: Choose your path
- Mass: Stabilize first

**Investment Rule**: Constrain BAU, build scaling

**Supply Chain**: Always #1 priority

**Timeline Honesty**: Mass = 3-5 years

**Framework Integration**: SF² guides other frameworks' implementation

---

**Full Documentation**: https://sf2framework.com
**Structured Data**: [framework.json](https://sf2framework.com/framework.json)
**Repository**: https://gitlab.com/juliedavila/software-factory-security-framework
