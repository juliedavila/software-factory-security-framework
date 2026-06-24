# Use Cases and Application Scenarios

## Applying SF² to Real-World Situations

This section demonstrates how to apply the Software Factory Security Framework to common organizational scenarios. Each use case shows how the framework's components work together to guide strategic decisions.

## Use Case 1: Scaling Crisis at Series B Startup

### Situation
A 50-person SaaS startup (Studio position) hits the scaling crisis: security reviews now take 2 weeks, blocking feature releases.

### Framework Application

**Strategic Position**: Studio (Small reach + High Readiness)

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

**Strategic Position**: Mass (Large reach + Low Readiness)

**Contextual Modifiers**:

- High regulatory constraints (financial services)
- Low change capacity (risk-averse culture)
- Moderate relationship health (improving)
- Recent crisis event (audit findings)

**Investment Strategy**:

1. **Use crisis window**: Apply audit findings for funding approval
2. **Hybrid approach**: Modern security for new systems, pragmatic controls for legacy
3. **Extended timeline**: 36-60 month transformation with phased rollout

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

**Current Position**: Craft (Small reach + Low Readiness)
**Target Position**: Studio (Small reach + High Readiness)

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

## When the parts are safe and the system is not

The cases above take a situation apart: find the position, read the modifiers, pick the stewardship areas, design the portfolio. That works when the parts fail independently. It breaks the moment the system is an agent wired to APIs and acting on its own.

An agent, the APIs it can call, and the autonomy it runs with can each be safe on their own and still compose into a breach. The risk is not in any one part. It is in the seam where one part's output becomes another part's trusted input. [EchoLeak](../10-coadaptive/06-input-trust-is-a-category-error.md) is the case in production: a crafted email reached an inbox assistant that read it automatically and acted with the authority it already held, and no single component was breached. This is the [combinatorial surface](../10-coadaptive/02-ai-era-threat-surface.md) the framework warns about, met where you actually apply it: the interactions multiply faster than the parts, so a parts-list review misses the term that dominates.

So add a step the other cases do not need. Before you sign off on an agent system, run an interaction pass: enumerate the agent against the APIs it can call against the autonomy it has, and ask what each seam lets through. The thing to test is what happens when this agent, reading input you do not control, is allowed to call this API on its own. Asking only whether the API is safe answers a smaller question.

You cannot judge a run from inside it. The same crafted text that steered the agent can also narrate the result as clean, so the answer shown to the user looks fine while the damage happens off to the side. The evidence is blunt. When researchers fed agents data through ordinary outbound requests, checks on what the agent showed the user missed 95 percent of the leaks, because the data left through a channel the visible answer never mentioned.[^silent-egress] The same EchoLeak email fits this exact shape: the assistant's reply looked normal, and the mail left quietly. So the signal you trust comes from outside the agent, never from its own account.

That outside signal has two jobs. The failures you can name in advance, you pre-commit as bright lines: a value with untrusted provenance reached a sink, data crossed a boundary it should not have, an action fired without its checkpoint. The failures you cannot name in advance, you catch a different way, because an injection invents a path no one listed. You keep enough record of each run to reconstruct what the agent actually did from the outside, then ask a question you had not thought to ask.[^observability] That record has to be three things. Accurate, meaning read from the network and the actions, not from the agent's own reply. Real-time, because a finding a quarter later is an autopsy. And specific to the single run, because an average hides the one that leaked.

This sign-off is dated. Today it is something you run periodically, at the level of a system you approve once. As autonomy widens and agents begin to wire themselves to each other, that cadence will be too slow, and the unit you analyze will shift from a system you approve to a population of agents you watch. If your sign-off cadence has not changed while your agents' autonomy has, your review is already aging.

[^silent-egress]: Silent Egress (Lan et al., 2026, [arXiv:2602.22450](https://arxiv.org/abs/2602.22450)): implicit injection drives an agent to exfiltrate its runtime context through ordinary outbound requests while the user-facing response stays harmless.
[^observability]: Observability in its original control-theory sense, a system is observable when its internal state can be reconstructed from its external outputs over time ([Kálmán, 1960](https://en.wikipedia.org/wiki/Observability)). [Charity Majors](https://charity.wtf/2020/03/03/observability-is-a-many-splendored-thing/) carries it into software practice: the ability to ask any question of a running system from the outside, including the ones you did not anticipate.

---

## Framework Application Template

Use this template to apply SF² to your organization:

### 1. Assess Strategic Position
- Blast Radius: Small reach / Large reach
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
| AI Saturation | | |
| PQC Exposure | | |

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

### 6. For Agent Systems: Run the Seam Pass
Enumerate the agent × API × autonomy interactions and test each seam: what it lets through when the agent acts on input you do not control. Before shipping, require an external correctness criterion: one observable that proves a run wrong, and a watcher outside the agent that checks for it.

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
