# The Three-Layer Model

!!! info "Coadaptive Layer · Chapter 01"
    **This chapter extends:** SF² Foundation (Section 01): the unit-of-analysis question.
    **Scope:** the substrate / dynamic / unit decomposition that organizes the rest of this layer.

AI-era security pressure shows up at three distinct levels, and conflating them is how defenses end up aimed at the wrong layer. The substrate is what the system is allowed to do. The dynamic is how untrusted input moves through it. The unit is who, human and agents together, is actually operating. The rest of this layer is organized around that decomposition, because a defense that belongs at the substrate fails when you try to enforce it in the dynamic, and a threat that lives in the dynamic cannot be fixed by redrawing the unit.

## Substrate

The substrate is the static, boundary-enforceable layer: the capabilities a component holds, the authority a request carries, what the infrastructure permits before any input arrives. This is where defense is most reliable, because it does not depend on predicting behavior. It depends on bounding it. A component that cannot reach the data cannot leak the data, whatever it is told to do.

The substrate is where [Boundary Enforcement](04-boundary-enforcement.md) and [Authorization at Agent Scale](05-authorization-at-agent-scale.md) operate. Capability-based limits and authority that flows with the request are both substrate moves: they decide in advance what is possible, so that runtime cleverness, the system's or the attacker's, has less room to matter.

The substrate has a floor of its own. Every boundary it enforces is built out of something more primitive: the cryptography that makes a capability token unforgeable, the silicon that makes an enclave a wall, and for AI systems the model weights that are themselves an asset to be protected. Call it the layer beneath the substrate. It rarely shows up in a threat model because it usually holds, but when it gives way it gives way silently. When a certificate authority is breached, every certificate it ever signed is suspect at once, and nothing in the layers above announces the change. A capability limit is only as sound as the signature scheme behind it.

That floor is also why static is too strong a word. The substrate is static in one sense only: it is set before input arrives, not changed at runtime. Over time it dates, because the primitives underneath it age, and the property that keeps it honest is crypto-agility, the ability to swap a primitive without rebuilding everything above it. TLS is the good case: the industry retired RC4 and SHA-1 by configuration, and is now slotting post-quantum key exchange into the same protocol without touching the applications on top. The primitive changed and the stack stood. But agility buys only forward safety, and that limit is worth stating plainly. It cannot re-lock data an attacker already copied under old encryption, which is the harvest-now-decrypt-later problem, and it cannot reach a device already fielded with no update path. Modern hardware roots of trust rotate their algorithms in place; the ones that cannot are the ones nobody can get to.

## Dynamic

The dynamic is the interaction-pattern layer: how tokens, instructions, and data move through the system at runtime, and where trust domains meet. This is the layer that cannot be made safe by construction, because it is where untrusted input lives and adapts. The honest goal here is containment and provenance, not prevention.

The dynamic is where [The AI-Era Threat Surface](02-ai-era-threat-surface.md) expands and where [Input Trust Is a Category Error](06-input-trust-is-a-category-error.md) bites. Prompt injection is a dynamic-layer problem with no dynamic-layer solution, which is exactly why its answer is pushed down to the substrate. Knowing which layer a threat lives on is what tells you which layer to defend it from.

## Unit

The unit is the operating-cell layer: who is doing the work now that the work is done by a human and their agents together. This is the newest of the three and the one the older frameworks have no slot for, because they assumed the unit was a person. When the unit becomes a paired-intelligence cell, the questions of org design, role, and what property keeps the cell safe all change.

The unit is where [The Unit of Defense](03-unit-of-defense.md) operates, and where the holobiont idea surfaces as vocabulary: the human and the agents as one unit of selection, defended as a pair rather than separately. The concept earns its keep here as a way to see the cell clearly, not as a name the layer flies under.

The unit is also the least stable of the three layers. A boundary in the substrate stays put until you change it. The unit does not: the split between what the human does and what the agents do keeps moving as the agents take on more. So the unit is the layer most likely to shift under you. Put your defensive weight on the substrate beneath it, not on where the line happens to sit today.

## See also

- [The AI-Era Threat Surface](02-ai-era-threat-surface.md): what changes at the *dynamic* layer
- [The Unit of Defense](03-unit-of-defense.md): what changes at the *unit* layer
- [SF² Foundation: Software Factory Definition](../01-foundation/software-factory-definition.md): base framework
