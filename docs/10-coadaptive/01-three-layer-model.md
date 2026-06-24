# The Three-Layer Model

!!! info "Coadaptive Layer · Chapter 01"
    **This chapter extends:** [SF² Foundation (Section 01)](../01-foundation/software-factory-definition.md): the unit-of-analysis question.
    **Scope:** the substrate / dynamic / unit decomposition that organizes the rest of this layer.

AI-era security pressure shows up at three distinct levels, and conflating them is how defenses end up aimed at the wrong layer. The substrate is what the system is allowed to do. The dynamic is how untrusted input moves through it. The unit is who, human and agents together, is actually operating. The rest of this layer is organized around that decomposition, because a defense that belongs at the substrate fails when you try to enforce it in the dynamic, and a threat that lives in the dynamic cannot be fixed by redrawing the unit.

<figure>
  <svg viewBox="0 0 720 510" role="img" aria-labelledby="sf2-3l-title sf2-3l-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:720px;width:100%;height:auto;font-family:'Source Serif 4',Georgia,serif;">
    <title id="sf2-3l-title">SF² three-layer model</title>
    <desc id="sf2-3l-desc">A vertical stack of three layers plus a foundation. Top: the Unit layer, who is operating (human and agents), the newest and least stable layer. Middle: the Dynamic layer, how untrusted input moves through the system, where the goal is containment and provenance, not prevention. Bottom: the Substrate layer, what the system is allowed to do, boundary-enforceable and where defense is most reliable. Beneath the substrate sits a foundation layer of cryptography, silicon, and model weights, which fails silently. Defensive weight should sit low, on the substrate, because the unit at the top is the least stable layer.</desc>
    <defs>
      <marker id="sf2-3l-arrow" markerWidth="12" markerHeight="12" refX="5" refY="9" orient="auto"><path d="M1 1 L5 9 L9 1" fill="none" stroke="#2C4A6B" stroke-width="1.8"/></marker>
    </defs>
    <rect x="40" y="20" width="500" height="92" rx="6" fill="#DDE6EF" stroke="#2C4A6B" stroke-width="1.6"/>
    <text x="60" y="50" font-size="18" font-weight="700" fill="#2C4A6B">Unit</text>
    <text x="60" y="72" font-size="13" fill="#2A2520">Who is operating: human + agents, paired as one cell.</text>
    <text x="60" y="92" font-size="13" fill="#2A2520">The newest layer, and the least stable: the human/agent split keeps moving.</text>
    <rect x="40" y="126" width="500" height="92" rx="6" fill="#B9C9DA" stroke="#2C4A6B" stroke-width="1.6"/>
    <text x="60" y="156" font-size="18" font-weight="700" fill="#1F3850">Dynamic</text>
    <text x="60" y="178" font-size="13" fill="#2A2520">How untrusted input moves through the system at runtime.</text>
    <text x="60" y="198" font-size="13" fill="#2A2520">Safe by construction is off the table: aim for containment and provenance.</text>
    <rect x="40" y="232" width="500" height="104" rx="6" fill="#2C4A6B" stroke="#21384F" stroke-width="1.6"/>
    <text x="60" y="264" font-size="18" font-weight="700" fill="#FFFFFF">Substrate</text>
    <text x="60" y="286" font-size="12.5" fill="#EAF1F7">What it is allowed to do: capabilities, authority, infrastructure limits.</text>
    <text x="60" y="305" font-size="12.5" fill="#EAF1F7">Boundary-enforceable. Defense is most reliable here: bound behavior, not predict it.</text>
    <text x="60" y="325" font-size="12.5" font-style="italic" fill="#C9D8E6">A component that cannot reach the data cannot leak it, whatever it is told to do.</text>
    <rect x="40" y="346" width="500" height="44" rx="5" fill="#B8956A" stroke="#9A7A52" stroke-width="1.4"/>
    <text x="60" y="366" font-size="14" font-weight="700" fill="#2A2520">Layer beneath the substrate</text>
    <text x="60" y="383" font-size="12.5" fill="#2A2520">cryptography &#183; silicon &#183; model weights. Usually holds; when it fails, it fails silently.</text>
    <line x1="572" y1="46" x2="572" y2="288" stroke="#2C4A6B" stroke-width="2" marker-end="url(#sf2-3l-arrow)"/>
    <text x="590" y="62" font-size="12.5" font-weight="700" fill="#A6450B">least stable</text>
    <text x="590" y="262" font-size="12.5" font-weight="700" fill="#00553F">most reliable</text>
    <text x="590" y="282" font-size="12.5" font-weight="700" fill="#2C4A6B">defend here</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">The three layers, with the foundation beneath the substrate. Put defensive weight low, on the substrate: the unit at the top is the least stable layer, so a defense anchored there moves under you.</figcaption>
</figure>

## Substrate

The substrate is the static, boundary-enforceable layer: the capabilities a component holds, the authority a request carries, what the infrastructure permits before any input arrives. This is where defense is most reliable, because it does not depend on predicting behavior. It depends on bounding it. A component that cannot reach the data cannot leak the data, whatever it is told to do.

The substrate is where [Boundary Enforcement](04-boundary-enforcement.md) and [Authorization at Agent Scale](05-authorization-at-agent-scale.md) operate. Capability-based limits and authority that flows with the request are both substrate moves: they decide in advance what is possible, so that runtime cleverness, the system's or the attacker's, has less room to matter.

