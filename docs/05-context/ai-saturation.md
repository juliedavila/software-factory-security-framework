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
- Tool grants and non-human identities multiply faster than they are inventoried
- Generation speed has decoupled from human comprehension

**Implementation Impact**: Manual review is no longer the control. Guardrails,
policy-as-code, and per-request authorization become the binding investments.

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

---

## Next Steps

[:octicons-arrow-right-24: Continue to Implementation Guides](../06-implementation/studio.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Contextual Modifiers Overview](overview.md){ .md-button }
