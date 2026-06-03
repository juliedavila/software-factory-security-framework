# The AI-Era Threat Surface

!!! info "Coadaptive Layer · Chapter 02"
    **This chapter extends:** SF² Contextual Modifiers (Section 05) · Attack Landscape.
    **Also flags:** SF² Adaptive Capacity (Section 02): comprehension-crisis addendum lives here in v0.6 (chapter-only per D2).
    **Scope:** the five attack surface expansions and the comprehension crisis.

The AI era did not add five new threats to the board. It multiplied the board. Democratized builders, public APIs, agent access, autonomous reasoning, and LLM workflows each expand the attack surface, and they expand it together, each one widening the blast radius of the others. Underneath all five sits the comprehension crisis: code is now generated faster than any human process can understand it, and a surface you cannot comprehend is a surface you cannot review by the old methods.

## The five attack surface expansions

Each expansion is a real shift in what the organization exposes. Named individually so they can be reasoned about, they are not meant to be defended individually, because they do not arrive individually.

### Democratized builders

The set of people shipping production behavior has stopped matching the set of people the security program was built around. A product manager wiring together a workflow, an analyst writing a script an agent will run, a marketer standing up a site through a generation tool: each is now a builder, and most of them never touch the paved road the security team paved. The surface expands because authorship expands, and authorship expanded past the org chart.

### Public APIs

Every capability exposed as an API is a capability exposed to whatever calls it, including the things you did not anticipate calling it. APIs were always an attack surface. What changed is that agents now discover and chain them at machine speed, so an interface that was safe because no human bothered to abuse it is no longer protected by that friction.

### Agent access

The moment an agent reads, writes, or acts on a system, the trust boundary moves to wherever the agent reaches. That is almost always somewhere the security team never controlled: a mailbox, a wiki, a shared drive, a vendor's data. Agent access converts every readable surface into a potential injection point and every writable surface into a potential action the attacker gets for free.

### Autonomous reasoning

A system that decides its own next step is a system whose behavior is no longer fully enumerable in advance. Autonomous reasoning means the path from input to action is chosen at runtime, under conditions the designer did not specify, which breaks the assumption that you can threat-model a fixed set of flows. The surface is not the code. The surface is the space of decisions the system can reach.

### LLM workflows

Chaining models into pipelines compounds every property above. Output from one step becomes instruction for the next, trust domains blur across hops, and a single poisoned input can propagate through a workflow that no one drew on a whiteboard. LLM workflows are where the other four expansions stop being separate concerns and start being one system that fails as a whole.

## The comprehension crisis

The expansions would be manageable if comprehension kept pace. It does not. Code is now generated faster than humans can build semantic understanding of it, by something on the order of two and a half to one and widening. The gap is the crisis: an organization that ships software it does not understand cannot tell a vulnerability from a feature, cannot scope a blast radius, and cannot answer the only question that matters in an incident, which is what this system can actually do.

The strategic claim follows from the gap. The enterprise that maintains semantic comprehension of its software estate holds a structural advantage over the one that does not, because comprehension is what every downstream security decision depends on. This is the AI-era amendment to [Adaptive Capacity](../02-stewardship/adaptive-capacity.md): the condition to cultivate is not faster generation, it is sustained understanding of what was generated.

## Why this is combinatorial, not additive

Traditional threat modeling counts surfaces and sums them. That under-counts this one badly, because the expansions multiply. A democratized builder standing up an agent with public-API access inside an LLM workflow is not four problems in a row; it is one surface whose risk is the product of all four, where each factor widens what the others can reach. Add a comprehension gap on top and no human in the loop can see the whole shape at once.

The defensive consequence is the rest of this layer. A surface that grows multiplicatively and outruns human comprehension cannot be defended by inspecting it more carefully. It has to be defended by containing what any part of it is allowed to do, which is the substrate-layer argument [Boundary Enforcement](04-boundary-enforcement.md) takes up next.

## See also

- [The Unit of Defense](03-unit-of-defense.md): what the threat surface targets
- [Boundary Enforcement](04-boundary-enforcement.md): capability containment as the answer at the substrate layer
- [Input Trust Is a Category Error](06-input-trust-is-a-category-error.md): the architectural unsolvable inside this surface
- [SF² Contextual Modifiers · Attack Landscape](../05-context/attack-landscape.md): base framework
