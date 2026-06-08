# Runtime

Runtime asks whether you can sense what production is doing right now and respond before a user does. Everything upstream of here is preparation. Runtime is where the system meets real adversaries, real load, and real consequence, and where the question stops being whether you built it well and becomes whether you can tell what it is doing.

The lever is observability in the full sense: not only seeing, but seeing in time to act. Detection that arrives after the customer has already noticed is just confirmation.

## Sense and respond

A healthy Runtime condition is a short loop. Something anomalous happens, you see it quickly, you contain it, you recover, and the system keeps serving everyone it was already serving. The three intervals that matter are time to detect, time to contain, and time to recover. Each one measures how tight the loop is, not a grade you pass.

The failure mode is rarely a missing tool. It is noise. A monitoring surface that emits a thousand low-value alerts trains its responders to ignore the one that matters. One high-fidelity signal that triggers a real response is worth more than full coverage no one can read.

## What cultivating it looks like

- **Detect on behavior, not only signatures.** Know what normal looks like for your system so the abnormal stands out. Static rules catch yesterday's attack; a sense of baseline catches the one you have not seen.
- **Rehearse the response.** A playbook no one has run is a document, not a capability. The teams that contain incidents quickly are the ones that have practiced containing them.
- **Protect the data at the boundary.** Most breaches turn on a credential or a misconfiguration, not an exotic exploit. Least privilege, encrypted data, and audited access close the paths that actually get used.
- **Design for graceful failure.** Systems that degrade rather than collapse under pressure buy you the minutes response needs. Recovery is part of the condition, not a separate discipline.

## How tending differs by position

A [Craft](../03-positioning/two-axis-model.md) shop tends Runtime with the monitoring its cloud provider gives it and a plan for the incidents it can actually foresee. A [Lean](../03-positioning/two-axis-model.md) enterprise tends it with correlated observability, automated response for known patterns, and threat hunting for the unknown ones. Both run the same loop of sense and respond, at different radii.

## Where it shows up

Runtime is where the other conditions come to be judged. The uninventoried dependency from [Supply Chain](supply-chain.md), the vendor breach from [Third-Party](third-party.md), the gap a drifting [Process](process.md) stopped catching: each of them, if it is going to hurt you, hurts you here. A strong Runtime condition is the last containment when an upstream condition was weak. It does not substitute for tending them.

---

## Next Steps

[:octicons-arrow-right-24: Adaptive Capacity](adaptive-capacity.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Process](process.md){ .md-button }
