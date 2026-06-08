# Universal Security Conditions

## Conditions, not controls

A control is something you check off. It passes or it fails, it lives as a line in a spreadsheet, and half the energy around it goes into arguing the spirit of the control rather than the state of the system. A condition is a different kind of object. It is something you cultivate and keep alive, and it has no passing grade. The security posture of a software factory is a set of conditions you tend, not a register of controls that cleared an audit. Like anything living, they start to degrade the moment you stop tending them.

Your [strategic position](../03-positioning/two-axis-model.md) tells you *how* to tend them. A Craft shop and a Lean enterprise cultivate the same conditions with very different tools, budgets, and timelines. The conditions themselves do not move with size, stack, or industry. They are what every software factory has to keep alive regardless of where it sits on the map, which is why this section comes before the positioning work and not after it.

There are four conditions you can hand to a team, and one you cannot.

## The four you can staff

| Condition | The question it asks | The lever |
|-----------|----------------------|-----------|
| **[Supply Chain](supply-chain.md)** (#1) | Do I know what is *inside* what I shipped? | Comprehension: SBOM, provenance, signing, pinning |
| **[Third-Party](third-party.md)** | Do I know what I *handed off*, and who holds the bag when it fails? | Containment: blast-radius limits, shared-responsibility clarity, failover |
| **[Process](process.md)** | Does the way we build *produce* security, or bolt it on afterward? | Feedback: security arriving while the work happens, not in a review at the end |
| **[Runtime](runtime.md)** | Can we *sense* what production is doing right now and respond before a user does? | Observability: detection, response, recovery |

These four map to functions you can name, staff, and put on an org chart. That is deliberate. A condition you cannot assign to anyone is a condition nobody tends.

### Supply Chain and Third-Party are not the same condition

They look like one thing. They are not, and the line between them is where a lot of programs quietly fail.

**Supply Chain** is what you pull *in*: third-party libraries, base images, sidecars, the code you embed and then ship as if it were your own. Once you embed it, the liability is yours. You can also do something about it, because the artifact is in your hands. You can read it, generate an SBOM, sign it, pin it, rebuild it. Supply Chain is soil: you can amend it. The way it fails is that you did not look.

**Third-Party** is what you hand *off*: the payments processor, the data warehouse, the identity-verification provider, the cloud, the SIEM. Some of these are infrastructure; others are core to how your product delivers value at all. You delegate the function, and a shared-responsibility model splits the work. A contract can shift the legal liability to them; it cannot shift the responsibility, and no certificate hands it back. Compliance is a market-access key, not a security proof: a vendor earns FedRAMP to unlock the federal market, not to become safe to depend on, and its attestation retires none of your risk. You still have to do your part and trust they are doing theirs. You cannot directly inspect or observe what they run. Third-Party is weather: you cannot change it, you can only prepare for it. The way it fails is that they got breached and you inherited it anyway.

Lumping both under "supply chain" because the word has stretched to cover everything external is the move that hides the seam. The two conditions take different muscles. One is a comprehension problem: you embedded something and never read it. The other is an opacity problem: you delegated something you cannot directly inspect, and no contract or certificate changes that. Keep them apart on the page so they stay apart in the work.

### Supply Chain is still the loudest

Of the four, Supply Chain has been the one to watch for years, roughly since adversaries moved discovery to automation at internet scale and started finding vulnerable dependencies faster than defenders could inventory them. This is about tempo, not a ranking of which matters more. The supply-chain condition degrades faster and gets exploited sooner than the rest, so it earns first call on attention and budget. Treat it as the default #1 and argue yourself *down* from there if your context warrants.

## The one you cannot staff: Adaptive Capacity

The fifth condition does not get a team, and that is the point.

**Adaptive Capacity** is whether the system as a whole can absorb a surprise it was not designed for and keep working. It is the old Continuous Learning idea, finally named for what it actually is. The other four conditions each map to a function you can put on an org chart. This one does not. It is closer to the resilience of an ecosystem than to anything you could install or assign. The capacity of a living system to take a shock, a drought or a new predator, and reorganize without collapsing is spread across the whole web rather than held in any single species or place. It is never finished, because the system and the things stressing it keep changing against each other. You assess whether the system *has* this capacity. You cannot hand it to a team.

It runs across the other four rather than beside them. A healthy Adaptive Capacity shows up as blameless post-incident review that changes something, as feedback loops that shorten, as the organization sensing a shift in the threat landscape and adjusting before it gets hit rather than after. When it is missing, the other four can each look fine on a maturity chart while the system stays brittle, because nothing is teaching it to bend.

This is the condition that carries the framework's resilience thinking, and it is the seam where this base framework meets the [Coadaptive Security layer](../10-coadaptive/overview.md). The idea comes from ecology. A system survives shocks when it can reorganize as new ones arrive, and that capacity lives in the whole web rather than in any single part. Security works the same way. Certify a system once and trust it to hold, and it falls behind, because the things trying to break it keep changing while it stands still. Adaptive Capacity measures whether the whole system is still adapting faster than its adversaries. That is the question worth asking.

## How the conditions hold each other up

The conditions are coupled, not a checklist, and the coupling is where leverage hides:

- A weak **Supply Chain** condition rarely announces itself in Supply Chain. It surfaces at **Runtime**, as the incident you trace back to a dependency you never inventoried.
- **Process** is where the other conditions either get cultivated or get skipped. A build pipeline that produces provenance is tending Supply Chain for free.
- **Third-Party** failures are bounded by **Runtime** containment. The vendor breach you survive is the one whose blast radius you limited in advance.
- **Adaptive Capacity** is how all four improve at all. Without it, you are just repainting the same four walls on a fixed cadence.

Invest where a single move strengthens more than one condition at once. Those are the moves worth sequencing first.

## Implementation varies, the conditions don't

The conditions are universal. How you cultivate them is not.

A three-person Craft shop and a five-thousand-person Lean enterprise both have to tend Supply Chain, but one does it with a single well-chosen managed scanner and the other with a platform team and a paved road. The [Strategic Positioning](../03-positioning/two-axis-model.md) section is how you decide which version of "tending" your organization can actually sustain. Read the conditions here as the *what*. Read positioning as the *how*.

!!! info "Naming note (v0.5 → v0.6)"
    In v0.5 this section was "Universal Risk Stewardship Responsibilities," organized as five areas you steward. v0.6 reframes them as conditions you cultivate, splits the old Supply Chain area along the embedded/delegated line, and recasts Continuous Learning as the cross-cutting Adaptive Capacity condition. The [migration crosswalk](../appendix/quadrant-rename-v06.md) maps every old name to its v0.6 home.

## Next Steps

Start with the condition that degrades fastest:

[:octicons-arrow-right-24: Supply Chain (#1)](supply-chain.md){ .md-button .md-button--primary }
[:octicons-arrow-right-24: Third-Party](third-party.md){ .md-button }
[:octicons-arrow-right-24: Adaptive Capacity](adaptive-capacity.md){ .md-button }

---

[:octicons-arrow-left-24: Back to Foundation](../01-foundation/software-factory-definition.md){ .md-button }
