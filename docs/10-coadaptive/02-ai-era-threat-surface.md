# The AI-Era Threat Surface

!!! info "Coadaptive Layer · Chapter 02"
    **This chapter extends:** [SF² Contextual Modifiers (Section 05) · Attack Landscape](../05-context/attack-landscape.md).
    **Also flags:** [SF² Adaptive Capacity (Section 02)](../02-stewardship/adaptive-capacity.md): comprehension-crisis addendum lives here.
    **Scope:** the five attack surface expansions and the comprehension crisis.

The AI era multiplied the board itself rather than adding five new threats to it. Democratized builders, public APIs, agent access, autonomous reasoning, and LLM workflows each expand the attack surface, and they expand it together, each one widening the blast radius of the others. Underneath all five sits the comprehension crisis: code is now generated faster than any human process can understand it, and a surface you cannot comprehend is a surface you cannot review by the old methods.

## The five attack surface expansions

Each expansion is a real shift in what the organization exposes. The five are a way to reason about one surface rather than five surfaces to defend in turn, because they do not arrive one at a time.

These five are not an arbitrary count. One rule sits under all of them. Each is a human-scale limit that used to hold the surface in check on its own, now coming undone, and the four map onto the first four expansions in order. Only a known few could ship production behavior. An interface was safe because no human bothered to abuse it. The trust boundary stayed where the security team could see it. Behavior was predictable because a person specified the flows. Each was a quiet bottleneck doing security work no one paid for, and the AI era removes it. The test is whether the limit was holding the surface in check rather than merely slowing the work down. Slow typing was a limit too, and removing it expands no one's attack surface.

The fifth is a different kind of thing. LLM workflows are less another bottleneck coming undone than the place the first four chain into each other, where one removed limit becomes the next one's problem. The four are the load-bearing limits coming undone now rather than a closed catalog. You can already see the next ones forming. An agent that remembers across sessions removes a limit we used to rely on: that a session ended and its reach stopped with it. One operator spawning a fan-out of sub-agents removes the limit that one human was one actor you could count. The same rule names each as it arrives. The list was never meant to be finished.

