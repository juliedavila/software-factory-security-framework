# Process

Process asks whether the way you build produces security, or bolts it on afterward. The other three conditions are mostly about things: dependencies, vendors, running systems. This one is about the machine that makes the things. A build pipeline either emits security as a byproduct of how it works, or it leaves security to a review at the end that everyone has learned to route around.

The lever is feedback. Security that arrives while the work is happening gets fixed while the work is happening. Security that arrives in a gate three days later arrives as an interruption, and interruptions get bypassed.

## Security as a property of the build

The aim is a build that makes the insecure version harder to ship than the secure one, not simply more checks. When provenance, dependency inventory, secret scanning, and policy checks run as part of the pipeline rather than alongside it, they stop being security activities at all and become properties of how code moves to production.

This is also where the other conditions get cultivated for free. A pipeline that emits an SBOM is tending [Supply Chain](supply-chain.md). A pipeline that refuses a hardcoded secret closes a [Runtime](runtime.md) exposure before it exists. Process is the leverage point because a single change to the build strengthens more than one condition at once.

## What cultivating it looks like

- **Put the feedback where the work is.** Checks that run in minutes, inside the pull request, with a clear path to the fix. A scan that takes two hours to return runs once and then gets disabled.
- **Make secrets structurally hard to leak.** Secrets that never enter source control, scanning that catches the ones that try, short-lived credentials over long-lived ones. The goal is a pipeline where leaking a secret takes effort.
- **Codify the secure default.** Paved roads, vetted templates, configurations that are safe before anyone tunes them. The secure path should be the path of least resistance.
- **Watch for the bypass.** A rising rate of skipped checks is the signal that the process has become friction instead of feedback. Measure it, and treat a bypass as a defect in the process rather than in the developer.

## When the checks pass and catch nothing

Process fails in the quietest way of the four. Nothing breaks. The build keeps shipping, the pipeline stays green, every check reports success. What stops, silently, is the security those checks were installed to produce. A control does not have to be removed to fail; it only has to keep running after it has stopped meaning anything, while no one is watching the pipeline itself.

Equifax is the case study. In March 2017 a [patch for a known Apache Struts vulnerability](https://oversight.house.gov/wp-content/uploads/2018/12/Equifax-Report.pdf) went out, and the process meant to apply it never reached the server that needed it. That gap alone was the way in. But the detail that turns a missed patch into a story about drift is what the attackers walked past on the way out: the tool meant to inspect encrypted traffic for exactly this kind of exfiltration had been running on a certificate that expired in January 2016, and no one had noticed for nineteen months. The scanner was installed, funded, and green. It was also blind. The breach was found the day someone renewed the certificate and the tool, restored to sight, immediately lit up with the activity it had been missing the whole time. Data on 148 million people left over seventy-six days, past a guard that had been asleep since before anyone thought to check.

This is what drift looks like: not a control that was never bought, but one that quietly stopped working while every dashboard stayed green. The patch queue that no longer reaches production, the scanner whose rules last updated two years ago, the gate that has been auto-approving since a config change no one logged. None of it announces itself, because a broken check and a passing check produce the same green until the day you need the difference.

So the discipline Process demands is not more checks; it is watching the checks. Treat the pipeline itself as a system that decays and must be tended. Verify that a control still does what its green light claims, on a cadence, the way you would test a smoke detector you are betting the building on. A check no one audits is a check that has already started to drift.

## How tending differs by position

A [Craft](../03-positioning/two-axis-model.md) shop tends Process with a handful of checks wired into one pipeline. A [Studio](../03-positioning/two-axis-model.md) shop, simple but operationally ready, can automate from the start rather than building manual steps it will replace within a year. A [Lean](../03-positioning/two-axis-model.md) enterprise tends it with a platform team whose product is the paved road itself. The trap is the [Mass](../03-positioning/two-axis-model.md) pattern: heavy process that produces ceremony instead of security, gates that delay releases without reducing risk.

## Where it shows up

A Process failure rarely announces itself as a Process failure. It surfaces as the [Supply Chain](supply-chain.md) dependency that shipped without an SBOM, or the [Runtime](runtime.md) incident that traces back to a secret the pipeline should have caught. Process is the leverage point precisely because it sits upstream of the others; when it drifts, they drift with it, one quiet green build at a time.

---

## Next Steps

[:octicons-arrow-right-24: Runtime](runtime.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Third-Party](third-party.md){ .md-button }
