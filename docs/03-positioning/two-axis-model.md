# Two-Axis Positioning Model

## Understanding Your Strategic Starting Point

Rather than using traditional maturity models that assume linear progression, this framework positions software factories on **two independent dimensions** that determine your optimal security approach.

!!! tip "Why Not Maturity Models?"
    Traditional security maturity models imply everyone should follow the same path. SF² recognizes that a 10-person startup with modern cloud infrastructure shouldn't implement security the same way as a 5,000-person enterprise with legacy systems, even if both need strong security.

## The Strategic Positioning Framework

Organizations can be assessed along two critical axes:

### Operational Complexity Axis (What You Manage)

**Simple Operations**:
- Single or few teams
- Basic processes
- Straightforward compliance
- Limited interdependencies
- Centralized decision-making

**Complex Operations**:
- Multiple teams/organizations
- Sophisticated processes
- Multi-jurisdictional compliance
- Extensive service interdependencies
- Distributed decision-making

### Operational Readiness Axis (How You Operate)

**Lower Readiness**:
- Manual processes
- Legacy infrastructure
- Limited automation
- Tribal knowledge
- Reactive operations

**Higher Readiness**:
- Automated pipelines
- Modern infrastructure
- API-driven operations
- Documented processes
- Proactive operations

## The Four Strategic Positions

These two axes create four distinct strategic positions, each with different security approaches:

<figure>
  <svg viewBox="0 0 680 560" role="img" aria-labelledby="sf2-axis-title sf2-axis-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:680px;width:100%;height:auto;font-family:inherit;">
    <title id="sf2-axis-title">SF² two-axis positioning model</title>
    <desc id="sf2-axis-desc">A 2x2 matrix. The horizontal axis is Operational Complexity, increasing from Simple on the left to Complex on the right. The vertical axis is Operational Readiness, the lean transformation, with repeatability rising from Lower at the bottom to Higher at the top. Four quadrants: Studio is Simple plus High readiness (top left); Lean is Complex plus High readiness (top right) and is the goal position; Craft is Simple plus Low readiness (bottom left); Mass is Complex plus Low readiness (bottom right). Mass means big-batch, siloed, low-flow work, the antonym of lean, not the 1913 mass-production repeatability triumph.</desc>
    <!-- quadrant fills -->
    <rect x="110" y="60" width="250" height="200" fill="#E8F5E9" stroke="#4CAF50" stroke-width="2"/>
    <rect x="360" y="60" width="250" height="200" fill="#E3F2FD" stroke="#2196F3" stroke-width="2"/>
    <rect x="110" y="260" width="250" height="200" fill="#FFF8E1" stroke="#FFC107" stroke-width="2"/>
    <rect x="360" y="260" width="250" height="200" fill="#FFEBEE" stroke="#F44336" stroke-width="2"/>
    <!-- quadrant labels -->
    <text x="235" y="150" text-anchor="middle" font-size="20" font-weight="700" fill="#1b5e20">Studio</text>
    <text x="235" y="172" text-anchor="middle" font-size="12" fill="#333">Simple + High readiness</text>
    <text x="235" y="190" text-anchor="middle" font-size="12" fill="#333">repeatable at small scale</text>
    <text x="485" y="150" text-anchor="middle" font-size="20" font-weight="700" fill="#0d47a1">Lean &#9733;</text>
    <text x="485" y="172" text-anchor="middle" font-size="12" fill="#333">Complex + High readiness</text>
    <text x="485" y="190" text-anchor="middle" font-size="12" fill="#333">goal: repeatability at scale</text>
    <text x="235" y="350" text-anchor="middle" font-size="20" font-weight="700" fill="#7a5c00">Craft</text>
    <text x="235" y="372" text-anchor="middle" font-size="12" fill="#333">Simple + Low readiness</text>
    <text x="235" y="390" text-anchor="middle" font-size="12" fill="#333">snowflake-per-build, by hand</text>
    <text x="485" y="350" text-anchor="middle" font-size="20" font-weight="700" fill="#b71c1c">Mass</text>
    <text x="485" y="372" text-anchor="middle" font-size="12" fill="#333">Complex + Low readiness</text>
    <text x="485" y="390" text-anchor="middle" font-size="12" fill="#333">big-batch, siloed, low-flow</text>
    <!-- axis lines -->
    <line x1="110" y1="490" x2="610" y2="490" stroke="#555" stroke-width="1.5"/>
    <line x1="90" y1="60" x2="90" y2="460" stroke="#555" stroke-width="1.5"/>
    <!-- x axis labels -->
    <text x="110" y="508" text-anchor="start" font-size="13" fill="#333">Simple</text>
    <text x="610" y="508" text-anchor="end" font-size="13" fill="#333">Complex</text>
    <text x="360" y="532" text-anchor="middle" font-size="14" font-weight="600" fill="#1a1a1a">Operational Complexity (scale)</text>
    <!-- y axis labels -->
    <text x="80" y="455" text-anchor="end" font-size="13" fill="#333">Lower</text>
    <text x="80" y="70" text-anchor="end" font-size="13" fill="#333">Higher</text>
    <text x="32" y="260" text-anchor="middle" font-size="14" font-weight="600" fill="#1a1a1a" transform="rotate(-90 32 260)">Operational Readiness (repeatability rising)</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">The readiness axis is the lean transformation. Craft to Mass to Lean traces repeatability rising. <strong>Mass</strong> is lean's antonym (big-batch, siloed, low-flow), not Ford's 1913 repeatability triumph.</figcaption>