The substrate has a floor of its own. Every boundary it enforces is built out of something more primitive: the cryptography that makes a capability token unforgeable, the silicon that makes an enclave a wall, and for AI systems the model weights that are themselves an asset to be protected. Call it the layer beneath the substrate. It rarely shows up in a threat model because it usually holds, but when it gives way it gives way silently. When a certificate authority is breached, every certificate it ever signed is suspect at once, and nothing in the layers above announces the change. A capability limit is only as sound as the signature scheme behind it.

That floor is also why static is too strong a word. The substrate is static in one sense only: it is set before input arrives, not changed at runtime. Over time it dates, because the primitives underneath it age, and the property that keeps it honest is crypto-agility, the ability to swap a primitive without rebuilding everything above it. TLS is the good case: the industry retired RC4 and SHA-1 by configuration, and is now slotting post-quantum key exchange into the same protocol without touching the applications on top. The primitive changed and the stack stood. But agility buys only forward safety, and that limit is worth stating plainly. It cannot re-lock data an attacker already copied under old encryption, which is the harvest-now-decrypt-later problem, and it cannot reach a device already fielded with no update path. Modern hardware roots of trust rotate their algorithms in place; the ones that cannot are the ones nobody can get to.

There is a second way static is too strong a word, and it sits one level up from the cryptography. A bounded component cannot be talked into harm it has no capability to do, and that holds as a substrate property rather than a behavioral hope for as long as the component cannot act on the layer that bounds it. The boundary is enforced below the component, in infrastructure the component cannot reach, which is why an attacker writing into its input cannot spend authority the component was never granted. The condition that keeps the property honest is reachability: the moment a component can read, write, or reason about its own enforcement layer, the guarantee stops being something you get by construction and becomes something you have to prove. Self-modification is the most common route to that reachability, not the condition itself. A frozen component with a confused-deputy path to its own policy store is already across the line, and an agent that rewrites its own reasoning but cannot touch the infrastructure that contains it is not.

When a component can reach its own enforcement layer, the guarantee does not vanish. It relocates. The boundary you can still trust narrows from the whole component to a smaller core, and inside that core it gets stronger, not weaker. The first move is containment: bound the blast radius so a failure at the enforcement layer is survivable by design, a substrate property you can buy and deploy now. The second, where the stakes justify the cost, is verification: a machine-checked core that no amount of attacker cleverness can argue past, the way [seL4](https://sel4.systems/) carries a proof that no execution path violates its access-control invariant. Most boundaries in production are asserted, not proven, and that difference is now load-bearing. AI lowers the cost of finding a path through an asserted boundary and changes nothing about a verified one.

That pressure is already real, and not yet a wall. AI systems can find exploitable flaws in enforcement-layer code: DARPA's [AIxCC](https://www.darpa.mil/news/2025/aixcc-results) systems found 18 real vulnerabilities across 54 million lines of code in 2025, and Google's [Big Sleep](https://cloud.google.com/blog/products/identity-security/cloud-ciso-perspectives-our-big-sleep-agent-makes-big-leap) found live zero-days in substrate software like SQLite. The capability is symmetric, and as of 2026 the measurable edge still sits with defenders, though the margin is [narrowing and contested](https://www.csis.org/blogs/strategic-technologies-blog/beyond-autonomous-attacks-reality-ai-enabled-cyber-threats). The signal that matters is not a date but a change of default: components shipped with the standing ability to reach their own enforcement layer. Re-architect toward contained, verified cores as that becomes common, and accept the asserted-boundary risk until it does.

## Dynamic

The dynamic is the interaction-pattern layer: how tokens, instructions, and data move through the system at runtime, and where trust domains meet. This is the layer that cannot be made safe by construction, because it is where untrusted input lives and adapts. The honest goal here is containment and provenance, not prevention.

The dynamic is where [The AI-Era Threat Surface](02-ai-era-threat-surface.md) expands and where [Input Trust Is a Category Error](06-input-trust-is-a-category-error.md) bites. Prompt injection is a dynamic-layer problem with no dynamic-layer solution, which is exactly why its answer is pushed down to the substrate. Knowing which layer a threat lives on is what tells you which layer to defend it from.

## Unit

The unit is the operating-cell layer: who is doing the work, now that the work is not always done by a person. This is the newest of the three and the one the older frameworks have no slot for, because they assumed the unit was a person. The unit is whatever cell holds the authority to act, and its composition slides: a lone human, a human and their agents paired, a lone agent running on its own. When that composition changes, the questions of org design and role change with it. The property that keeps the cell safe does not: it is adaptive capacity whatever the cell is made of.

The unit is where [The Unit of Defense](03-unit-of-defense.md) operates, and where the holobiont idea surfaces as vocabulary: the human and the agents as one unit of selection, defended as a pair rather than separately. The concept earns its keep here as a way to see the cell clearly, not as a name the layer flies under.

The unit is also the least stable of the three layers. A boundary in the substrate stays put until you change it. The unit does not: the split between what the human does and what the agents do keeps moving as the agents take on more. So the unit is the layer most likely to shift under you. Put your defensive weight on the substrate beneath it, not on where the line happens to sit today.

## See also

- [The AI-Era Threat Surface](02-ai-era-threat-surface.md): what changes at the *dynamic* layer
- [The Unit of Defense](03-unit-of-defense.md): what changes at the *unit* layer
- [SF² Foundation: Software Factory Definition](../01-foundation/software-factory-definition.md): base framework
