# Third-Party

Third-Party asks a harder question than Supply Chain: do you know what you handed off, and who holds the bag when it fails? This is the function you delegated rather than the code you embedded. The payments processor, the data warehouse, the identity-verification provider, the cloud, the SIEM. Some of these are infrastructure. Others are core to how your product delivers value at all. Either way, you do not run them, and you cannot see inside them.

That is the defining trait of this condition: opacity. You will never inspect your cloud provider's hypervisor or audit your SIEM vendor's internal controls directly. Third-Party is weather. You cannot change it. You can only prepare for it. The way it fails is that they got breached, and you inherited the consequence anyway.

## Liability moves; responsibility does not

A shared-responsibility model splits the work, and a contract can move a capped slice of the financial loss to the vendor through indemnities, a security super-cap, and a matched cyber policy. That money moves only after the failure, and only the part you could put a number on. It does not move the work of preventing the failure, or the duty to answer for it. Responsibility shifts; accountability never leaves you. Regulators treat it the same way: a board stays responsible for an outsourced function as if it ran in-house. When your identity provider leaks your users' credentials, your users do not call the vendor. They call you.

This is where compliance gets misread. Compliance is a market-access key, not a security proof. A vendor earns FedRAMP to unlock the federal market, not to become safe to depend on. The attestation expands their addressable market and retires none of your risk. Read a SOC 2 or a FedRAMP authorization as evidence that a vendor cleared a bar, never as a transfer of the responsibility that stays with you.

This is the [Foundation accountability premise](../01-foundation/software-factory-definition.md) narrowed to the functions you delegate. No law lets you transfer the responsibility itself, only a capped slice of its cost, and that is why it cannot be argued away.

## Operating is not delegating

The agent era splits the vendor relationship in two. A **provider** ships the model or tool; you take it on the same terms as any other opaque dependency, and everything above applies. An **operator** runs an agent in its own environment, wired to its own credentials, data, and systems. Most organizations running AI agents are operators, and operating is not delegating. You did not build the model and cannot see how it reasons, but the authority it acts with is something you assembled: the token it carries, the systems it can reach, the actions it can take.

When you delegate a function you hand off the work, and a contract can move a capped slice of the cost back. When you operate an agent you keep the work, and usually carry the cost alone. How it goes wrong depends on what feeds it. Exposed to input you do not control, the agent is the confused-deputy case. Kept to internal, trusted inputs, the risk runs through a compromised account, an insider, or its own error. Either way the agent widens the reach of each. Either way it acts with the authority you gave it, and that reach is yours to bound.

But you can only bound it as finely as the platforms beneath it allow: some reach you scope, some the platform sets for you. Your agent needs to read one project and the platform's token reads them all. To post a comment, it has to hold a scope that also lets it delete the repository. You did not choose that breadth and you often cannot remove it. The provider defines what is expressible in the authorization vocabulary; you stay [accountable](../01-foundation/software-factory-definition.md) for what you express, and for choosing that substrate at all. The residual is yours to answer for twice over. A capability limit is only as fine as the platform's model allows; [boundary enforcement](../10-coadaptive/04-boundary-enforcement.md) is where you attenuate within that floor. Bound what you can at the layers you control, compensate at runtime for what the substrate cannot express, and count coarse primitives as a real cost when you choose what to build on.

Regulators are drawing the same line. The [EU AI Act](https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai) separates the provider that builds and places a system from the deployer, the operator in this chapter's terms, that uses it under its own authority, and it shifts a deployer toward provider obligations precisely as it modifies and repurposes the system. The more you wire an agent into your operation, the more of it lands on you.

## The operator beneath the operator

The chain rarely stops at one link. A provider you operate is often itself an operator, running a service or an agent wired to sub-providers you never contracted: a native integration, an OEM model under the vendor's label, a sub-processor three hops back. The vendor's AI feature turns out to be someone else's model, and your data is routed to a party whose name is on no contract you signed.

Three things compound down that chain. Opacity deepens: you could not see inside your direct provider, and you can see less inside the provider it leans on. Reach widens: the access the composition can exercise does not stop where your contract does, and it lands at a layer where you hold no controls and no recourse. And the liability cap reaches only the link you signed, so the matched cyber policy answers for your direct vendor, never for the sub-operator that actually leaked your data.

You cannot inventory what you cannot see, and here you cannot see in advance two layers down. That is the case that shows most cleanly why the answer is containment, not inspection. You do not certify the sub-dependency; you bound what the whole composition can reach and spend, so a failure at a link you never contracted spends only the authority you granted at the boundary. What the boundary cannot do is claw back data the sub-operator already holds and leaks; that residual is carried by contingency and contract, not by the boundary. [Boundary enforcement](../10-coadaptive/04-boundary-enforcement.md) is built for exactly the dependency you cannot inventory.

## When a vendor dies

A breach is the failure you rehearse for most, but it is not the only way a vendor leaves you holding the bag. A vendor can also simply end: it goes bankrupt, it sunsets the product, an acquirer buys it and turns it off. The outage you fail over from is temporary; this one is permanent. When Facebook [shut down Parse](https://techcrunch.com/2017/01/30/facebooks-parse-developer-platform-is-shutting-down-today/), roughly six hundred thousand apps had a year to migrate or go dark. That sunset ended softly, because Facebook open-sourced the server so dependents could host it themselves, which is what source escrow is meant to deliver. Most do not end that softly. The preparation has the same shape as the breach plan and is rarely written beside it: know which vendors are load-bearing, what your product does the day one is gone for good, and what continuity you secured while the vendor still existed to sign it. That continuity is the concrete part: source escrow, a self-host right, a wind-down clause.

## What cultivating it looks like

Because you cannot inspect the vendor, you cultivate this condition by preparing for the day it fails.

- **Contain the blast radius before you need to.** Scope what each vendor can reach to the minimum the function requires. The vendor breach you survive is the one whose reach you bounded in advance.
- **Assume the breach and rehearse it.** Know which vendors are load-bearing, what happens to your product when one goes dark, for a day or for good, or goes hostile, and how you fail over. A contingency plan you have never tested is a hope.
- **Make the shared-responsibility line explicit.** Most third-party incidents trace to a boundary nobody owned because each side assumed the other had it. Write down who secures what, then check the assumption against reality.
- **Monitor the surface you can see.** You cannot watch their internals, but you can watch what they expose to you: the access they hold, the data crossing the boundary, the certifications lapsing.

## How tending differs by position

A [Craft](../03-positioning/two-axis-model.md) shop tends Third-Party with a short list of critical vendors and a tested plan for the two or three it cannot live without. A [Lean](../03-positioning/two-axis-model.md) enterprise tends it with vendor risk scoring, pre-approved integration patterns, and failover rehearsed as a matter of course. Both are doing the same thing: bounding what an opaque dependency can do to them.

## Where it shows up

Third-Party failures are bounded by [Runtime](runtime.md) containment, which is why the two conditions are read together. And the line between Third-Party and [Supply Chain](supply-chain.md) is the line between what you delegated and what you embedded. Keep them apart on the page so they stay apart in the work: one is an opacity problem you prepare for, the other a comprehension problem you can fix.

---

## Next Steps

[:octicons-arrow-right-24: Process](process.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Supply Chain](supply-chain.md){ .md-button }
