# Relationship Health

## Adoption Velocity Is the Binding Constraint

A scaling investment pays off only when the organization takes it up. The capability you ship sets a ceiling; how fast it gets adopted decides whether you ever reach it. That makes adoption velocity the binding constraint on this modifier once the capability exists. Relationship health is the strongest lever on it while the people doing the adopting are human: strong relationships speed adoption, damaged ones turn every rollout into a negotiation.

## Relationship Levels

### Damaged Relationships
- Security seen as blocker
- Minimal communication
- Adversarial interactions
- Security bypassed when possible
- Mutual distrust

**Implementation Impact**: Significant adoption challenges; must rebuild trust before transformation

### Functional but Transactional
- Working relationship exists
- Reactive consultations
- Compliance-focused interactions
- Limited collaboration
- Professional but not strategic

**Implementation Impact**: Standard adoption patterns; some friction expected

### Strategic Partnership
- Security as enabler
- Proactive collaboration
- Shared objectives
- Voluntary participation
- Mutual trust and respect

**Implementation Impact**: Accelerated adoption; reduced friction; innovation opportunities

## Assessment Questions

| Question | Damaged | Functional | Strategic |
|----------|---------|------------|-----------|
| Proactive consultation frequency? | Rare | Occasional | Regular |
| Voluntary participation in security initiatives? | Low | Moderate | High |
| Security seen as? | Blocker | Necessary function | Partner/enabler |
| Collaborative incident response? | Blamed | Coordinated | Blameless |
| Developer satisfaction with security? | Low | Neutral | Positive |

## Building Strong Relationships

**For Damaged Relationships**:
1. Listen and acknowledge past friction
2. Focus on quick wins that reduce developer pain
3. Be transparent about constraints
4. Deliver on commitments consistently
5. Measure and improve developer experience

**For Functional Relationships**:
1. Increase proactive engagement
2. Collaborate on shared objectives
3. Invest in developer-friendly security tools
4. Celebrate joint successes
5. Build security champions program

**For Strategic Partnerships**:
1. Maintain momentum through continuous improvement
2. Co-design security capabilities
3. Share ownership of security outcomes
4. Innovate together on security solutions
5. Expand collaboration across organization

## Impact on Transformation

**Strong relationships enable**:
- Faster adoption of scaling investments
- Higher adoption through low-friction, often voluntary, participation
- Better feedback and iteration
- Innovation opportunities
- Sustainable transformation

**Weak relationships require**:
- Extended relationship-building before transformation
- A shift to low-friction defaults rather than more mandates
- Slower rollouts with more resistance
- Limited innovation opportunities
- Higher risk of transformation failure

The reflex when relationships are weak is to make more controls mandatory and accept the resistance. That reads the trade-off as mandatory against voluntary, when the axis that governs adoption is friction. A secure default built into the [paved road](https://dora.dev/capabilities/platform-engineering/) is mandatory and low-friction at once: dependency scanning that runs in the pipeline and blocks only on a critical finding gets full adoption because no one has to choose it. The mandatory-versus-voluntary frame misses that whole quadrant. When trust is thin, the move that protects adoption velocity is to lower friction, to make the secure path the default path, so the capability lands even before the relationship does.

---

## When the Counterparty Is an Agent

Everything above assumes a person is doing the adopting. Relationship health is a property of people. An agent does not adopt through trust; it is governed by what it is allowed to do. As more of the work shifts to agents, the weight of this modifier shifts with it: the lever stops being the relationship and becomes the [capability boundary](../10-coadaptive/04-boundary-enforcement.md). You do not build trust with an agent. You bind what it can do.

## Is This Modifier Earning Its Place?

> Score security-and-engineering relationship health before a scaling investment. High-health orgs will see materially higher voluntary adoption than low-health orgs deploying the same capability. Equal adoption falsifies this modifier.

## Next Steps

Continue to AI Saturation and PQC Exposure, the two newest modifiers:

[:octicons-arrow-right-24: Continue to AI Saturation](ai-saturation.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Contextual Modifiers Overview](overview.md){ .md-button }
