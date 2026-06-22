# SF² and NIST SSDF Integration

## Framework Overview

**NIST SSDF (Secure Software Development Framework)**
- **Focus**: Secure development lifecycle practices
- **Website**: https://csrc.nist.gov/Projects/ssdf
- **Purpose**: High-level guidance for integrating security into software development

## Relationship to SF²

**NIST SSDF** tells you **WHAT** security practices to implement in your software development lifecycle.

**SF²** tells you **HOW** to sustainably resource and scale those practices based on your organizational position.

SF² sequences a practice baseline, and SSDF's practice groups are one expression of that baseline, not a fixed endpoint. The baseline keeps broadening toward attestation standards for agent-built software. Through all of it, SF²'s role holds: it decides which practices to fund first for your context, and it keeps the work pointed at bounding what the system can do.

## Integration Approach

### SSDF Provides the Practices

NIST SSDF defines four practice groups:
1. **Prepare the Organization (PO)** - Organizational security culture and training
2. **Protect the Software (PS)** - Development and build security
3. **Produce Well-Secured Software (PW)** - Secure design and coding
4. **Respond to Vulnerabilities (RV)** - Vulnerability management and response

### SF² Provides the Implementation Strategy

SF² helps you:
- **Determine which SSDF practices to implement first** based on your quadrant position
- **Choose between manual and automated implementation** based on operational readiness
- **Sequence SSDF practice adoption** to avoid overwhelming your organization
- **Scale SSDF practices sustainably** without linear growth in security headcount

## Implementation by Quadrant

### Studio (Small reach + High Readiness)

**SSDF Implementation Approach**: Automated from the start

**Priority SSDF Practices**:
1. **PS (Protect the Software)** - Automated build security, supply chain verification
2. **PW (Produce Well-Secured Software)** - Automated security testing, secure templates
3. **RV (Respond to Vulnerabilities)** - Automated dependency scanning and patching
4. **PO (Prepare the Organization)** - Self-service security documentation

**Implementation Strategy**:
- Automate SSDF practices in CI/CD pipeline from inception
- Policy-as-code for SSDF requirements
- Self-service SSDF capabilities (developers implement without security review)
- Metrics on SSDF practice adoption and effectiveness

**Timeline**: 6-12 months for comprehensive automated SSDF implementation

### Lean (Large reach + High Readiness)

**SSDF Implementation Approach**: Platform-scale automation

**Priority SSDF Practices**:
1. **All SSDF practices** at organizational scale with platform effects
2. **Advanced automation** for complex SSDF requirements
3. **Federated SSDF ownership** (security champions, guild structure)
4. **Continuous SSDF improvement** based on metrics

**Implementation Strategy**:
- SSDF practices embedded in internal platforms
- Automated evidence collection for SSDF compliance
- Organization-wide SSDF metrics and optimization
- Industry leadership in SSDF practice innovation

**Timeline**: Ongoing optimization of established SSDF capabilities

### Craft (Small reach + Low Readiness)

**SSDF Implementation Approach**: Essential practices, pragmatic implementation

**Priority SSDF Practices**:
1. **RV (Respond to Vulnerabilities)** - Basic vulnerability management (highest risk)
2. **PS (Protect the Software)** - Essential build security (supply chain #1 priority)
3. **PW (Produce Well-Secured Software)** - Secure coding guidelines
4. **PO (Prepare the Organization)** - Basic security awareness

**Implementation Strategy**:
- Focus on highest-risk SSDF practices first
- Use managed services for SSDF capabilities where possible
- Manual implementation acceptable at current scale
- Avoid over-implementing SSDF practices beyond actual risk

**Timeline**: 6-12 months for essential SSDF practices

### Mass (Large reach + Low Readiness)

**SSDF Implementation Approach**: Hybrid (automated for new, pragmatic for legacy)

**Priority SSDF Practices**:
1. **RV (Respond to Vulnerabilities)** - Vulnerability management across complex systems
2. **PS (Protect the Software)** - Build security for active development
3. **Automated SSDF for new systems** - Break legacy patterns
4. **Pragmatic SSDF for legacy** - Risk-based implementation

**Implementation Strategy**:
- Implement automated SSDF for new/modernizing systems
- Risk-based SSDF for legacy systems (not full implementation)
- Gradual SSDF improvement as systems modernize
- Avoid attempting comprehensive SSDF across all systems simultaneously

**Timeline**: 3-5 years for comprehensive SSDF as systems modernize

## Contextual Modifiers and SSDF

### High Attack Landscape Maturity
**Impact**: Accelerates SSDF RV (Respond to Vulnerabilities) priority
- Automated vulnerability scanning becomes critical
- Supply chain security (PS) moves to top priority
- Manual response processes become existential vulnerability

### High Regulatory Constraints
**Impact**: Requires SSDF practice documentation and evidence
- Automated evidence collection essential
- SSDF compliance reporting becomes significant BAU burden
- May require comprehensive SSDF implementation regardless of risk

### Crisis Events
**Impact**: Creates window for rapid SSDF adoption
- Use incident as catalyst for automated SSDF implementation
- "Never waste a good crisis" for securing SSDF resources
- Demonstrates clear ROI for SSDF investment

## Practical Integration Example

### Scenario: Series B Startup (Studio Position)

**Current State**:
- Manual security reviews blocking releases
- Basic SSDF practices implemented manually
- Growing too fast for manual SSDF

**SF² Guidance**:
1. **Assess Position**: Studio (Small reach + High Readiness)
2. **Identify Scaling Crisis**: Manual SSDF practices not sustainable
3. **Constrain BAU**: Manual security reviews for novel architectures only
4. **Scaling Investment**: Automate SSDF practices in CI/CD

**SSDF Implementation**:
- **PS (Protect Software)**: Automated build security, supply chain scanning
- **PW (Produce Secured Software)**: Automated SAST/DAST, secure templates
- **RV (Respond to Vulnerabilities)**: Automated dependency scanning, patch automation
- **PO (Prepare Organization)**: Self-service security documentation

**Outcome**: SSDF practices fully automated, security reviews reduced 70%

## Key Takeaways

**Use NIST SSDF for**:
- Comprehensive security practice catalog
- Practice descriptions and outcomes
- Regulatory compliance requirements
- Industry standard terminology

**Use SF² for**:
- Determining which SSDF practices to implement first
- Choosing implementation approach (manual vs automated)
- Sequencing SSDF adoption based on your position
- Scaling SSDF sustainably without linear headcount growth

**Together**:
- SSDF provides the practices
- SF² provides the sustainable implementation strategy
- Result: Effective security practices at appropriate scale

---

## Next Steps

[:octicons-arrow-right-24: Continue to OWASP SAMM Relationship](owasp-samm.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Implementation Guides](../06-implementation/mass.md){ .md-button }

[:octicons-arrow-right-24: Edit this page](https://gitlab.com/juliedavila/software-factory-security-framework/-/edit/master/docs/07-relationships/nist-ssdf.md){ .md-button }
