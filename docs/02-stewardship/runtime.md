# Runtime

Runtime asks whether you can sense what production is doing right now and respond before a user does. Everything upstream of here is preparation. Runtime is where the system meets real adversaries, real load, and real consequence, and where the question stops being whether you built it well and becomes whether you can tell what it is doing.

The lever is observability in the full sense: seeing what happens, and seeing it in time to act. Detection that arrives after the customer has already noticed is just confirmation.

## Sense and respond

A healthy Runtime condition is a short loop. Something anomalous happens, you see it quickly, you contain it, you recover, and the system keeps serving everyone it was already serving. The three intervals that matter are time to detect, time to contain, and time to recover. Each one measures how tight the loop is rather than a grade you pass.

## When the alarm goes unanswered

The failure Runtime rehearses for is the missed detection, the intrusion you never saw. It has a second failure that is worse, because it happens after everything worked: you saw it, and nothing followed.

In late 2013 Target was running a [$1.6 million malware-detection system, watched around the clock by a security team in Bangalore](https://www.bloomberg.com/news/articles/2014-03-13/target-missed-warnings-in-epic-hack-of-credit-card-data). When the attackers loaded their exfiltration tool, [the system caught it and fired, on November 30 and again on December 2](https://www.commerce.senate.gov/wp-content/uploads/media/doc/2014%200325%20Target%20Kill%20Chain%20Analysis.pdf). Bangalore saw the alerts and escalated them to the response team in Minneapolis. The detection did its job: the signal was real, and it was early. Then no one acted on it, and forty million card numbers left over the following two weeks.

This is the failure noise produces. The signal was not missing; it arrived in a stream that had trained everyone to look past it. A surface that emits a thousand low-value alerts a day does not fail loudly on the one that matters. It fails quietly, by being ignored on schedule. Detection you do not act on is not detection. It is a log of the breach you could have stopped, written in advance.

So the condition is a loop, and the loop is only as fast as its slowest human link. Coverage no one can read buys nothing. One high-fidelity signal wired to a response someone is accountable to answer beats total visibility no one is watching. It is why Runtime is won in the response: time to contain is the interval that decides the condition, and the seeing was rarely the hard part.

## What cultivating it looks like

- **Detect on behavior, beyond signatures.** Know what normal looks like for your system so the abnormal stands out. Static rules catch yesterday's attack; a sense of baseline catches the one you have not seen.
- **Rehearse the response.** A playbook no one has run is only a document. The teams that contain incidents quickly are the ones that have practiced containing them.
- **Protect the data at the boundary.** The breaches that land here rarely turn on an exotic exploit. Year after year, the path that gets used is a stolen credential or a misconfiguration. Least privilege, encrypted data, and audited access close it.
- **Design for graceful failure.** Systems that degrade rather than collapse under pressure buy you the minutes response needs. Recovery is part of the condition rather than a separate discipline.

## How tending differs by position

A [Craft](../03-positioning/two-axis-model.md) shop tends Runtime with the monitoring its cloud provider gives it and a plan for the incidents it can actually foresee. A [Lean](../03-positioning/two-axis-model.md) enterprise tends it with correlated observability, automated response for known patterns, and threat hunting for the unknown ones. Both run the same loop of sense and respond, at different radii.

## Where it shows up

Runtime is where the other conditions come to be judged. The uninventoried dependency from [Supply Chain](supply-chain.md), the vendor breach from [Third-Party](third-party.md), the gap a drifting [Process](process.md) stopped catching: each of them, if it is going to hurt you, hurts you here. A strong Runtime condition is the last containment when an upstream condition was weak. It does not substitute for tending them.

---

## Next Steps

[:octicons-arrow-right-24: Adaptive Capacity](adaptive-capacity.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Process](process.md){ .md-button }
