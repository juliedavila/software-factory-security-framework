# SF² and OWASP SAMM Integration

## Framework Overview

**OWASP SAMM (Software Assurance Maturity Model)**
- **Focus**: Security practice maturity progression
- **Website**: https://owaspsamm.org/
- **Purpose**: Assess and improve software security maturity through structured levels

## Relationship to SF²

**OWASP SAMM** defines **maturity levels** (0-3) for security practices across five business functions.

**SF²** helps determine **which maturity levels to pursue** and **how fast to progress** based on your organizational position and readiness.

SF² sequences a practice baseline, and SAMM's maturity levels are one expression of that baseline, not a ladder to climb for its own sake. As that baseline broadens toward capability and attestation standards, SF²'s role holds: it decides which levels are worth the investment for your context, and it sequences them toward containing what the system can do.

## Key Insight

**Not every organization should pursue SAMM Level 3 maturity in every practice.**

Your SF² quadrant position determines:
- Which SAMM practices warrant higher maturity investment
- Which practices can remain at lower maturity levels
- Speed of maturity progression appropriate for your organization
- Whether to pursue breadth (many practices at low maturity) or depth (few practices at high maturity)

## SAMM Business Functions

OWASP SAMM organizes security practices into five business functions:

1. **Governance** - Strategy, metrics, compliance, education
2. **Design** - Threat assessment, security requirements, architecture
3. **Implementation** - Secure build, deployment, defect management
4. **Verification** - Architecture assessment, requirements testing, security testing
5. **Operations** - Incident management, environment management, operational enablement

Each practice has maturity levels 0 (not performed) through 3 (optimized/strategic).

## SF² Maturity Strategy by Quadrant

### Studio (Small reach + High Readiness)

**SAMM Maturity Approach**: High maturity through automation

**Target Maturity Levels**:
- **Implementation**: Level 3 (fully automated secure build and deployment)
- **Verification**: Level 3 (automated security testing at scale)
- **Design**: Level 2 (automated threat modeling, security requirements)
- **Operations**: Level 2-3 (automated operational security)
- **Governance**: Level 2 (metrics-driven, appropriate documentation)

**Maturity Progression Speed**: **Fast** (12-18 months to target state)

**Strategy**: Automate practices to achieve high maturity quickly
- Skip manual maturity levels where possible
- Use automation to jump directly to Level 2-3 maturity
- Avoid building manual processes that won't scale

### Lean (Large reach + High Readiness)

**SAMM Maturity Approach**: Comprehensive high maturity across all functions

**Target Maturity Levels**:
- **All practices**: Level 2-3 (comprehensive maturity at organizational scale)
- **Strategic practices**: Level 3 with innovation beyond SAMM
- **Platform effects**: Capabilities serving multiple teams

**Maturity Progression Speed**: **Optimization focus** (not progression, but refinement)

**Strategy**: Maintain and optimize high maturity
- Continuous improvement of Level 3 practices
- Industry leadership in select practices
- Efficient maturity maintenance through platform effects
- Eliminate practices that don't reduce risk (even if mature)

### Craft (Small reach + Low Readiness)

**SAMM Maturity Approach**: Essential practices at appropriate maturity

**Target Maturity Levels**:
- **Implementation**: Level 1-2 (basic secure build, essential deployment security)
- **Verification**: Level 1 (basic security testing)
- **Operations**: Level 1 (essential incident response, basic monitoring)
- **Design**: Level 1 (security requirements for high-risk features)
- **Governance**: Level 1 (basic security awareness, minimal documentation)

**Maturity Progression Speed**: **Slow and selective** (focus on essentials)

**Strategy**: Appropriate maturity for scale and risk
- Level 1 maturity sufficient for many practices
- Invest in higher maturity only for highest-risk areas
- Avoid pursuing comprehensive SAMM maturity
- Use managed services to achieve maturity without building capability

### Mass (Large reach + Low Readiness)

**SAMM Maturity Approach**: Hybrid maturity (high for new, pragmatic for legacy)

**Target Maturity Levels by System Type**:

**New/Modern Systems**:
- **Implementation**: Level 2-3 (automated secure build and deployment)
- **Verification**: Level 2 (automated security testing)
- **Operations**: Level 2 (automated operational security)

**Legacy Systems**:
- **All practices**: Level 1 (basic coverage, risk-based)
- Accept lower maturity for systems being retired
- Avoid investing in high maturity for legacy

**Maturity Progression Speed**: **Very slow** (3-5 years to target state)

