# Implementation Guide: Craft

!!! note "Craft is a method, not a price tag"
    **Craft** names a method: non-repeatable hand-work, a snowflake per build. It is not a statement about quality, premium positioning, or boutique branding. A Craft organization can do excellent security work; it just does it by hand each time, which is exactly the low-readiness condition this guide addresses.

## Position Characteristics

**Craft** organizations occupy the Simple + Low Readiness quadrant:

- **Simple operational complexity** (typically <50 engineers, single product/service)
- **Legacy or basic infrastructure** (manual processes, limited automation)
- **Resource constraints** (small teams, limited budget)
- **Pragmatic focus** (solving immediate problems, not building for scale)
- **Critical decision point** (modernize strategically or stay intentionally simple)

## Strategic Priorities

### 1. Determine Your Strategic Path

The most important decision: intentional simplicity or prepare for growth?

**Option A: Intentional Simplicity (Remain Craft)**
- Small team, focused product, sustainable operations
- Security through simplicity (small attack surface)
- Selective modernization only where it reduces operational burden
- Appropriate for: Lifestyle businesses, internal tools, specialized services

**Option B: Prepare for Growth (Move toward Studio)**
- Anticipate operational growth
- Invest in infrastructure modernization now
- Build foundations that will scale
- Appropriate for: Funded startups, expanding services, growth trajectory

**Critical**: Choose intentionally. Don't accidentally drift into wrong model.

### 2. Security Through Simplicity

Your advantage is small scale. Use it.

