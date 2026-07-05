# Two-Axis Positioning Model

## Understanding Your Strategic Starting Point

Rather than using traditional maturity models that assume linear progression, this framework positions software factories on **two independent dimensions** that determine your optimal security approach.

!!! tip "Why Not Maturity Models?"
    Traditional security maturity models imply everyone should follow the same path. SF² recognizes that a 10-person startup with modern cloud infrastructure shouldn't implement security the same way as a 5,000-person enterprise with legacy systems, even if both need strong security.

    This is contingency theory applied to security: organizational research has held for decades that there is no single best way to organize, only the structure that fits an organization's environment, scale, and technology ([Donaldson 2001](../appendix/references.md#strategic-positioning-and-contingency-theory); [Horne, Maynard & Ahmad 2017](../appendix/references.md#strategic-positioning-and-contingency-theory)). SF² carries that finding into security program design: your position sets your strategy, not your rung on a ladder everyone is told to climb.


## The Strategic Positioning Framework

Organizations can be assessed along two critical axes:

### Blast Radius Axis (What a Failure Can Reach)

The horizontal axis is **inherent blast radius**: how far a failure could reach if containment fails, given everything your systems are allowed to do. It is set by the authority you have handed your automation and agents, not by how many people you employ. Headcount and team count were the old stand-in, and the stand-in held while a bigger system meant more people to run it. AI broke that correlation. A fifteen-person shop running fifty agents with broad tool access has the reach of an enterprise and the headcount of a studio, and a security strategy keyed to headcount cannot see the reach. So the axis names the reach directly.

**Small reach**: automation that touches one bounded surface, authority scoped per task, a worst-case failure contained to a single blast cell.

**Large reach**: automation that crosses trust boundaries (production, data, and identity at once), standing authority broad enough that one misused credential is an enterprise event, a worst-case failure that cascades across the estate.

Headcount survives here as a legacy proxy: it used to predict reach, and where a small team still holds small authority it still does. AI is what severs headcount from reach, and the axis follows the reach.

This is *inherent* reach, measured as if containment failed. What you build to stop a failure reaching that far, the boundary enforcement that holds a compromised component to the authority it was granted, is the other axis: readiness. Keeping the two apart is what keeps the model honest. Your reach is mostly what you have decided to let your systems do; your readiness is what you build to contain it. The containment floor that bounds the blast is the same boundary enforcement the [coadaptive layer](../10-coadaptive/04-boundary-enforcement.md) specifies at the substrate: this chapter names the position, that chapter builds the floor.

This runs asymmetrically, and the asymmetry is the point. A small shop can leap to large reach by granting fifty agents broad authority, but a large enterprise cannot shrink below its own surface area: inherent reach is the sum of every authority you have granted, and a big estate has granted a great deal. Past a certain scale that sum is simply large, and the horizontal axis stops telling enterprises apart. So the two ends of the model play different games. Small shops fight to stay on the left, one over-scoped agent fleet away from teleporting to Mass. Large enterprises take their reach as given and fight the vertical: the whole move is proving containment and climbing to Lean.

A test keeps the two axes from blurring. Place yourself in two sentences: a reach sentence using only the verbs of authority (what the automation can reach, is granted, is allowed to touch) and a readiness sentence using only the verbs of control (what is contained, caught, reviewed, segmented). If a containment word is carrying your reach claim, you have measured the wrong axis.

### Operational Readiness Axis (How You Operate)

**Lower Readiness**:

- Manual processes
- Legacy infrastructure
- Limited automation
- Tribal knowledge
- Reactive operations

**Higher Readiness**:

- Automated pipelines
- Modern infrastructure
- API-driven operations
- Documented processes
- Proactive operations

## The Four Strategic Positions

These two axes create four distinct strategic positions, each with different security approaches:

<figure>
  <svg viewBox="0 0 680 560" role="img" aria-labelledby="sf2-axis-title sf2-axis-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:680px;width:100%;height:auto;font-family:'Source Serif 4',Georgia,serif;">
    <title id="sf2-axis-title">SF² two-axis positioning model</title>
    <desc id="sf2-axis-desc">A 2x2 matrix. The horizontal axis is Blast Radius, the inherent reach of a failure assuming containment fails, increasing from Small reach on the left to Large reach on the right. The vertical axis is Operational Readiness, the lean transformation, with repeatability and proven containment rising from Lower at the bottom to Higher at the top. Four quadrants: Studio is Small reach plus Higher readiness (top left); Lean is Large reach plus Higher readiness (top right) and is the goal position; Craft is Small reach plus Lower readiness (bottom left); Mass is Large reach plus Lower readiness (bottom right). Mass is Lean's large reach without Lean's floor: ungoverned scale, not big batch.</desc>
    <defs>
      <pattern id="pStudio" width="13" height="13" patternUnits="userSpaceOnUse" patternTransform="rotate(45)"><line x1="0" y1="0" x2="0" y2="13" stroke="#009E73" stroke-width="1.2" opacity="0.38"/></pattern>
      <pattern id="pLean" width="14" height="14" patternUnits="userSpaceOnUse"><circle cx="4" cy="4" r="1.5" fill="#0072B2" opacity="0.38"/></pattern>
      <pattern id="pCraft" width="13" height="13" patternUnits="userSpaceOnUse" patternTransform="rotate(-45)"><line x1="0" y1="0" x2="0" y2="13" stroke="#E69F00" stroke-width="1.3" opacity="0.42"/></pattern>
      <pattern id="pMass" width="13" height="13" patternUnits="userSpaceOnUse"><path d="M0 0 L13 13 M13 0 L0 13" stroke="#D55E00" stroke-width="0.9" opacity="0.3"/></pattern>
    </defs>
    <!-- quadrant fills + colorblind-safe pattern overlay (color + pattern + label) -->
    <rect x="110" y="60" width="250" height="200" fill="#E2F3EC" stroke="#009E73" stroke-width="2.5"/>
    <rect x="110" y="60" width="250" height="200" fill="url(#pStudio)" stroke="none"/>
    <rect x="360" y="60" width="250" height="200" fill="#DCEBF6" stroke="#0072B2" stroke-width="2.5"/>
    <rect x="360" y="60" width="250" height="200" fill="url(#pLean)" stroke="none"/>
    <rect x="110" y="260" width="250" height="200" fill="#FBEFD9" stroke="#E69F00" stroke-width="2.5"/>
    <rect x="110" y="260" width="250" height="200" fill="url(#pCraft)" stroke="none"/>
    <rect x="360" y="260" width="250" height="200" fill="#FBE6DA" stroke="#D55E00" stroke-width="2.5"/>
    <rect x="360" y="260" width="250" height="200" fill="url(#pMass)" stroke="none"/>
    <!-- quadrant labels -->
    <text x="235" y="150" text-anchor="middle" font-size="20" font-weight="700" fill="#00553F">Studio</text>
    <text x="235" y="172" text-anchor="middle" font-size="12" fill="#2A2520">Small reach + Higher readiness</text>
    <text x="235" y="190" text-anchor="middle" font-size="12" fill="#2A2520">narrow grant, floor built</text>
    <text x="485" y="150" text-anchor="middle" font-size="20" font-weight="700" fill="#00557F">Lean &#9733;</text>
    <text x="485" y="172" text-anchor="middle" font-size="12" fill="#2A2520">Large reach + Higher readiness</text>
    <text x="485" y="190" text-anchor="middle" font-size="12" fill="#2A2520">goal: reach with the floor built</text>
    <text x="235" y="350" text-anchor="middle" font-size="20" font-weight="700" fill="#855A00">Craft</text>
    <text x="235" y="372" text-anchor="middle" font-size="12" fill="#2A2520">Small reach + Lower readiness</text>
    <text x="235" y="390" text-anchor="middle" font-size="12" fill="#2A2520">narrow grant, by hand</text>
    <text x="485" y="350" text-anchor="middle" font-size="20" font-weight="700" fill="#A6450B">Mass</text>
    <text x="485" y="372" text-anchor="middle" font-size="12" fill="#2A2520">Large reach + Lower readiness</text>
    <text x="485" y="390" text-anchor="middle" font-size="12" fill="#2A2520">ungoverned reach, no floor</text>
    <!-- axis lines -->
    <line x1="110" y1="490" x2="610" y2="490" stroke="#2A2520" stroke-width="1.5"/>
    <line x1="90" y1="60" x2="90" y2="460" stroke="#2A2520" stroke-width="1.5"/>
    <!-- x axis labels -->
    <text x="110" y="508" text-anchor="start" font-size="13" fill="#3A3530">Small reach</text>
    <text x="610" y="508" text-anchor="end" font-size="13" fill="#3A3530">Large reach</text>
    <text x="360" y="532" text-anchor="middle" font-size="14" font-weight="700" fill="#2C4A6B">Blast Radius (inherent reach, if containment fails)</text>
    <!-- y axis labels -->
    <text x="80" y="455" text-anchor="end" font-size="13" fill="#3A3530">Lower</text>
    <text x="80" y="70" text-anchor="end" font-size="13" fill="#3A3530">Higher</text>
    <text x="32" y="260" text-anchor="middle" font-size="14" font-weight="700" fill="#2C4A6B" transform="rotate(-90 32 260)">Operational Readiness (repeatability rising)</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">The horizontal axis is inherent blast radius (reach if containment fails); the vertical axis is operational readiness, the lean transformation, repeatability and proven containment rising. <strong>Mass</strong> is Lean's large reach without Lean's floor: ungoverned scale, not big batch.</figcaption>
</figure>

!!! note "Reading the two axes"
    The horizontal axis is **blast radius**: the inherent reach of a failure if containment fails, set by what authority your automation holds. The vertical axis is **operational readiness**, the lean transformation: moving up means the work becomes more repeatable and a failure provably stays contained. The goal position is **Lean**: large reach with the floor built.

