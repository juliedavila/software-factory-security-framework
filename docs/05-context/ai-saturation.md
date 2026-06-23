# AI Saturation

## How Much of Your Pipeline Runs Through AI

AI saturation measures how much of an organization's software work, from code
generation to code review to operations, now runs through AI tools and autonomous
agents. It is the newest contextual modifier, and in the current landscape it moves
faster than any other. Two organizations in the same strategic position can sit at
opposite ends of it: one barely touched by AI, the other generating, reviewing, and
shipping most of its code through it.

Saturation is not the risk from any single AI tool. It is a measure of proportion. As
that proportion climbs, the binding constraint on security shifts from writing code to
understanding it, and the work of security shifts with it.

!!! danger "The Comprehension Gap"
    At high saturation, code is generated faster than people can read it. The constraint
    stops being how fast you ship and becomes how fast you can understand what you
    shipped. No amount of hiring closes a gap that scales with machine output. See
    [the comprehension crisis](../10-coadaptive/02-ai-era-threat-surface.md).

<figure>
  <svg viewBox="0 0 760 470" role="img" aria-labelledby="sf2-cg-title sf2-cg-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:760px;width:100%;height:auto;font-family:inherit;">
    <title id="sf2-cg-title">As AI saturation rises, generation outpaces review and a comprehension gap opens</title>
    <desc id="sf2-cg-desc">A chart of rate against AI saturation, the proportion of the pipeline running through AI, banded from low through moderate to high. Two curves start together at low saturation. The generation curve, how fast code is produced, climbs steeply as saturation rises. The review curve, how fast people can read and understand what shipped, stays nearly flat because human capacity bounds it, and hiring cannot scale that capacity to machine output. The widening area between them is shaded as comprehension debt: the share of shipped code no person has fully read. The gap opens because review is human-bound while generation is not, and better models do not close it. In a 2025 study across more than a hundred models, code written for security-sensitive tasks was insecure nearly half the time, and newer models were not meaningfully safer. The response is structural, not patient.</desc>
    <rect x="0" y="0" width="760" height="470" fill="#FAFAF7"/>
    <text x="380" y="32" font-size="16.5" font-weight="700" fill="#2C4A6B" text-anchor="middle">Generation outpaces review as saturation rises</text>
    <!-- saturation bands -->
    <rect x="110" y="80" width="200" height="292" fill="#F4F1EA"/>
    <rect x="310" y="80" width="200" height="292" fill="#ECE7DB"/>
    <rect x="510" y="80" width="200" height="292" fill="#E5E0D3"/>
    <text x="210" y="98" font-size="10.5" fill="#2A2520" text-anchor="middle">low</text>
    <text x="410" y="98" font-size="10.5" fill="#2A2520" text-anchor="middle">moderate</text>
    <text x="610" y="98" font-size="10.5" fill="#2A2520" text-anchor="middle">high</text>
    <line x1="110" y1="80" x2="110" y2="372" stroke="#2A2520" stroke-width="1.6"/>
    <line x1="110" y1="372" x2="710" y2="372" stroke="#2A2520" stroke-width="1.6"/>
    <text x="40" y="226" font-size="11.5" fill="#6B6456" text-anchor="middle" transform="rotate(-90 40 226)">rate (volume per unit time)</text>
    <text x="410" y="398" font-size="11.5" fill="#6B6456" text-anchor="middle">AI saturation (share of pipeline running through AI)</text>
    <!-- comprehension debt wedge -->
    <path d="M110 350 C 330 330, 470 220, 700 110 L700 322 C 520 334, 350 346, 110 350 Z" fill="#D55E00" opacity="0.12"/>
    <!-- generation curve -->
    <path d="M110 350 C 330 330, 470 220, 700 110" fill="none" stroke="#D55E00" stroke-width="2.8"/>
    <rect x="628.9" y="86.9" width="75.1" height="21.3" rx="2" fill="#FAFAF7" fill-opacity="0.72"/>
    <text x="700" y="102" font-size="12.5" font-weight="700" fill="#A6450B" text-anchor="end">generation</text>
    <!-- review curve -->
    <path d="M110 350 C 350 346, 520 334, 700 322" fill="none" stroke="#0072B2" stroke-width="2.8"/>
    <rect x="547.2" y="324.9" width="156.8" height="21.3" rx="2" fill="#FAFAF7" fill-opacity="0.72"/>
    <text x="700" y="340" font-size="12.5" font-weight="700" fill="#00557F" text-anchor="end">review / comprehension</text>
    <rect x="367.8" y="286.0" width="124.4" height="19.9" rx="2" fill="#FAFAF7" fill-opacity="0.72" transform="rotate(-21 430 300)"/>
    <text x="430" y="300" font-size="11.5" font-weight="700" fill="#A6450B" text-anchor="middle" transform="rotate(-21 430 300)">comprehension debt</text>
    <line x1="60" y1="416" x2="710" y2="416" stroke="#B8956A" stroke-width="1"/>
    <text x="60" y="438" font-size="12.5" font-weight="700" fill="#2C4A6B">The gap is comprehension debt: code shipped that no person has fully read.</text>
    <text x="60" y="458" font-size="11.5" fill="#2A2520">Better models do not close it. In a 2025 study of 100-plus models, code for security tasks was insecure nearly half the time.</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">As saturation climbs, generation pulls away from review and the shaded gap, comprehension debt, widens. Hiring cannot close a gap that scales with machine output, and newer models test no safer. The response is structural, not patient.</figcaption>
