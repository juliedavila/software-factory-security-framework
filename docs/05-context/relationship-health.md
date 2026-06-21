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

But that boundary still has to be built, and someone with authority chooses to build it. A capability boundary is a decision before it is a control; the paved road does not pave itself. That decision runs on a relationship: security on one side, and on the other whoever owns the platform investment. Usually that is engineering leadership. Sometimes it is a platform org, or whoever holds the roadmap tradeoff. So relationship health survives the shift to agents; it moves up a tier. At the line, the lever is the boundary. At the top, the lever is whether there is a boundary at all. [DORA finds the same shape for leadership](https://dora.dev/capabilities/transformational-leadership/): leaders move performance indirectly, by enabling the practices teams adopt, not by adopting for them.

Scope the claim honestly, because the relationship is rarely what opens the wallet. The funding usually comes from outside it: a breach, a regulator, a customer's security questionnaire, a budget cycle with room left in it. The relationship governs the contested middle instead: the boundaries not yet obviously good platform engineering, and not yet ordered from above. It also governs what happens after the money lands, whether the boundary survives the next reorg and the next complaint that it slows people down. A leader on bad terms with engineering can still issue a mandate; issuing costs nothing. What the relationship buys is the boundary that is still funded and running a year later. The one that ships underfunded and gets switched off in the pipeline is the [shelfware](change-capacity.md) the relationship was supposed to prevent. The [same research is blunt on the limit](https://dora.dev/capabilities/transformational-leadership/): even the strongest leaders cannot reach high performance on their own. Read this as a multiplier on the forcing function, not a replacement for it.

This residue is itself on a clock. The mechanics of building and ordering the boundary are already automating. The rules that build and enforce the paved road increasingly run as code, and budget will follow. What does not delegate is who answers for the reach of a failure. When an agent's blast radius goes wide, a board or a court looks for the human who chose that authority envelope, not the policy engine that approved its own rule. [Blast radius](../03-positioning/two-axis-model.md) is set by granted authority, and a human grants it. So the residue shrinks the same way the boundary does, down to one irreducible act. A named human ratifies the authority an agent runs under, and owns what it can reach.

## Is This Modifier Earning Its Place?

> Score security-and-engineering relationship health before a scaling investment. High-health orgs will see materially higher voluntary adoption than low-health orgs deploying the same capability. Equal adoption falsifies this modifier.
>
> Score it again, separately, before a boundary-funding decision. Holding org size, budget, and regulatory mandate equal, high-health pairs get the boundary funded, mandated, and still running a year later more often than low-health pairs at equal threat. Equal funded-and-durable outcomes falsify the residue.

## Next Steps

Continue to AI Saturation and PQC Exposure, the two newest modifiers:

[:octicons-arrow-right-24: Continue to AI Saturation](ai-saturation.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Contextual Modifiers Overview](overview.md){ .md-button }
