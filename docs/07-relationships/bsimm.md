# SF² and BSIMM Integration

## Framework Overview

**BSIMM (Building Security In Maturity Model)**

- **Focus**: Security activity measurement and benchmarking
- **Website**: https://www.bsimm.com/
- **Purpose**: Describe what real organizations actually do for software security

## Relationship to SF²

**BSIMM** describes **128 security activities** that organizations perform, organized into 12 practices across 4 domains (as of [BSIMM16](https://www.bsimm.com/), 2026).

**SF²** helps determine **which BSIMM activities to implement** and **in what sequence** based on your organizational positioning and investment strategy.

BSIMM is a descriptive census of what programs already do. SF² sequences a practice baseline, and that census is one snapshot of it rather than a fixed target. As that baseline broadens toward attestation and capability standards, SF²'s role holds: it turns the census into priorities for your context, and it aims them at limiting what the system can do.

New to SF²? This page maps BSIMM onto SF²'s strategic model, which leans on a few SF² terms. SF² positions an organization on two axes: **Blast Radius** (how far a failure could reach if containment fails, set by the authority you have granted your automation and agents, not by headcount) and **Operational Readiness** (how repeatably you operate and how well you can prove a failure stays contained). The two axes form four positions: **Studio** (small reach, higher readiness), **Lean** (large reach, higher readiness), **Craft** (small reach, lower readiness), and **Mass** (large reach, lower readiness); see [Positioning](../03-positioning/two-axis-model.md). **BAU** (business as usual) is the recurring manual security work you constrain to free capacity for scaling investments. **Contextual modifiers** are the eight situational factors that tune the strategy ([Context](../05-context/overview.md)); **stewardship areas** are the five universal priorities every organization owes regardless of position, led by [Supply Chain](../02-stewardship/supply-chain.md).

## Key Insight

**BSIMM is descriptive, not prescriptive.** It shows what organizations do, not what they should do.

SF² provides the strategic framework to:

- Prioritize BSIMM activities based on your quadrant position
- Sequence BSIMM activity implementation based on investment strategy
- Determine which BSIMM activities to skip entirely
- Identify when BSIMM activities should be automated vs manual

## BSIMM Domains and Practices

BSIMM organizes these activities into 4 domains:

### Governance
- Strategy & Metrics (SM)
- Compliance & Policy (CP)
- Training (T)

### Intelligence
- Attack Models (AM)
- Security Features & Design (SFD)
- Standards & Requirements (SR)

### SSDL Touchpoints
- Architecture Analysis (AA)
- Code Review (CR)
- Security Testing (ST)

### Deployment
- Penetration Testing (PT)
- Software Environment (SE)
- Configuration Management & Vulnerability Management (CMVM)

## SF² Investment Strategy and BSIMM

### Studio (Small reach + High Readiness)

**BSIMM Activity Selection**: Automation-friendly activities that scale

**Priority BSIMM Activities**:

1. **CMVM** (Configuration Management & Vulnerability Management)
   - Automated dependency scanning
   - Automated vulnerability remediation
   - Supply chain security automation
2. **ST** (Security Testing)
   - Automated SAST/DAST in CI/CD
   - Security test automation
3. **SE** (Software Environment)
   - Automated secure build
   - Infrastructure-as-code security
4. **SFD** (Security Features & Design)
   - Secure templates and paved roads
   - Automated security patterns

**Skip or Minimize**:

- Manual architecture analysis (AA)
- Manual code review (CR)
- Extensive governance documentation (CP)
- Time-intensive training programs (T) - prefer self-service documentation

**Implementation Approach**: Automate BSIMM activities from the start

### Lean (Large reach + High Readiness)

**BSIMM Activity Selection**: Comprehensive coverage with platform effects

**Priority BSIMM Activities**:

1. **All 12 practices** with high activity coverage
2. **Platform-scale implementation** of BSIMM activities
3. **Advanced (BSIMM level-3) activities** appropriate for complexity
4. **Federated execution** of BSIMM activities (security champions, guilds)

**Optimization Focus**:

- Automate evidence collection for BSIMM activities
- Platform capabilities enabling BSIMM activities org-wide
- Eliminate low-value BSIMM activities (even if industry performs them)
- Industry leadership in select BSIMM practices

**Implementation Approach**: Comprehensive BSIMM with efficiency focus

### Craft (Small reach + Low Readiness)

**BSIMM Activity Selection**: Essential activities only

**Priority BSIMM Activities**:

1. **CMVM** (Configuration Management & Vulnerability Management)
   - Basic dependency scanning
   - Vulnerability patching process
2. **SR** (Standards & Requirements)
   - Essential security requirements
3. **ST** (Security Testing)
   - Basic security testing
4. **SE** (Software Environment)
   - Essential build security

**Skip Entirely**:

- Advanced governance activities (SM, CP)
- Sophisticated attack modeling (AM)
- Manual architecture analysis (AA)
- Manual code review (CR)
- Penetration testing (PT) - not cost-effective at this scale

**Implementation Approach**: Minimal BSIMM coverage, managed services where possible

### Mass (Large reach + Low Readiness)

**BSIMM Activity Selection**: Hybrid (comprehensive for new, essential for legacy)

**Priority BSIMM Activities by System**:

**New/Modern Systems**:

- Full BSIMM practice coverage
- Automated implementation where possible
- Build Lean-level capabilities for future

**Legacy Systems**:

- CMVM (vulnerability management) only
- Essential security testing (ST)
- Risk-based approach (not comprehensive)

**Skip for Legacy**:

- Architecture analysis (AA) - legacy is what it is
- Code review (CR) - not changing legacy code significantly
- Sophisticated attack modeling (AM) - pragmatic risk assessment only

**Implementation Approach**: Build comprehensive BSIMM for new systems over 3-5 years

## BSIMM Activity Prioritization Framework

### High-Value Activities (Implement First)

These BSIMM activities provide highest ROI across all quadrants:

1. **CMVM** - Supply chain security and vulnerability management
   - Highest risk area (Supply Chain #1 priority)
   - Automatable at all scales
   - Clear business value

2. **ST** - Automated security testing
   - Scales with automation
   - Catches issues early (cheaper to fix)
   - Reduces manual review burden

3. **SE** - Secure build environment
   - Foundation for other activities
   - Prevents supply chain attacks
   - Enables automation

### Moderate-Value Activities (Implement Selectively)

These BSIMM activities have value but require careful sequencing:

4. **SFD** - Security features and design
   - High value for Studio (secure templates)
   - Moderate value for others

5. **SR** - Standards and requirements
   - Essential for regulated environments
   - Lower priority otherwise

6. **SM** - Strategy and metrics
   - Critical for Lean (optimization)
   - Basic for Studio
   - Minimal for Craft

### Lower-Value Activities (Implement Last or Skip)

These BSIMM activities often don't justify their cost:

7. **AA** - Architecture analysis
   - Manual and doesn't scale
   - Consider skipping for automation instead

8. **CR** - Code review
   - Manual and expensive
   - Consider automated alternatives (SAST)

9. **T** - Training programs
   - Extensive training doesn't scale
   - Consider self-service documentation instead

10. **PT** - Penetration testing
    - Expensive and point-in-time
    - Consider continuous automated testing instead

## Contextual Modifiers and BSIMM

### High Attack Landscape Maturity
**Impact**: Prioritizes defensive BSIMM activities

- **CMVM** becomes top priority (automated vulnerability management)
- **ST** must be automated (manual testing too slow)
- **PT** less valuable (adversaries find issues faster than annual pentests)

### High Regulatory Constraints
**Impact**: Forces governance BSIMM activities

- **CP** (Compliance & Policy) becomes mandatory
- **SM** (Strategy & Metrics) needed for evidence
- **T** (Training) required for compliance
- May require activities that don't reduce actual risk

### Low Relationship Health
**Impact**: Limits collaborative BSIMM activities

- **AA, CR, PT** difficult (require engineering cooperation)
- Must focus on automated activities (CMVM, ST, SE)
- Relationship building becomes prerequisite for manual BSIMM activities

## Practical Integration Example

The example below is a composite illustration, not a case study. The numbers and timelines show the shape of an outcome, not measured results.

### Scenario: Mass Position Enterprise

**Current State**:

- Attempting comprehensive BSIMM implementation
- Following industry BSIMM scores
- Overwhelming security team with 128 activities

**Traditional BSIMM Approach**:

- Implement all activities where industry shows high adoption
- Progress through BSIMM levels systematically
- Benchmark against similar organizations

**SF²-Informed Approach**:

**Year 1: Stabilization**

- **CMVM** automation (Supply Chain #1)
- **SE** for new systems (secure build)
- **Basic ST** (automated security testing)
- **Skip**: AA, CR, PT, extensive T programs

**Year 2-3: Hybrid Build-out**

- **New systems**: Comprehensive BSIMM (automation-focused)
- **Legacy**: CMVM only (vulnerability management)
- **Relationship building**: Enable collaborative activities (AA, CR) over time

**Year 4-5: Comprehensive Coverage**

- **Full BSIMM** for modernized systems
- **Retire legacy** activities as systems sunset
- **Optimize**: Eliminate low-value activities

**Outcome**: Achievable BSIMM implementation aligned with transformation timeline

## BSIMM Activity Decision Matrix

| Your SF² Position | BSIMM Activity Count | Implementation Focus | Automation Level |
|------------------|---------------------|---------------------|------------------|
| **Studio** | 30-40 activities | Automation-friendly activities | Very high |
| **Lean** | 60-80 activities | Comprehensive with efficiency | High |
| **Craft** | 15-25 activities | Essential only | Managed services |
| **Mass** | 30-40 (new systems only) | Hybrid approach | Mixed |

**Note**: These are guidelines, not targets. More BSIMM activities doesn't necessarily mean better security.

## Key Takeaways

**Use BSIMM for**:

- Comprehensive catalog of security activities
- Understanding what other organizations do
- Benchmarking your security program
- Identifying potential activity gaps

**Use SF² for**:

- Prioritizing which BSIMM activities to implement
- Sequencing BSIMM activity adoption
- Determining automation vs manual implementation
- Deciding which BSIMM activities to skip entirely

**Together**:

- BSIMM provides the activity catalog
- SF² provides the strategic prioritization framework
- Result: Focused security program aligned with organizational reality

**Critical Insight**: **More BSIMM activities doesn't equal better security.** SF² helps you implement the right BSIMM activities for your organization, not the most activities.

---

## Next Steps

[:octicons-arrow-right-24: Continue to OWASP ASVS Relationship](owasp-asvs.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to OWASP SAMM Relationship](owasp-samm.md){ .md-button }

[:octicons-arrow-right-24: Edit this page](https://gitlab.com/juliedavila/software-factory-security-framework/-/edit/master/docs/07-relationships/bsimm.md){ .md-button }