</figure>

## Saturation Levels

### Low Saturation: AI on the Margins

**Characteristics**:
- AI assists individual developers; adoption is uneven
- Most code is human-written and human-reviewed
- Few or no autonomous agents in the pipeline
- AI output reviewed at the same pace as human output

**Implementation Impact**: Existing review and authorization models hold. Standard roadmap.

### Moderate Saturation: AI in the Workflow

**Characteristics**:
- AI generates a meaningful share of committed code
- Humans still originate most non-trivial code
- Review volume rising faster than review capacity
- Agents handling discrete tasks (tests, refactors, ops runbooks)
- First MCP servers and tool integrations in production

**Implementation Impact**: Manual review starts to strain. Begin shifting toward
automated guardrails and scoped agent identity.

### High Saturation: AI as the Default Author

**Characteristics**:
- Most code, and much of review and operations, runs through AI
- The human's default role shifts to reviewing and approving AI-originated code
- Autonomous agents act across the repo, CI, and infrastructure
- One operator now spawns a fan-out of many agents, so the blast radius of a single instruction is the union of what every spawned agent can reach
- Authority propagates across agent-to-agent delegation chains, one hop past where it was scoped
- Tool grants and non-human identities multiply faster than they are inventoried
- Generation speed has decoupled from human comprehension

**Implementation Impact**: Manual review is no longer the control. Guardrails,
policy-as-code, and per-request authorization become the binding investments. And a fleet you
cannot see is a fleet you cannot bound: a registry, a delegation policy, and a tested kill-switch
make the population governable, while [boundary enforcement](../10-coadaptive/04-boundary-enforcement.md)
contains what any one agent can reach.