<figure>
  <svg viewBox="0 0 720 560" role="img" aria-labelledby="sf2-5x-title sf2-5x-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:720px;width:100%;height:auto;font-family:'Source Serif 4',Georgia,serif;">
    <title id="sf2-5x-title">The five attack surface expansions as one coupled surface</title>
    <desc id="sf2-5x-desc">Five attack surface expansions (democratized builders, public APIs, agent access, autonomous reasoning, and LLM workflows) drawn as five spokes converging on a single central node: one identity, one grant of authority. The expansions couple through the shared substrate (the identity that acts and the authority it carries) rather than standing as five independent surfaces to defend in turn, so each one widens what that single grant can reach. A compromise of the shared substrate can therefore propagate to all five surfaces, a shared blast radius rather than a guaranteed breach. Folded into one general-purpose agent, all five collapse into a single actor under one set of credentials, which concentrates the blast radius rather than reducing it.</desc>
    <defs>
      <marker id="x5-dot" markerWidth="8" markerHeight="8" refX="4" refY="4"><circle cx="4" cy="4" r="3" fill="#2C4A6B"/></marker>
    </defs>
    <rect x="0" y="0" width="720" height="560" fill="#FAFAF7"/>
    <text x="360" y="34" font-size="17" font-weight="700" fill="#2C4A6B" text-anchor="middle">Five expansions, one coupled surface.</text>
    <text x="360" y="58" font-size="11.5" fill="#2A2520" text-anchor="middle">They share one blast radius: a compromise of the grant can reach all five rather than stay in one.</text>
    <!-- spokes from centre to each expansion (drawn first, behind nodes) -->
    <g stroke="#2C4A6B" stroke-width="1.8" opacity="0.55">
      <line x1="360" y1="300" x2="170" y2="150"/>
      <line x1="360" y1="300" x2="360" y2="120"/>
      <line x1="360" y1="300" x2="550" y2="150"/>
      <line x1="360" y1="300" x2="190" y2="330"/>
      <line x1="360" y1="300" x2="530" y2="330"/>
    </g>
    <!-- central authority core -->
    <circle cx="360" cy="300" r="78" fill="#2C4A6B" stroke="#21384F" stroke-width="2"/>
    <text x="360" y="288" font-size="13.5" font-weight="700" fill="#FFFFFF" text-anchor="middle">the shared</text>
    <text x="360" y="306" font-size="13.5" font-weight="700" fill="#FFFFFF" text-anchor="middle">substrate</text>
    <text x="360" y="326" font-size="11" fill="#C9D8E6" text-anchor="middle">one identity,</text>
    <text x="360" y="340" font-size="11" fill="#C9D8E6" text-anchor="middle">one grant of authority</text>
    <!-- expansion nodes -->
    <g>
      <rect x="78" y="124" width="184" height="48" rx="6" fill="#E6F0F8" stroke="#2C4A6B" stroke-width="1.4"/>
      <text x="170" y="146" font-size="13" font-weight="700" fill="#1F3850" text-anchor="middle">Democratized builders</text>
      <text x="170" y="163" font-size="10.5" fill="#2A2520" text-anchor="middle">authorship past the org chart</text>
    </g>
    <g>
      <rect x="246" y="92" width="228" height="48" rx="6" fill="#E6F0F8" stroke="#2C4A6B" stroke-width="1.4"/>
      <text x="360" y="114" font-size="13" font-weight="700" fill="#1F3850" text-anchor="middle">Public APIs</text>
      <text x="360" y="131" font-size="10.5" fill="#2A2520" text-anchor="middle">discovered and chained at machine speed</text>
    </g>
    <g>
      <rect x="458" y="124" width="184" height="48" rx="6" fill="#E6F0F8" stroke="#2C4A6B" stroke-width="1.4"/>
      <text x="550" y="146" font-size="13" font-weight="700" fill="#1F3850" text-anchor="middle">Agent access</text>
      <text x="550" y="163" font-size="10.5" fill="#2A2520" text-anchor="middle">the trust boundary moves to the agent</text>
    </g>
    <g>
      <rect x="60" y="306" width="190" height="48" rx="6" fill="#E6F0F8" stroke="#2C4A6B" stroke-width="1.4"/>
      <text x="155" y="328" font-size="13" font-weight="700" fill="#1F3850" text-anchor="middle">Autonomous reasoning</text>
      <text x="155" y="345" font-size="10.5" fill="#2A2520" text-anchor="middle">behavior chosen at runtime</text>
    </g>
    <g>
      <rect x="470" y="306" width="190" height="48" rx="6" fill="#E6F0F8" stroke="#2C4A6B" stroke-width="1.4"/>
      <text x="565" y="328" font-size="13" font-weight="700" fill="#1F3850" text-anchor="middle">LLM workflows</text>
      <text x="565" y="345" font-size="10.5" fill="#2A2520" text-anchor="middle">where the other four interlock</text>
    </g>
    <!-- footer note: the inward fold -->
    <rect x="80" y="438" width="560" height="86" rx="6" fill="#FCF4E6" stroke="#B8956A" stroke-width="1.4"/>
    <text x="360" y="462" font-size="12.5" font-weight="700" fill="#855A00" text-anchor="middle">Folded into one general-purpose agent, the five collapse into a single actor.</text>
    <text x="360" y="483" font-size="11.5" fill="#2A2520" text-anchor="middle">One process, one identity, one set of credentials, all five expansions at once.</text>
    <text x="360" y="503" font-size="11.5" fill="#2A2520" text-anchor="middle">A weakness in the shared substrate (an over-broad credential, an action that traces to no one)</text>
    <text x="360" y="518" font-size="11.5" fill="#2A2520" text-anchor="middle">does not add a surface. It widens every surface routed through it.</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">The five expansions couple through one shared substrate rather than standing as five separate surfaces to defend in turn. That substrate is the identity that acts and the authority it carries, so a weakness there widens every surface routed through it.</figcaption>
</figure>

### Democratized builders

The set of people shipping production behavior has stopped matching the set of people the security program was built around. A product manager wiring together a workflow, an analyst writing a script an agent will run, a marketer standing up a site through a generation tool: each is now a builder, and most of them never touch the paved road the security team paved. The surface expands because authorship expands, and authorship expanded past the org chart.

### Public APIs

Every capability exposed as an API is a capability exposed to whatever calls it, including the things you did not anticipate calling it. APIs were always an attack surface. What changed is that agents now discover and chain them at machine speed, so an interface that was safe because no human bothered to abuse it is no longer protected by that friction.

### Agent access

The moment an agent reads, writes, or acts on a system, the trust boundary moves to wherever the agent reaches. That is almost always somewhere the security team never controlled: a mailbox, a wiki, a shared drive, a vendor's data. Agent access converts every readable surface into a potential injection point and every writable surface into a potential action the attacker gets for free. You do not close that by sanitizing input; you close it by bounding what the agent can do regardless of what it reads, which is the [substrate](01-three-layer-model.md#substrate) answer [Boundary Enforcement](04-boundary-enforcement.md) takes up.