</figure>

!!! note "Reading the two axes"
    The vertical axis is the **lean transformation**: moving up means security work becomes more repeatable. Craft to Mass to Lean traces repeatability rising, which is the core SF² thesis. The horizontal axis is **scale** (operational complexity). The goal position is **Lean**: high repeatability sustained at high complexity.

!!! warning "Mass means low-flow, not Ford's assembly line"
    In SF², **Mass** is lean's antonym: big-batch, siloed, low-flow security work that has not yet earned repeatability. It is *not* the 1913 mass-production repeatability triumph. A reader fluent in manufacturing history should not invert the readiness axis here. In SF² terms the repeatability win is **Lean**; Mass is the high-complexity quadrant still waiting on it.

### Studio (Simple + High Readiness)

**Characteristics**:
- Small teams with modern technology stack
- Cloud-native infrastructure
- Automated from inception
- DevOps/Platform engineering culture
- Fast iteration and experimentation

**Security Approach**:
Enable security through modern tooling and self-service capabilities

**Strategic Focus**:
Use technology advantages while building organizational scale

**Typical Organizations**:
- Modern startups (post-Series A)
- Cloud-native SaaS companies
- Platform teams in larger organizations

!!! example "Studio in Action"
    A 15-person SaaS startup running on AWS with full CI/CD automation, infrastructure-as-code, and comprehensive observability. They can implement policy-as-code and automated security testing from day one.

### Lean (Complex + High Readiness)

**Characteristics**:
- Large-scale operations
- Sophisticated DevOps practices
- Comprehensive observability
- Enterprise processes
- Continuous learning culture

**Security Approach**:
Orchestrate enterprise security architecture with continuous learning

**Strategic Focus**:
Optimize security operations at enterprise scale while maintaining innovation

**Typical Organizations**:
- Cloud-native enterprises
- Modern financial services
- Advanced SaaS companies
- Tech giants

!!! example "Lean in Action"
    A 2,000-person organization with mature platform engineering, comprehensive automation, and sophisticated security orchestration. They build internal security platforms that enable hundreds of engineers.

### Craft (Simple + Low Readiness)

!!! note "Craft is a method, not a price tag"
    **Craft** here describes non-repeatable hand-work: snowflake-per-build, every deployment a little different. It names the *method* (low repeatability), not quality, premium positioning, or boutique branding. A Craft organization can do excellent security work; it just does it by hand each time.

**Characteristics**:
- Small-scale operations
- Legacy systems
- Manual processes
- Limited automation
- Constrained resources

**Security Approach**:
Focus on operational readiness foundations while managing essential security controls

**Strategic Focus**:
Build operational capabilities while maintaining security coverage

**Typical Organizations**:
- Early-stage startups
- Small businesses
- Non-tech companies with limited IT
- Organizations in regulated industries with legacy systems

!!! example "Craft in Action"
    A 20-person company with legacy infrastructure, manual deployments, and limited security tooling. They focus on basic security hygiene and gradual automation while managing business growth.

### Mass (Complex + Low Readiness)

**Characteristics**:
- Large scale with legacy constraints
- Technical debt
- Mixed manual/automated processes
- Organizational complexity
- Transformation in progress

**Security Approach**:
Pragmatic security within constraints while enabling gradual modernization

**Strategic Focus**:
Balance current operational demands with strategic modernization investments

**Typical Organizations**:
- Traditional enterprises undergoing digital transformation
- Financial institutions with legacy infrastructure
- Healthcare organizations
- Government agencies

!!! example "Mass in Action"
    A 5,000-person enterprise with 20+ year-old systems, mixed infrastructure (on-prem + cloud), and security teams managing both legacy and modern systems. They implement hybrid security approaches while gradually modernizing.