!!! warning "Better Models Do Not Close the Gap"
    In a [2025 study](https://www.veracode.com/blog/genai-code-security-report/) spanning
    more than 100 models, asked to write code for security-sensitive tasks, the models
    produced insecure code nearly half the time, and newer, more capable models did not
    test meaningfully safer. You cannot wait for the next model to solve this. The
    response is structural, not patient.

## Assessment Questions

| Question | Low Saturation | Moderate Saturation | High Saturation |
|----------|----------------|---------------------|-----------------|
| Share of committed code AI-generated? | Small | Substantial | Majority |
| Review capacity vs generation speed? | Review keeps pace | Review is the visible queue | AI code ships without deep review |
| Autonomous agents in the pipeline? | None | Discrete tasks | Acting across systems |
| Non-human identities and tool grants? | Few, scoped, inventoried | Growing, partly tracked | Many, broad, unaudited |
| Where does the bottleneck sit? | Writing code | Shifting to review | Understanding what shipped |

## Impact on Strategy

### For All Quadrants

High saturation changes the security investment regardless of position. The constraint
it creates is comprehension that cannot scale with generation, and that constraint does
not care where you sit.

**Studio**: Build guardrails in from the start. At small scale the comprehension gap is
survivable, but the habits you set now decide whether you can absorb saturation later.
For a high-craft team the risk shows up as trust: code no one fully read, shipped because
it looked right.

**Lean**: Your scale advantages only hold if review is automated. Manual gates become the
bottleneck saturation exposes first.

**Craft**: Prioritize automated guardrails earlier than a pre-AI roadmap would. Manual
review of AI-generated code at volume is the trap you walk into without noticing.

**Mass**: Saturation arrives on its own schedule, not when your operations are ready for
it. At high volume and low touch it lands as a cost-and-scale problem: more code, more
agents, more grants, all faster than inventory. Sequence guardrails and agent identity
ahead of other scaling work.

### Investment Priorities

**Low Saturation**:
- Existing review models remain viable
- Establish baseline policy-as-code before volume arrives

**Moderate Saturation**:
- Shift review effort from line-by-line inspection to automated guardrails
- Begin scoped, short-lived identity for agents and tools
- Inventory non-human identities and MCP servers

**High Saturation**:
- Automated guardrails become the primary control, not a supplement
- Scoped, short-lived agent identity (necessary) plus per-request attenuation, which is what identity alone cannot provide
- Continuous inventory of tool grants and agent identities
- Comprehension treated as an asset: an authoritative, queryable model of system behavior, continuously reconciled, not tribal memory

## Real-World Indicators

**You're facing high saturation when**:
- ✅ Pull request volume has outrun your reviewers' capacity to understand each change
- ✅ More of your code is read first by a model than by a person
- ✅ Agents are opening PRs, running CI steps, or touching infrastructure on their own
- ✅ You are discovering MCP servers and tool grants you did not know were in production
- ✅ Non-human identities outnumber human ones and most carry more access than they use

## Strategic Response

### Short-Term (0-6 months)

1. **Guardrails over gates**: move security checks into the pipeline as automated policy, not manual review steps
2. **Identity inventory**: enumerate agents, service accounts, and tool grants; revoke standing access that isn't used
3. **Secrets discipline**: AI-assisted commits leak credentials at higher rates; continuous scanning and short-lived secrets

### Medium-Term (6-18 months)

1. **Scoped agent identity**: per-request, just-in-time grants for agents and tools. Scoped identity is necessary; [per-request attenuation](../10-coadaptive/05-authorization-at-agent-scale.md) is what identity alone cannot provide, because no static scope statement can narrow a general agent
2. **Comprehension capacity**: build an authoritative, queryable model of system behavior that survives the people who built it
3. **Supply chain for AI**: bring model weights, training data, and MCP servers under the same inventory discipline as code dependencies

### Long-Term (18+ months)

1. **Two floors, not one**: [boundary enforcement](../10-coadaptive/04-boundary-enforcement.md) contains what cannot be fully understood; comprehension is the floor under the decisions themselves. Neither alone is the answer
2. **Policy-as-code as the default**: security expressed as constraints the pipeline enforces, not advice reviewers remember
3. **Continuous reconciliation**: keep the model of behavior current as generation outpaces documentation

## Connection to Supply Chain and Comprehension

AI saturation touches two areas the framework already treats as central, but it is not a
restatement of either. [Supply Chain Stewardship](../02-stewardship/supply-chain.md)
measures what you pull in; saturation measures how much of your own pipeline now runs
through AI. The [comprehension crisis](../10-coadaptive/02-ai-era-threat-surface.md) names
the gap saturation creates: generation outruns understanding, and the response is to
contain and to model behavior, not to read faster.

The closest seam is supply chain, so name it plainly. Saturation measures how much of your
pipeline you route through AI, an upstream allocation decision. Supply chain measures the
risk profile of what flows in, including AI output. Same artifact, two different questions.

Its effects reach the supply chain (model weights, MCP servers, tool grants) and the attack
surface (more agents, more autonomous reasoning). What saturation isolates, and what the
other modifiers do not see, is internal: the proportion of your work that now moves faster
than your people can comprehend it.

## Is This Modifier Earning Its Place?

> Score an organization's AI saturation before measuring review load. High-saturation orgs that kept manual review will hit a comprehension bottleneck materially sooner than low-saturation orgs that kept it. Equal bottlenecks falsify this modifier.

---

## Next Steps

[:octicons-arrow-right-24: Continue to PQC Exposure](pqc-exposure.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Contextual Modifiers Overview](overview.md){ .md-button }
