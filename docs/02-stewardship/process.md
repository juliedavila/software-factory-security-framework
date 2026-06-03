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

## How tending differs by position

A [Craft](../03-positioning/two-axis-model.md) shop tends Process with a handful of checks wired into one pipeline. A [Studio](../03-positioning/two-axis-model.md) shop, simple but operationally ready, can automate from the start rather than building manual steps it will replace within a year. A [Lean](../03-positioning/two-axis-model.md) enterprise tends it with a platform team whose product is the paved road itself. The trap is the [Mass](../03-positioning/two-axis-model.md) pattern: heavy process that produces ceremony instead of security, gates that delay releases without reducing risk.

## Where it shows up

Process is the condition through which the others are either cultivated or skipped. Its own failure mode is quiet. Nothing breaks today: the build keeps shipping, the checks keep passing, and the security those checks were meant to produce slowly stops being produced because the pipeline drifted and no one was watching the pipeline itself.

---

## Next Steps

[:octicons-arrow-right-24: Runtime](runtime.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Third-Party](third-party.md){ .md-button }
