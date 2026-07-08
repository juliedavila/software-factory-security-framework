# v0.5 → v0.6 Migration

v0.6 changed two sets of names that v0.5 readers may have cited: the four strategic positions and the Section 02 stewardship areas. This page is the single source of truth for both. The strategic-position crosswalk and its reasoning come first; the Section 02 conditions crosswalk is at the end.

## The crosswalk

| Axes | v0.5 name | v0.6 name |
|------|-----------|-----------|
| Small reach + Lower Readiness | Niche Players | **Craft** |
| Small reach + Higher Readiness | Visionaries | **Studio** |
| Large reach + Higher Readiness | Leaders | **Lean** |
| Large reach + Lower Readiness | Challengers | **Mass** |

## Why the names changed

The v0.5 names (Visionaries, Leaders, Niche Players, Challengers) were identical to Gartner's Magic Quadrant labels. That collision carried two costs: it implied an analyst-firm ranking the framework never intended, and the credibility of those labels was falling as the analyst model itself came under pressure. SF² needed names in its own register.

The v0.6 names come from how software actually gets built. They map the readiness axis to a production-method spectrum: how repeatable the work is.

## Reading the axes

The vertical axis (Operational Readiness) is the **lean transformation**. Moving up means the work becomes more repeatable and a failure provably stays contained. Moving up the readiness axis, from Craft to Studio and Mass to Lean, is repeatability rising, which is the core SF² thesis. The horizontal axis was Operational Complexity (scale) through v0.6; v0.7 redefined it as **Blast Radius**, the inherent reach of a failure if containment fails. The four names and the readiness story below are unchanged.

- **Craft** (Small reach + Lower): non-repeatable hand-work, a narrow grant by hand.
- **Studio** (Small reach + Higher): narrow grant, floor built, the small-reach ideal end state.
- **Mass** (Large reach + Lower): ungoverned reach, no floor.
- **Lean** (Large reach + Higher): large reach with the floor built, the large-reach ideal end state.

## Two terms that mislead if read casually

1. **Mass is Lean's large reach without Lean's floor, not Ford's 1913 assembly line.** Under the v0.7 reach axis, Mass is ungoverned scale: large inherent reach with no proven containment. The border that matters is against Lean, not against the historical mass-production repeatability triumph. A reader fluent in manufacturing history should not invert the axes on the strength of the word alone.
2. **Craft names a method, not a price tag.** Craft means non-repeatable hand-work, not quality, premium positioning, or boutique branding. A Craft organization can do excellent security work; it just does it by hand each time.

## Names that were considered and dropped

- **Artisanal** carried premium and boutique baggage that flattered the wrong cell. The underlying logic (non-repeatable hand-work) was kept as Craft.
- **Lego** is a registered trademark, a legal disqualifier on a CC-licensed framework.
- **Omakase** describes high-skill bespoke work, which is low repeatability, so it pointed at the wrong cell.
- **Foundry** and **Refinery** collided with existing products (Cloud Foundry, Palantir Foundry) and blurred into each other.

## Citing the old names

If you are referencing material that used the v0.5 names, the table above is the mapping. The framework's substance (the two axes, the four positions, the movement paths) did not change. Only the labels did.

## Section 02: stewardship areas became security conditions

In v0.5, Section 02 was titled *Universal Risk Stewardship Responsibilities*: five areas you steward. v0.6 reframes them as conditions you cultivate, splits the old Supply Chain area along the embedded/delegated line, and recasts Continuous Learning as the cross-cutting Adaptive Capacity condition.

| v0.5 (areas you steward) | v0.6 (conditions you cultivate) |
|--------------------------|---------------------------------|
| Supply Chain Stewardship | Supply Chain (#1), embedded code, comprehension lever |
| Third-Party Stewardship | Third-Party, delegated functions, containment lever |
| Process Stewardship | Process, security produced by the build |
| Runtime Stewardship | Runtime, sense and respond |
| Continuous Learning | Adaptive Capacity, the cross-cutting resilience of the whole |

The URL path stays `02-stewardship/` for stability, so existing links keep working. The one file that moved is `continuous-learning.md`, now `adaptive-capacity.md`.

The deeper change is register, not labels. v0.5 framed these as responsibilities you own and steward, scored on a maturity chart. v0.6 frames them as living conditions with no passing grade, cultivated and assessed rather than owned and managed. The [Universal Security Conditions overview](../02-stewardship/overview.md) explains why that distinction carries weight.
