# Third-Party

Third-Party asks a harder question than Supply Chain: do you know what you handed off, and who holds the bag when it fails? This is the function you delegated rather than the code you embedded. The payments processor, the data warehouse, the identity-verification provider, the cloud, the SIEM. Some of these are infrastructure. Others are core to how your product delivers value at all. Either way, you do not run them, and you cannot see inside them.

That is the defining trait of this condition: opacity. You will never inspect your cloud provider's hypervisor or audit your SIEM vendor's internal controls directly. Third-Party is weather. You cannot change it. You can only prepare for it. The way it fails is that they got breached, and you inherited the consequence anyway.

## Liability moves; responsibility does not

A shared-responsibility model splits the work between you and the vendor, and a contract can shift the legal liability to them. Neither shifts the responsibility, and no certificate hands it back. When your identity provider leaks your users' credentials, your users do not call the vendor. They call you.

This is where compliance gets misread. Compliance is a market-access key, not a security proof. A vendor earns FedRAMP to unlock the federal market, not to become safe to depend on. The attestation expands their addressable market and retires none of your risk. Read a SOC 2 or a FedRAMP authorization as evidence that a vendor cleared a bar, never as a transfer of the responsibility that stays with you.

## What cultivating it looks like

Because you cannot inspect the vendor, you cultivate this condition by preparing for the day it fails.

- **Contain the blast radius before you need to.** Scope what each vendor can reach to the minimum the function requires. The vendor breach you survive is the one whose reach you bounded in advance.
- **Assume the breach and rehearse it.** Know which vendors are load-bearing, what happens to your product when one goes dark or goes hostile, and how you fail over. A contingency plan you have never tested is a hope.
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