!!! note "The names are production modes, about flow and containment"
    The four names map to production modes, and the analogy is about flow and containment, not volume. Lean is the cleanest fit: Toyota's line stops the instant a defect appears so it cannot propagate, which is large flow contained by construction, exactly large reach with the floor built. Craft is the artisan touching one or two things by hand. Studio is the small, bounded, modern shop. **Mass is Lean's large reach without Lean's floor: ungoverned scale, not big batch.** Under the reach axis the border that matters is against Lean, not against Ford's assembly line.

Each position is drawn out in full on [Four Strategic Positions](strategic-positions.md): its characteristics, security approach, investment priorities, and common pitfalls. In short: **Studio** is small reach with the floor built, **Lean** is large reach with the floor built (the goal position), **Craft** is small reach done by hand, and **Mass** is large reach with no floor under it.

## Assessing Your Position

Use these questions to determine your organization's position:

### Blast Radius Assessment (inherent reach)

| Question | Small reach | Large reach |
|----------|----------------------|------------------------|
| **Reach of most-capable automation:** the largest set of systems any one automated actor (pipeline, agent, service account) can touch without a human in the loop? | One bounded surface (single service/datastore) | Crosses trust boundaries (prod + data + identity); org-wide |
| **Worst-case propagation:** if your single most-privileged non-human identity were fully compromised now, how far does damage reach before something *not also compromised* stops it? | Contained to one blast cell | Cascades across the estate |
| **Autonomy depth:** how much can automation *do*, not just read, without a human checkpoint (open and merge code, move money, grant access, drop data)? | Read or propose only; humans commit consequential actions | Acts and commits consequential actions unattended |
| **Authority concentration:** does any single credential, role, or agent hold standing authority broad enough that its misuse is an enterprise event? | No; authority attenuated per task | Yes; broad standing authority exists |

### Operational Readiness Assessment

| Question | Lower Readiness | Higher Readiness |
|----------|----------------|-----------------|
| **Containment verifiability:** can you *prove* (not assert) that a compromised component cannot exceed the authority you granted it? | No; you rely on it behaving | Yes; enforced at the boundary |
| Deployment process? | Manual | Fully automated |
| Infrastructure? | Legacy/on-prem | Cloud-native/hybrid |
| Documentation? | Tribal knowledge | Comprehensive docs |
| Observability? | Limited/reactive | Comprehensive/proactive |
| Change velocity? | Weeks/months | Hours/days |

## Why This Matters for Security

Position is a sequencing and funding diagnostic, not an architecture one. It does not decide whether you adopt the containment floor; every quadrant owes the same one. It decides how fast you reach it and what you fund first. Within that, your position determines:

1. **Funding order**: Which security investments to make first, and which to defer
2. **Rollout pace**: How fast you can stand up capabilities without outrunning the organization
3. **Timeline expectations**: How long transformation realistically takes
4. **Mechanism fit**: Which implementation meets the containment floor at your scale
5. **Success metrics**: What good looks like at your stage

!!! warning "Common Mistake"
    Implementing Lean-level security programs in a Mass or Craft organization often leads to:

    - Failed tooling implementations
    - Frustrated security and development teams
    - Wasted budget on capabilities you never put to use
    - Security becoming a bottleneck instead of enabler

## Strategic Movement Paths

Most organizations are working toward Lean, but the route depends on where they start. Every move, with its investments, timeline, and likelihood, is laid out on [Strategic Movement Paths](movement-paths.md), which lays all six out in a summary table. The one worth naming here: **Craft → Mass is drift, not a strategy**, reach that outran the floor. It is the move to guard against.

## Using Position to Guide Security Strategy

The lists below are four sequences toward the same containment, each with tooling fit to its scale. Every quadrant owes deny-by-default limits on the authority review cannot police at scale; what changes below is the order of investment and the tooling that fits the operational reality. Each list is a funding order for your scale, not the security you end up with.

**For Studio**:

- Use cloud-native security services
- Implement policy-as-code from inception
- Build security into platform capabilities
- Enable developer self-service

**For Lean**:

- Orchestrate enterprise security architecture
- Build internal security platforms
- Optimize at scale with automation
- Continuous security improvement programs

**For Craft**:

- Focus on foundational security capabilities
- Manual but systematic approaches
- Gradual capability building
- Use managed security services

**For Mass**:

- Pragmatic hybrid security approaches
- Risk-based prioritization (critical systems first)
- Incremental modernization
- Balance legacy and modern security capabilities

---

## Next Steps

Now that you understand strategic positioning, explore the specific characteristics and recommended approaches for each position:

[:octicons-arrow-right-24: Explore Strategic Positions in Detail](strategic-positions.md){ .md-button .md-button--primary }
[:octicons-arrow-right-24: Learn About Movement Paths](movement-paths.md){ .md-button }

---

!!! info "Naming note (v0.5 → v0.6)"
    These four positions were named Visionaries, Leaders, Niche Players, and Challengers in v0.5. They are now **Studio, Lean, Craft, and Mass**. See the [quadrant rename mapping](../appendix/quadrant-rename-v06.md) for the full crosswalk and the reasoning behind the change.

---

[:octicons-arrow-left-24: Back to Universal Security Conditions](../02-stewardship/overview.md){ .md-button }
