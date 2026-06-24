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

<figure>
  <svg viewBox="0 0 680 580" role="img" aria-labelledby="sf2-rh-title sf2-rh-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:680px;width:100%;height:auto;font-family:'Source Serif 4',Georgia,serif;">
    <title id="sf2-rh-title">Adoption by friction and mandate: the missing paved-road cell</title>
    <desc id="sf2-rh-desc">A two-by-two matrix. The horizontal axis runs from voluntary on the left to mandatory on the right. The vertical axis runs from high friction at the bottom to low friction at the top. Voluntary plus low friction, top left, is an opt-in default with partial adoption. Mandatory plus low friction, top right, is the paved road: a secure default built into the pipeline, mandatory and low-friction at once, which gets full adoption because no one has to choose it. This is the cell the mandatory-versus-voluntary frame misses, and it is highlighted. Voluntary plus high friction, bottom left, gets low adoption. Mandatory plus high friction, bottom right, is the reflex: make more controls mandatory and accept the resistance. The axis that actually governs adoption is friction, not whether the control is mandatory.</desc>
    <defs>
      <pattern id="rh-paved" width="12" height="12" patternUnits="userSpaceOnUse" patternTransform="rotate(45)"><line x1="0" y1="0" x2="0" y2="12" stroke="#009E73" stroke-width="1.3" opacity="0.45"/></pattern>
    </defs>
    <rect x="0" y="0" width="680" height="580" fill="#FAFAF7"/>
    <text x="360" y="34" font-size="16.5" font-weight="700" fill="#2C4A6B" text-anchor="middle">Friction governs adoption, not the mandate</text>
    <!-- TL voluntary + low friction -->
    <rect x="120" y="70" width="240" height="190" fill="#EDF1F6" stroke="#2C4A6B" stroke-width="2"/>
    <text x="240" y="150" font-size="14" font-weight="700" fill="#2C4A6B" text-anchor="middle">Opt-in default</text>
    <text x="240" y="176" font-size="11.5" fill="#2A2520" text-anchor="middle">partial adoption</text>
    <!-- TR mandatory + low friction = paved road (highlight) -->
    <rect x="360" y="70" width="240" height="190" fill="#E2F3EC" stroke="#009E73" stroke-width="3"/><rect x="360" y="70" width="240" height="190" fill="url(#rh-paved)"/>
    <circle cx="382" cy="92" r="14" fill="#00553F"/><path d="M375 92 l5 5 l9 -10" fill="none" stroke="#FFFFFF" stroke-width="2.4" stroke-linecap="round" stroke-linejoin="round"/>
    <text x="492" y="140" font-size="15.5" font-weight="700" fill="#00553F" text-anchor="middle">The paved road &#9733;</text>
    <text x="480" y="166" font-size="11.5" fill="#2A2520" text-anchor="middle">secure default in the pipeline:</text>
    <text x="480" y="182" font-size="11.5" fill="#2A2520" text-anchor="middle">mandatory AND low-friction</text>
    <text x="480" y="206" font-size="11.5" font-weight="700" fill="#00553F" text-anchor="middle">full adoption</text>
    <!-- BL voluntary + high friction -->
    <rect x="120" y="260" width="240" height="190" fill="#EDEBE4" stroke="#8A8270" stroke-width="2"/>
    <text x="240" y="346" font-size="14" font-weight="700" fill="#5A5446" text-anchor="middle">Low adoption</text>
    <text x="240" y="372" font-size="11.5" fill="#2A2520" text-anchor="middle">friction with no mandate</text>
    <!-- BR mandatory + high friction = the reflex -->
    <rect x="360" y="260" width="240" height="190" fill="#F6EBE3" stroke="#A6450B" stroke-width="2"/>
    <text x="480" y="338" font-size="14" font-weight="700" fill="#A6450B" text-anchor="middle">The reflex</text>
    <text x="480" y="364" font-size="11.5" fill="#2A2520" text-anchor="middle">more mandates,</text>
    <text x="480" y="380" font-size="11.5" fill="#2A2520" text-anchor="middle">accept the resistance</text>
    <!-- axes -->
    <line x1="120" y1="470" x2="600" y2="470" stroke="#2A2520" stroke-width="1.4"/>
    <line x1="104" y1="70" x2="104" y2="450" stroke="#2A2520" stroke-width="1.4"/>
    <text x="120" y="488" font-size="12" fill="#3A3530">Voluntary</text>
    <text x="600" y="488" font-size="12" fill="#3A3530" text-anchor="end">Mandatory</text>
    <text x="360" y="510" font-size="13" font-weight="700" fill="#2C4A6B" text-anchor="middle">Is the control required?</text>
    <text x="96" y="450" font-size="12" fill="#3A3530" text-anchor="end">High</text>
    <text x="96" y="80" font-size="12" fill="#3A3530" text-anchor="end">Low</text>
    <text x="36" y="260" font-size="13" font-weight="700" fill="#2C4A6B" text-anchor="middle" transform="rotate(-90 36 260)">Friction to adopt</text>
    <!-- caption -->
    <text x="360" y="546" font-size="11.5" font-style="italic" fill="#2A2520" text-anchor="middle">When trust is thin, lower friction. Make the secure path the default path, so the capability lands before the relationship does.</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Friction governs adoption, not the mandate. The paved road is mandatory and low-friction at once, the cell the mandatory-versus-voluntary frame misses.</figcaption>
</figure>

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