**Strategy**: Build high maturity for future while maintaining basics for legacy
- Pursue Level 2-3 maturity for new systems only
- Accept Level 0-1 maturity for legacy (pragmatic risk management)
- Gradual maturity improvement as systems modernize

## Contextual Modifiers and SAMM

### High Attack Landscape Maturity
**Impact**: Accelerates need for verification and operations maturity
- **Verification** practices must reach Level 2+ (automated security testing)
- **Operations** incident management becomes critical
- Manual security testing (Level 1) becomes existential vulnerability

### High Regulatory Constraints
**Impact**: Forces governance maturity regardless of risk
- **Governance** practices must reach Level 2 (documentation, metrics, evidence)
- Compliance evidence collection becomes significant burden
- May require maturity investments that don't align with risk

### Low Relationship Health
**Impact**: Slows maturity progression significantly
- Difficult to achieve Level 2+ maturity (requires collaboration)
- Must invest in relationship building before maturity progression
- Forced to rely on Level 1 controls (doesn't require engineering cooperation)

## Practical Integration Examples

### Example 1: Studio Pursuing SAMM Implementation Maturity

**Scenario**: Series B startup wants to improve secure build practices

**Traditional SAMM Approach** (Level progression):
1. **Level 1**: Manual security reviews before builds
2. **Level 2**: Security requirements documented and reviewed
3. **Level 3**: Automated security verification in build

**SF²-Informed Approach** (Skip to automation):
1. **Start with Level 3**: Implement automated security in CI/CD from the beginning
2. **Skip manual levels**: Don't build Level 1-2 manual processes
3. **Outcome**: Level 3 maturity achieved in 6 months vs 18+ months

### Example 2: Mass Pursuing SAMM Verification Maturity

**Scenario**: Large enterprise with mixed legacy and modern systems

**Traditional SAMM Approach** (Organization-wide):
- Attempt Level 2 verification maturity across all systems
- Requires significant investment in legacy system testing
- Likely to fail or stall

**SF²-Informed Approach** (Hybrid):
- **New systems**: Pursue Level 2-3 verification (automated testing)
- **Active legacy**: Level 1 verification (basic testing, risk-based)
- **Retiring legacy**: Level 0-1 (accept risk until retirement)
- **Outcome**: Achievable maturity with realistic resources

### Example 3: Lean Optimizing SAMM Governance

**Scenario**: Large tech company with Level 2 governance across the board

**Traditional SAMM Approach**:
- Pursue Level 3 governance for all practices

**SF²-Informed Approach** (Selective optimization):
- **Eliminate low-value governance** (even if mature)
- **Optimize high-value governance** to Level 3
- **Automate governance evidence** collection (platform effects)
- **Outcome**: Higher governance effectiveness with less effort

## SAMM Maturity Decision Matrix

| Your SF² Position | SAMM Breadth vs Depth | Target Maturity | Progression Speed |
|------------------|---------------------|----------------|------------------|
| **Studio** | Depth (high maturity in essential practices) | L2-3 for core | Fast (12-18 mo) |
| **Lean** | Comprehensive depth | L2-3 across board | Optimization |
| **Craft** | Breadth (basic coverage) | L1 sufficient | Slow (essentials only) |
| **Mass** | Hybrid (depth for new, breadth for legacy) | L0-1 legacy, L2-3 new | Very slow (3-5 yr) |

## Key Takeaways

**Use OWASP SAMM for**:
- Comprehensive security practice catalog
- Maturity level definitions and assessment
- Structured improvement roadmaps
- Industry benchmarking

**Use SF² for**:
- Determining which SAMM practices warrant investment
- Choosing target maturity levels based on position
- Sequencing maturity progression appropriately
- Avoiding "maturity for maturity's sake"

**Together**:
- SAMM provides the maturity framework
- SF² provides the strategic context for maturity investment
- Result: Appropriate maturity for your organizational reality

**Critical Insight**: **Level 3 maturity is not always the goal**. SF² helps you determine appropriate maturity levels based on organizational position, operational readiness, and actual risk.

---

## Next Steps

[:octicons-arrow-right-24: Continue to BSIMM Relationship](bsimm.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to NIST SSDF Relationship](nist-ssdf.md){ .md-button }

[:octicons-arrow-right-24: Edit this page](https://gitlab.com/juliedavila/software-factory-security-framework/-/edit/master/docs/07-relationships/owasp-samm.md){ .md-button }
