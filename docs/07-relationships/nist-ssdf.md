# SF² and NIST SSDF Integration

## Framework Overview

**NIST SSDF (Secure Software Development Framework)**
- **Focus**: Secure development lifecycle practices
- **Website**: https://csrc.nist.gov/Projects/ssdf
- **Purpose**: High-level guidance for integrating security into software development

## Relationship to SF²

**NIST SSDF** tells you **WHAT** security practices to implement in your software development lifecycle.

**SF²** tells you **HOW** to sustainably resource and scale those practices based on your organizational position.

SF² sequences a practice baseline, and SSDF's practice groups are one expression of that baseline, not a fixed endpoint. As that baseline broadens toward attestation standards for agent-built software, SF²'s role holds: it decides which practices to fund first for your context, and it keeps the work pointed at bounding what the system can do.

<figure>
  <svg viewBox="0 0 720 500" role="img" aria-labelledby="sf2-ov-title sf2-ov-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:720px;width:100%;height:auto;font-family:inherit;">
    <title id="sf2-ov-title">SF² as a strategic overlay on other security frameworks</title>
    <desc id="sf2-ov-desc">Two layers. The bottom layer is the practices and requirements provided by other frameworks: NIST SSDF, OWASP SAMM, BSIMM, and OWASP ASVS. They tell you what to implement. The top layer is SF², the strategic overlay, which sequences those practices: which to fund first, when, and how fast, for your strategic position. SF² does not replace the other frameworks. It orders them. Integration, not competition.</desc>
    <defs>
      <marker id="ov-arrow" markerWidth="11" markerHeight="11" refX="7.5" refY="5" orient="auto"><path d="M1 1 L9 5 L1 9 Z" fill="#2C4A6B"/></marker>
    </defs>
    <rect x="0" y="0" width="720" height="500" fill="#FAFAF7"/>
    <!-- SF2 overlay (top) -->
    <rect x="60" y="50" width="600" height="120" rx="8" fill="#2C4A6B" stroke="#21384F" stroke-width="2"/>
    <text x="360" y="84" font-size="19" font-weight="700" fill="#FFFFFF" text-anchor="middle">SF&#178;: the strategic overlay</text>
    <text x="360" y="110" font-size="13" fill="#EAF1F7" text-anchor="middle">the sequencing: which practices to fund first &#183; when &#183; how fast</text>
    <text x="360" y="132" font-size="13" fill="#EAF1F7" text-anchor="middle">for your strategic position (Studio / Lean / Craft / Mass)</text>
    <text x="360" y="154" font-size="12" font-style="italic" fill="#C9D8E6" text-anchor="middle">prioritization, sustainability, sequencing</text>
    <!-- connector -->
    <line x1="360" y1="172" x2="360" y2="232" stroke="#2C4A6B" stroke-width="2.2" marker-end="url(#ov-arrow)"/>
    <text x="372" y="206" font-size="11.5" font-style="italic" fill="#2C4A6B">orders and paces</text>
    <!-- practices base layer (bottom) -->
    <text x="360" y="262" font-size="13" font-weight="700" fill="#855A00" text-anchor="middle">Other frameworks: the practices and requirements (the WHAT)</text>
    <g>
      <rect x="60" y="280" width="138" height="92" rx="6" fill="#FCF4E6" stroke="#B8956A" stroke-width="1.5"/>
      <text x="129" y="312" font-size="14" font-weight="700" fill="#2A2520" text-anchor="middle">NIST SSDF</text>
      <text x="129" y="334" font-size="10.5" fill="#2A2520" text-anchor="middle">secure-development</text>
      <text x="129" y="348" font-size="10.5" fill="#2A2520" text-anchor="middle">practice groups</text>
      <rect x="214" y="280" width="138" height="92" rx="6" fill="#FCF4E6" stroke="#B8956A" stroke-width="1.5"/>
      <text x="283" y="312" font-size="14" font-weight="700" fill="#2A2520" text-anchor="middle">OWASP SAMM</text>
      <text x="283" y="334" font-size="10.5" fill="#2A2520" text-anchor="middle">maturity model</text>
      <rect x="368" y="280" width="138" height="92" rx="6" fill="#FCF4E6" stroke="#B8956A" stroke-width="1.5"/>
      <text x="437" y="312" font-size="14" font-weight="700" fill="#2A2520" text-anchor="middle">BSIMM</text>
      <text x="437" y="334" font-size="10.5" fill="#2A2520" text-anchor="middle">observed practices</text>
      <rect x="522" y="280" width="138" height="92" rx="6" fill="#FCF4E6" stroke="#B8956A" stroke-width="1.5"/>
      <text x="591" y="312" font-size="14" font-weight="700" fill="#2A2520" text-anchor="middle">OWASP ASVS</text>
      <text x="591" y="334" font-size="10.5" fill="#2A2520" text-anchor="middle">verification reqs</text>
    </g>
    <!-- footer thesis -->
    <text x="360" y="420" font-size="13" fill="#2A2520" text-anchor="middle">They provide the practices. SF&#178; decides <tspan font-style="italic">which</tspan>, <tspan font-style="italic">when</tspan>, and <tspan font-style="italic">how fast</tspan> to implement them.</text>
    <text x="360" y="446" font-size="13" font-weight="700" fill="#2C4A6B" text-anchor="middle">Integration, not replacement.</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Other frameworks provide the practices. SF² is the strategic overlay that sequences them: which to fund first, when, and how fast. Integration, not replacement.</figcaption>
</figure>

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