### Autonomous reasoning

A system that decides its own next step is a system whose behavior is no longer fully enumerable in advance. Autonomous reasoning means the path from input to action is chosen at runtime, under conditions the designer did not specify, which breaks the assumption that you can threat-model a fixed set of flows. The surface is no longer the code; it is the space of decisions the system can reach.

### LLM workflows

Chaining models into pipelines compounds every property above. Output from one step becomes instruction for the next, trust domains blur across hops, and a single poisoned input can propagate through a workflow that no one drew on a whiteboard. LLM workflows are where the other four expansions interlock, the place a weakness in any one of them becomes a weakness in the whole.

## The comprehension crisis

The expansions would be manageable if comprehension kept pace. It does not. Code is now generated faster than humans can build semantic understanding of it, and the gap is widening. The exact multiple is less important than the direction, and the direction is documented: [DORA's 2025 research](https://dora.dev/research/2025/dora-report/) finds AI adoption still pulling against delivery stability even as it lifts throughput, and frames AI as an amplifier of whatever discipline an organization already has. [GitClear's analysis](https://www.gitclear.com/ai_assistant_code_quality_2025_research) of 211 million lines finds copy-pasted code rising and refactoring falling as assistants take over more of the authorship. Addy Osmani has named the local form of this as [comprehension debt](https://www.oreilly.com/radar/comprehension-debt-the-hidden-cost-of-ai-generated-code/), the growing gap between how much code exists and how much anyone still understands it. The crisis is the systemic condition; the debt is how it accrues in a single codebase, and its tell is false confidence rather than the mounting friction technical debt announces. The gap is the crisis: an organization that ships software it does not understand cannot tell a vulnerability from a feature, cannot scope a blast radius, and cannot answer the only question that matters in an incident, which is what this system can actually do.

Call comprehension a competitive advantage and you overstate it. The shallow version is commoditizing fast: anyone can point a tool at a repo and get a picture back, so that much is becoming table stakes rather than an edge. What stays hard, and stays valuable, is a model that captures what the system was meant to do. Even so, the real point is the downside. An organization that cannot say what its software does cannot see the vulnerabilities that emerge between parts that each work as designed, cannot scope a blast radius, and cannot answer the question every incident asks. Losing comprehension is worse than falling behind a competitor. It puts you below the line where security decisions are even possible.

### The subject of comprehension

The chapter has not said who comprehends. The answer is no one person, and no one person ever did. No single engineer holds a million-line codebase end to end, with or without an assistant. Rather than creating that limit, AI pushed it down onto systems that once fit inside a team's head. So comprehension at scale is a property of a model you can question rather than a fact about a person: a current map of how the system behaves, kept current by people or machines. A map is only worth keeping if it is reconciled against the code as the code changes. One built once and left to drift misleads more than no map at all.

A model is also worth only what it captures. Build it from passing tests and the traces you happened to keep, and it records what was checked rather than what the system was meant to do. It will answer with confidence and be wrong. [Bryan Finster](https://bdfinst.medium.com/5-minute-devops-spec-driven-development-isnt-new-3a5c552efc95) gives the order it has to respect: tests describe behavior, behavior drives the code, the code is the implementation detail. But tests describe behavior only by example, and an agent can pass every one of them while missing the intent of the change. Capturing intent, beyond a sample of assertions, is the hard part and the unsolved one. A model that skips it is a map that lies with a straight face.

You can see the gap in your own estate before you can measure it. The same signals that show up in the aggregate show up in your own delivery telemetry: review times stretching as change sets grow, more changes merging with no real review, reverts and reworks climbing in the weeks after a feature ships. None of these is a comprehension score, and you should distrust anyone who sells you one. They are weather rather than a gauge.

What a leader can ask instead is whether the gap is widening:

- Is the share of your estate that someone on your team can actually explain growing or shrinking as you ship faster?
- When your engineers accept generated code, do you know whether they verified it or waved it through?
- In your last incident, did someone already know what the affected system could do, or did you have to read the code to find out?

None of these has a number, and none of them lets you rank yourself against another company. That is the point. They are answerable only about yourself, and only directionally.

None of this competes with containment. It sits beside it. A capability boundary holds whether or not anyone understands the code behind it, which is the point [Boundary Enforcement](04-boundary-enforcement.md) makes and the reason it survives a comprehension gap. Comprehension is the floor under a different thing: the decisions around the boundary. What to bound, where the guardrail belongs, whether the boundary still fits what the system is for. The boundary contains without understanding. Comprehension is how you decide what to contain and audit that the boundary you placed was the right one. The differentiator was never that you understand your code. It is that you make better containment decisions because you can interrogate what the system does. They fail in different places, so an estate needs both.

## Why this is combinatorial rather than additive

Threat modeling that counts components and sums them assumes the components are independent: a breach of one does not get you another. The agentic-security field has already watched that assumption break and built for it. [MAESTRO](../appendix/references.md#agentic-security-capability-control-and-the-confused-deputy) models how a weakness cascades from one layer into the next rather than staying where it started; [ASTRIDE](../appendix/references.md#agentic-security-capability-control-and-the-confused-deputy) extends the classic STRIDE method with a category for the agent-specific attacks older models miss. That direction is right. SF² takes the same observation up a level and names what the cascade runs through. These five expansions couple through one substrate rather than standing independent: the identity that acts and the authority it carries. That substrate is what each expansion changes: who holds authority, what can invoke it, where it reaches, whether its use is predictable, how it propagates across hops. A democratized builder standing up an agent with public-API access inside an LLM workflow is one actor rather than four problems in a row, under one identity, with one grant of authority, and each expansion widens what that single grant can reach. This is [the confused deputy](../appendix/references.md#agentic-security-capability-control-and-the-confused-deputy) at the scale of the whole surface, and it is not theoretical. When a [trojaned email MCP server](../appendix/references.md#agent-and-mcp-supply-chain) silently copied every message it sent to an attacker across more than a thousand installs, the send-authority the agents had granted it became exfiltration no one authorized. Call the result multiplicative if the word helps; the word is a model of reach rather than a number you can compute. What it names is the coupling: a weakness in that shared substrate, such as an over-broad credential or an agent whose actions trace to no one, widens every surface routed through it rather than adding one.

The same coupling runs inward. Spread across many hands the expansions compound; folded into one general-purpose agent they collapse into a single actor that ships behavior, discovers and chains APIs, reads and acts across systems, picks its own next step, and runs its own multi-step workflow. A coding agent wired into your repositories, your build pipeline, your cloud, and your ticket queue is exactly that: one process, one identity, one set of credentials, all five expansions at once. It looks simpler, fewer seams to draw, and it is more dangerous, because the blast radius of all five now sits inside one grant of authority that no static scope statement can narrow without taking away the generality that made it worth building. Consolidating concentrated the risk rather than dropping it.

How do you know which regime you are actually in? From your own incidents rather than the math. Pull your last several and ask of each whether the compromise stayed contained or crossed into a system that was supposed to be separate; the share that crossed over is the coupling you have, and it is where the next dollar goes. That snapshot names the regime. The falsifiable claim is the trend behind it: bound the shared substrate and that crossed-over share should fall over the following quarters, and if it does not, the containment thesis is wrong for your org and the coupling lived somewhere else. Either way the defensive consequence is the same, and it is the rest of this layer. A surface coupled through one authority context and outrunning human comprehension cannot be defended by inspecting it more carefully; it has to be defended by containing what any part of it is allowed to do, so that a compromise stays confined to the authority actually granted and the coupled surfaces fall back to independent ones. Inspection loses for a second reason too, one that does not turn on review speed. Offensive tooling is built from public, transferable knowledge, so a technique that breaks one target tends to break others. Defense depends on the opposite, the private and idiosyncratic shape of your own environment, which is [exactly where machine learning generalizes worst](https://joshuasaxe181906.substack.com/p/ai-security-notes-582025). You cannot close the gap by pointing the same class of model at defense, because the attacker's model travels and yours does not. The asymmetry is structural rather than a snapshot of today's capability, and it points the same way: contain what the surface can do rather than try to out-model the adversary. That is the substrate-layer argument [Boundary Enforcement](04-boundary-enforcement.md) takes up next.

## See also

- [The Unit of Defense](03-unit-of-defense.md): what the threat surface targets
- [Boundary Enforcement](04-boundary-enforcement.md): capability containment as the answer at the substrate layer
- [Input Trust Is a Category Error](06-input-trust-is-a-category-error.md): the architectural unsolvable inside this surface
- [SF² Contextual Modifiers · Attack Landscape](../05-context/attack-landscape.md): base framework