**Investment Focus**:
- Managed security services (SaaS over self-hosted)
- Secure defaults over complex configuration
- Cloud provider security features (don't build your own)
- Essential security only (supply chain, patching, basic monitoring)

**Avoid**:
- Building complex security infrastructure
- Manual processes that don't scale (if growth expected)
- Premature optimization
- Enterprise security frameworks designed for complexity

### 3. Strategic Modernization Choices

If preparing for growth, modernize strategically to build Studio foundations.

**Investment Focus**:
- Cloud migration (if still on-premises)
- CI/CD basics (automated deployment)
- Infrastructure-as-code foundations
- Automated security scanning (managed services)

**Avoid**:
- "Lift and shift" cloud migration (recreating legacy in cloud)
- Over-engineering for hypothetical scale
- Modernization without clear business value
- Modernization debt (half-finished migrations)

## Quick Start Checklist

### Week 1: Strategic Decision
- [ ] Determine strategic path: Intentional simplicity or prepare for growth?
- [ ] Assess current security posture against critical risks
- [ ] Identify biggest security pain points
- [ ] Define realistic security goals given resources

### Month 1: Essential Security
- [ ] Implement automated dependency scanning (managed service)
- [ ] Establish basic vulnerability patching process
- [ ] Deploy managed security monitoring (cloud provider features)
- [ ] Document critical systems and dependencies

### Quarter 1: Foundation (If Preparing for Growth)
- [ ] Begin cloud migration planning (if on-premises)
- [ ] Implement basic CI/CD pipeline
- [ ] Establish infrastructure-as-code for new systems
- [ ] Deploy automated security scanning in CI/CD

### Quarter 2: Modernization (If Preparing for Growth)
- [ ] Complete cloud migration for priority systems
- [ ] Expand automation to cover deployment process
- [ ] Implement security guardrails in infrastructure
- [ ] Begin tracking operational readiness metrics

## Investment Roadmap

### Path A: Intentional Simplicity (Remain Craft)

**Year 1 Focus**:
- Maintain essential security through managed services (80% effort)
- Selective modernization only where it reduces burden (20% effort)

**Security Approach**:
- Managed security services (SaaS tools, cloud provider features)
- Supply chain security (dependency scanning, SBOM)
- Basic vulnerability management (automated patching)
- Essential monitoring (security logs, basic alerting)

**Expected Outcomes**:
- Appropriate security without operational burden
- Low total cost of ownership
- Sustainable operations at current scale

### Path B: Prepare for Growth (Move toward Studio)

**Year 1: Infrastructure Modernization** (70% effort on modernization)
- Cloud migration (if on-premises)
- CI/CD automation
- Infrastructure-as-code
- Automated security in pipeline

**Year 2: Security Automation** (50% modernization, 50% security automation)
- Expanded security scanning
- Security guardrails in infrastructure
- Self-service secure templates
- Monitoring and response capabilities

**Expected Outcomes**:
- **Studio quadrant positioning** after 18-24 months
- Security embedded in modern infrastructure
- Ready to scale with business growth
- Avoided technical debt from premature scaling

## Common Pitfalls

### Accidental Path Drift
**Risk**: Unintentionally growing complexity without increasing readiness

**Symptoms**:
- Adding features without modernizing infrastructure
- Team growing but still manual processes
- Increasing operational burden without automation
- "Technical debt" accumulating

**Solution**: Make intentional strategic choice and revisit quarterly

### Premature Optimization
**Risk**: Building for scale you may never reach

**Symptoms**:
- Complex security infrastructure for 10-person team
- Self-hosting tools that could be SaaS
- Extensive automation for rare scenarios
- More time on security infrastructure than product

**Solution**: Security should be appropriate to scale and risk

### Wrong Modernization Sequence
**Risk**: Modernizing in wrong order creates more problems

**Symptoms**:
- Lift-and-shift cloud migration (legacy architecture in cloud)
- Adding automation to broken processes
- Infrastructure-as-code for unstable architecture
- Security tools before foundational security

**Solution**: Modernize infrastructure foundations first, then add security

### Resource Exhaustion
**Risk**: Attempting Studio/Lean approaches with Craft resources

**Symptoms**:
- Security team overwhelmed trying to build platforms
- Half-finished modernization projects
- Burnout from unsustainable manual work
- Critical systems neglected for aspirational projects

**Solution**: Right-size security investments to actual resources

## Success Indicators

### Path A: Intentional Simplicity

**6 Months**:
- [ ] **Essential security implemented** (dependency scanning, patching, basic monitoring)
- [ ] **Managed services handling 80%+ of security** (minimal operational burden)
- [ ] **Security incidents responded to within 24 hours**
- [ ] **Sustainable security operations** (not requiring heroic effort)

**12 Months**:
- [ ] **Zero critical vulnerabilities in production** (through automated scanning and patching)
- [ ] **Security integrated into development workflow** (not separate process)
- [ ] **Quarterly security reviews** (confirming approach still appropriate)
- [ ] **Team satisfaction with security approach** (not excessive burden)

### Path B: Prepare for Growth

**6 Months**:
- [ ] **Cloud migration plan finalized** (if applicable) or **basic CI/CD operational**
- [ ] **Automated security scanning deployed**
- [ ] **Infrastructure-as-code for 30%+ of systems**
- [ ] **Operational readiness metrics tracked**

**12 Months**:
- [ ] **Cloud migration 80% complete** (if applicable)
- [ ] **CI/CD automation covering all deployments**
- [ ] **Infrastructure-as-code for 70%+ of systems**
- [ ] **Security embedded in deployment pipeline**

**18-24 Months**:
- [ ] **Studio quadrant positioning achieved**
- [ ] **Security automation at Studio level** (see Studio guide)
- [ ] **Ready to scale** with business growth
- [ ] **Technical debt minimal**

## Movement Paths

### Staying Intentionally Simple (Maintain Craft)
This is a valid, sustainable choice for many organizations:

**When Appropriate**:
- Stable team size (<20 people)
- Single focused product/service
- Not venture-funded or seeking rapid growth
- Strong product-market fit at current scale

**Strategy**:
- Use managed services for security
- Security through simplicity (small attack surface)
- Quarterly reassessment of strategic choice
- Prepared to pivot if growth trajectory changes

**Timeline**: Ongoing; sustainable at this scale

### Moving to Studio (Simple + High Readiness)
Preparing infrastructure for growth:

**Strategy**: Single-axis movement (increase operational readiness)

**Key Investments**:
- Cloud infrastructure (if not already cloud-native)
- CI/CD automation
- Infrastructure-as-code
- Automated security scanning

**Timeline**: 18-24 months for complete transformation

**Success Probability**: High (single-axis movement is achievable)

**Critical Success Factors**:
- Clear business case for modernization
- Adequate resources (time, money, expertise)
- Avoid half-finished modernization
- Security embedded during modernization (not bolted on after)

### Risk: Accidental Drift to Mass
Growing complexity without increasing readiness:

**Warning Signs**:
- Team growing but processes still manual
- Multiple products but no platform thinking
- Increasing operational burden without automation
- Security becoming bottleneck

**Prevention**:
- Intentional strategic choice reviewed quarterly
- If growing complexity, invest in operational readiness
- If not investing in readiness, constrain complexity
- Never accidentally drift between quadrants

---

## Decision Framework

Use this to determine your strategic path:

| Question | Intentional Simplicity | Prepare for Growth |
|----------|----------------------|-------------------|
| Expected team growth? | Stable (<20) | Growing (20-200+) |
| Funding model? | Sustainable revenue | Venture-funded |
| Product strategy? | Single focused product | Platform/multiple products |
| Market position? | Craft/specialized | Expansion/growth |
| Risk tolerance? | Conservative | Growth-oriented |
| Infrastructure age? | Legacy OK if working | Must modernize |

---

## Next Steps

[:octicons-arrow-right-24: Continue to Mass Implementation](mass.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Lean Implementation](lean.md){ .md-button }

[:octicons-arrow-right-24: Edit this page](https://gitlab.com/juliedavila/software-factory-security-framework/-/edit/master/docs/06-implementation/craft.md){ .md-button }
