# Use Cases and Application Scenarios

## Applying SF² to Real-World Situations

This section demonstrates how to apply the Software Factory Security Framework to common organizational scenarios. Each use case shows how the framework's components work together to guide strategic decisions.

## Use Case 1: Scaling Crisis at Series B Startup

### Situation
A 50-person SaaS startup (Studio position) hits the scaling crisis: security reviews now take 2 weeks, blocking feature releases.

### Framework Application

**Strategic Position**: Studio (Simple + High Readiness)

**Contextual Modifiers**:
- High attack landscape maturity (SaaS target)
- Moderate supply chain complexity (standard dependencies)
- Strong relationship health (good dev-security collaboration)

**Investment Strategy**:
1. **Constrain BAU**: Reduce manual security reviews to critical features only
2. **Scaling Investment**: Implement automated security scanning + paved roads for common patterns
3. **Timeline**: 6-month implementation with 3x ROI expected

**Outcome**: Security reviews reduced from 2 weeks to 2 hours for standard patterns; manual reviews only for novel architectures.

---

## Use Case 2: Enterprise Undergoing Digital Transformation

### Situation
A 5,000-person financial services company (Mass position) needs to modernize security while maintaining compliance and managing legacy systems.

### Framework Application

**Strategic Position**: Mass (Complex + Low Readiness)

**Contextual Modifiers**:
- High regulatory constraints (financial services)
- Low change capacity (risk-averse culture)
- Moderate relationship health (improving)
- Recent crisis event (audit findings)

**Investment Strategy**:
1. **Use crisis window**: Apply audit findings for funding approval
2. **Hybrid approach**: Modern security for new systems, pragmatic controls for legacy
3. **Extended timeline**: 36-48 month transformation with phased rollout

**Outcome**: Gradual modernization with compliance maintained; crisis event created sustainable funding for transformation.

---

## Use Case 3: Supply Chain Attack Response

### Situation
A technology company discovers compromised dependencies used in production systems, triggering supply chain security overhaul.

### Framework Application

**Universal Stewardship Priority**: [Supply Chain #1](../02-stewardship/supply-chain.md) priority activated

**Contextual Modifiers**:
- High attack landscape maturity (automated supply chain attacks)
- Crisis event (compromised dependency)
- Complex supply chain (multi-tier dependencies)

**Response Strategy**:
1. **Immediate**: Contain and assess impact
2. **Short-term**: Implement automated dependency scanning
3. **Medium-term**: Deploy SBOM capabilities and continuous monitoring
4. **Long-term**: Build supply chain security platform

**Outcome**: Supply chain visibility improved from quarterly manual audits to continuous automated monitoring.

---

## Use Case 4: Moving from Craft to Studio

### Situation
A 20-person startup with legacy infrastructure decides to modernize their entire stack to enable faster growth.

### Framework Application

**Current Position**: Craft (Simple + Low Readiness)
**Target Position**: Studio (Simple + High Readiness)

**Movement Path**: Infrastructure modernization (single axis movement)
- Timeline: 12-18 months
- Success probability: High (single axis change)

**Investment Priorities**:
1. Cloud platform migration
2. CI/CD automation
3. Infrastructure-as-code
4. Automated security testing

**Security Integration**:
- Implement security automation during modernization
- Policy-as-code from the start
- Avoid recreating manual processes in new infrastructure

**Outcome**: Successful transformation with security embedded in modern infrastructure from inception.

---

## Use Case 5: BAU Constraint Implementation

### Situation
A security team at series C company recognizes unsustainable demand growth and needs to shift from manual security reviews to scaling approach.

### Framework Application

**BAU Constraint Strategy** (from [Investment Portfolio](../04-investment/portfolio-framework.md)):

**Phase 1 - Communication (Month 1)**:
- Transparent explanation of scaling challenge
- Presentation of self-service alternatives
- Clear prioritization criteria for manual reviews

**Phase 2 - Alternatives (Months 2-3)**:
- Deploy security scanning automation
- Create secure templates for common patterns
- Build self-service documentation

**Phase 3 - Constraint (Month 4)**:
- Limit manual reviews to novel/high-risk changes
- Direct teams to self-service for standard patterns
- Measure adoption and iterate

**Outcome**: Manual security reviews reduced 70%; security coverage improved through automation; developer satisfaction increased.

---

## Framework Application Template

Use this template to apply SF² to your organization:

### 1. Assess Strategic Position
- Operational Complexity: Simple / Complex
- Operational Readiness: Lower / Higher
- Current Quadrant: _______________

### 2. Evaluate Contextual Modifiers
| Modifier | Level (Low/Moderate/High) | Impact |
|----------|--------------------------|--------|
| Attack Landscape | | |
| Supply Chain Complexity | | |
| Regulatory Constraints | | |
| Crisis Events | | |
| Change Capacity | | |
| Relationship Health | | |

### 3. Identify Priority Stewardship Areas
Based on position and modifiers:
1. Primary focus: _______________
2. Secondary focus: _______________
3. Maintenance areas: _______________

### 4. Design Investment Portfolio
- **BAU to constrain**: _______________
- **Scaling investments**: _______________
- **Timeline**: _______________
- **Expected outcomes**: _______________

### 5. Plan Movement Path (if applicable)
- Current position: _______________
- Target position: _______________
- Movement strategy: _______________
- Timeline: _______________

---

## Contributing Use Cases

Have you applied SF² to your organization? We welcome real-world use case contributions!

**What to include**:
- Organizational context (anonymized)
- Strategic position and modifiers
- Framework application approach
- Outcomes and lessons learned
- Advice for similar situations

**How to contribute**: See [Contributing Guidelines](../contributing.md)

---

## Next Steps

[:octicons-arrow-right-24: Explore Framework Relationships](../07-relationships/nist-ssdf.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Implementation Guides](../06-implementation/studio.md){ .md-button }