## Assessing Your Position

Use these questions to determine your organization's position:

### Operational Complexity Assessment

| Question | Simple | Complex |
|----------|--------|---------|
| How many teams/organizations? | 1-3 teams | 10+ teams |
| Process sophistication? | Basic workflows | Enterprise processes |
| Compliance scope? | Single jurisdiction | Multi-jurisdictional |
| Service interdependencies? | Few/simple | Extensive/complex |
| Decision-making? | Centralized | Distributed |

### Operational Readiness Assessment

| Question | Lower Readiness | Higher Readiness |
|----------|----------------|-----------------|
| Deployment process? | Manual | Fully automated |
| Infrastructure? | Legacy/on-prem | Cloud-native/hybrid |
| Documentation? | Tribal knowledge | Comprehensive docs |
| Observability? | Limited/reactive | Comprehensive/proactive |
| Change velocity? | Weeks/months | Hours/days |

## Why This Matters for Security

Position is a sequencing and funding diagnostic, not an architecture one. It does not decide whether you adopt the containment floor; every quadrant owes the same one. It decides how fast you reach it and what you fund first. Within that, your position determines:

1. **Funding order**: Which security investments to make first, and which to defer
2. **Rollout pace**: How fast you can stand up capabilities without outrunning the organization
3. **Timeline expectations**: How long transformation realistically takes
4. **Mechanism fit**: Which implementation meets the containment floor at your scale
5. **Success metrics**: What good looks like at your stage

!!! warning "Common Mistake"
    Implementing Lean-level security programs in a Mass or Craft organization often leads to:
    - Failed tooling implementations
    - Frustrated security and development teams
    - Wasted budget on capabilities you never put to use
    - Security becoming a bottleneck instead of enabler

## Strategic Movement Paths

Most organizations benefit from moving toward the Lean position, but the path depends on your starting point:

### Movement Strategies

| Current Position | Optimal Path | Primary Investments | Timeline | Success Factors |
|-----------------|--------------|-------------------|----------|----------------|
| **Craft → Studio** | Infrastructure modernization | Cloud platforms, DevOps toolchains, security automation | 12-18 months | High (single axis movement) |
| **Craft → Mass** | Complexity scaling | Team expansion, process sophistication, compliance capabilities | 18-24 months | Moderate (scaling without readiness) |
| **Studio → Lean** | Complexity scaling | Enterprise platforms, governance, multi-team coordination | 24-36 months | High (readiness enables scaling) |
| **Mass → Lean** | Modernization while scaling | Hybrid solutions, change management, technical debt remediation | 36-48 months | Moderate (dual transformation) |
| **Mass → Craft** | Simplification | System consolidation, technical debt reduction, process streamlining | 18-30 months | Low (major organizational change required) |

!!! tip "Executive Insight"
    The Mass → Lean path is the most common but also the most challenging. It requires simultaneous modernization and scaling, transforming operations while maintaining business continuity.

## Using Position to Guide Security Strategy

The lists below are not four security architectures. They are four sequences toward the same containment, each with tooling fit to its scale. Every quadrant owes deny-by-default limits on the authority review cannot police at scale; what changes below is the order of investment and the tooling that fits the operational reality. Each list is a funding order for your scale, not the security you end up with.

**For Studio**:
- Use cloud-native security services
- Implement policy-as-code from inception
- Build security into platform capabilities
- Enable developer self-service

**For Lean**:
- Orchestrate enterprise security architecture
- Build internal security platforms
- Optimize at scale with automation
- Continuous security improvement programs

**For Craft**:
- Focus on foundational security controls
- Manual but systematic approaches
- Gradual capability building
- Use managed security services

**For Mass**:
- Pragmatic hybrid security approaches
- Risk-based prioritization (critical systems first)
- Incremental modernization
- Balance legacy and modern security controls

---

## Next Steps

Now that you understand strategic positioning, explore the specific characteristics and recommended approaches for each position:

[:octicons-arrow-right-24: Explore Strategic Positions in Detail](strategic-positions.md){ .md-button .md-button--primary }
[:octicons-arrow-right-24: Learn About Movement Paths](movement-paths.md){ .md-button }

---

!!! info "Naming note (v0.5 → v0.6)"
    These four positions were named Visionaries, Leaders, Niche Players, and Challengers in v0.5. They are now **Studio, Lean, Craft, and Mass**. See the [quadrant rename mapping](../appendix/quadrant-rename-v06.md) for the full crosswalk and the reasoning behind the change.

---

[:octicons-arrow-left-24: Back to Universal Stewardship](../02-stewardship/overview.md){ .md-button }
