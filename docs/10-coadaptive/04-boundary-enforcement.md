# Boundary Enforcement

!!! info "Coadaptive Layer · Chapter 04"
    **This chapter extends:** SF² Process Stewardship (Section 02), SF² Implementation Guides (Section 06).
    **Scope:** capability-based security as the substrate-layer answer when code review doesn't scale.

Code review was the security control that assumed a human could read what shipped. That assumption is gone. When generation outruns comprehension, inspecting the code more carefully is a losing race against a faster machine. The architectural answer is to stop relying on inspection and start relying on boundaries: capability-based security enforced by infrastructure, so the question is not whether someone read the change but whether the system was ever able to do the dangerous thing in the first place. This is the move away from meat-gated security and toward paved roads.

## Why code review doesn't scale to AI velocity

The bandwidth problem from [Chapter 02](02-ai-era-threat-surface.md) lands here as direct operational pressure. If generation outruns comprehension, as that chapter lays out, then human review is the bottleneck and the gap only widens. You can hire more reviewers and lose anyway, because the generation side scales with compute and the review side scales with headcount. Any control whose throughput is capped by human reading speed is a control that AI velocity has already outrun.

The trap is responding by demanding more review. That makes security the thing standing between the team and shipping, which is the failure mode the rest of this chapter names. The way out is to change what review is for: not gating every change, but designing the boundaries within which any change, reviewed or not, is safe to run.

## Capabilities, not code inspection

Capability-based security is an old and well-founded tradition. Saltzer and Schroeder set out the principles in [*The Protection of Information in Computer Systems*](https://web.mit.edu/saltzer/www/publications/protection/) (1975), least privilege chief among them, and systems from EROS to FreeBSD's Capsicum carried the model forward. It is not a research curiosity; the same model runs in production today. A component holds explicit, narrow authority to do specific things and holds nothing else, so the boundary is the load-bearing surface, not the line of code. A component that has no capability to exfiltrate data cannot be talked into exfiltrating data, no matter what an attacker writes into its input.

That property is what makes capabilities the right substrate for AI-era systems. You cannot reliably predict what a generated component or a reasoning agent will try to do. You can decide, in advance and at the infrastructure layer, what it is able to do. The authority question and the confused-deputy problem that rides on it are taken up in [Authorization at Agent Scale](05-authorization-at-agent-scale.md); this chapter's claim is narrower and prior: enforce authority at the boundary, because inspecting behavior does not scale and bounding capability does.

This is clean when the component is narrow. A function that reads one table, a service that writes one queue, can be handed exactly that authority and nothing more. The harder case, and the one that matters most for AI-era systems, is the general agent. Its value is that it can do many things, so a model that says "grant the narrowest authority and withhold the rest" looks self-defeating: withhold enough to make the agent safe and you have made it useless. This is the strongest objection to boundary enforcement at agent scale, and it has to be answered, not waved away.

The answer is to separate what an agent could do from what any single request is permitted to do. The agent holds broad latent capability, the capacity to act across many tools and surfaces. Each request runs under an attenuated capability that names exactly what this action may do and can only be narrowed further, never widened. Breadth stays available, so the agent is still useful. Authority is scoped per request, so a compromised or confused agent spends only what this task was handed, never the full reach of the agent behind it. This is attenuation, and it is already how production capability systems scope delegated authority ([see references](../appendix/references.md#capability-and-least-privilege)). [Authorization at Agent Scale](05-authorization-at-agent-scale.md) carries it down the delegation chain, where any holder can add a constraint that narrows authority and none can widen it.

## Meat-gated security at agent scale

Meat-gated security is any control that depends on a human standing in the path of the work. A person approves the deploy, signs off on the access, eyeballs the diff. At human authorship speed, that was tolerable. At agent scale it becomes the bottleneck the system was supposed to remove, and worse, a bottleneck that quietly rubber-stamps because the human cannot actually evaluate the volume flowing past them. A queue that approves everything because it has no time to reject anything is not a control; it is theater with a person in it.

Paved roads are the affirmative pattern. Build the safe path so it is also the easy path, enforce the boundaries in the infrastructure that path runs on, and let builders move at speed inside it without a human gate on every step. Reserve human authority for the narrow set of actions whose downside is catastrophic, where the judgment is worth the latency. The goal is not to remove humans from security; it is to spend their attention where it changes the outcome, and to let the boundary hold everywhere else.

## See also

- [The Unit of Defense](03-unit-of-defense.md): what boundaries enable for paired-intelligence operation
- [Authorization at Agent Scale](05-authorization-at-agent-scale.md): the authorization companion to boundary enforcement
- [SF² Process Stewardship](../02-stewardship/process.md): base framework
