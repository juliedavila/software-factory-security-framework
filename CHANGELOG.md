# Changelog

All notable changes to the Software Factory Security Framework (SF²) are documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
The version source of truth is the "About This Framework" block in
[`docs/appendix/references.md`](docs/appendix/references.md); annotated git tags mirror it.

## [1.3.3] — 2026-09-21

- Audited the corpus against the revised writing rules and remediated. A July 2026 pass had
  replaced the banned ", not Y" construction with "rather than Y" corpus-wide; the banned string
  went to zero while the rhetorical reflex survived at higher density, and two glossary
  definitions were softened from categorical exclusions into preferences in the process. Both
  regressions are reversed and the reflex is thinned where it was doing no work.
- Corrected a dropped negation in Movement Paths, where "Studio and Lean are both finished end
  states" contradicted the pitfall box below it, which names treating a top-row position as a
  finish line as the risk.
- Corrected the Silent Egress mechanism in Use Cases, which described data flowing inbound
  through an outbound channel, the reverse of the cited paper and of the page's own footnote.
  Verified the 95 percent figure against arXiv:2602.22450 and stated it identically at all three
  places the corpus cites it.
- Restored the canonical Blast Radius and Operational Readiness definitions on the AI Integration
  page, the only page that had dropped the containment-proof half of Operational Readiness and
  the "not by headcount" qualifier that the v0.7 axis rename exists to carry.
- Rebuilt three orientation and disclaimer passages that had been stamped into four and five
  files each, promoting the "not by headcount" claim out of a parenthetical and making the
  composite-illustration disclaimer disclaim in plain terms.
- Fixed the Mass implementation guide's Critical Truth callout, which named three of the page's
  five critical requirements, and corrected a stale "current release" marker in the evolution
  timeline.

## [1.3.2] — 2026-07-08

- Aligned the landing page and the docs index with the framework's position on the five
  conditions: replaced "in priority order" with the tempo framing (Supply Chain leads because
  it degrades fastest), so the intro pages no longer assert a rigid hierarchy across what are
  three different kinds of condition.

## [1.3.1] — 2026-07-08

- Made the three kinds of Universal Security Condition explicit: added a Kind column
  (domain, mechanism, system property) to the conditions table, with a short typology note
  so that a domain, a mechanism, and a system property are not scored on one maturity scale.
- Added a companion diagram showing Adaptive Capacity as the emergent output of the four
  conditions and the seams between them, and reconciled the Adaptive Capacity framing across
  the section: it runs across the four as the resilience of the whole system, rather than a
  foundation beneath them.

## [1.3.0] — 2026-07-08

- Reconciled the positioning model's framing: Lean is no longer described as "the goal
  position." Both top-row positions are ideal end states for their reach (Studio for small
  reach, Lean for large), and higher operational readiness stays the universal move.
- Added a reach-assessment tie-break rule for when the reach signals are split.
- New landing page for sf2framework.com.
- Trimmed the "#1 since 2017" callout from the landing page. The rationale is retained in
  the Supply Chain docs and the glossary.

## [1.2.0] — 2026-07-07

- Fixed a scoring-logic contradiction in the evaluation criteria (Organizational Change
  is scored directly, not reverse-flipped); corrected two worked-example totals accordingly.
  Priority bands and score range (Max 45 / Min 9) unchanged.
- Scrubbed reflexive antithesis phrasing from the atelier engagement section.
- Cosmetic and readability line-edits across several sections.

## [1.1.0] — 2026-06-26

- Academic grounding: contingency-theory lineage, primary-source citations, and
  timeline provenance added to place the framework in its scholarly context.

## [1.0.0] — 2026-06-24

- First complete, usable release. "The 0.x series was me finding the shape; 1.0 is the
  shape, ready to use." A living document — established, never finished.

## [0.11.0] — 2026-06-24

- Added the Defender Cost Economics principle, the defender-side mirror of Adversary Economics.

## [0.10.0] — 2026-06-24

- Pressure-tested the investment criteria, offense/defense asymmetry, and the CaMeL
  pattern against outside thinking.

## [0.9.0] — 2026-06-23

- The editorial release: corpus-wide prose and clarity pass.
- Patch series 0.9.1–0.9.5: diagram sizing, label legibility, translucent label plates,
  and PDF SVG-text font-fallback fixes.

## [0.8.0] — 2026-06-22

- Visual and hybrid-brand release: introduced the framework's visual identity.
- 0.8.1: downloadable PDF fidelity — full render with embedded brand fonts.

## [0.7.0] — 2026-06-22

- Renamed the second assessment axis to Blast Radius.
- Added 14 content items and ran a corpus-wide first-read readability pass.

## [0.6.0] — 2025-11

- Coadaptive layer hardening pass. The first version shared publicly for community feedback; the 1.x line followed in the mid-2026 completion sprint. (Date approximate: this predates the repo's June-2026 tag, which reflects when v0.6 landed in git, not its public release.)

## [0.5.0] — 2025-10-14

- Automatic PDF generation.

## [0.4.0] — 2025-10-13

- Migrated the five core framework sections from the source Google Doc to the website.

## [0.3.0] — 2025-10-13

- Completed Framework Relationships mapping against major security frameworks.
- Patch series 0.3.1–0.3.4: AI integration and incremental fixes.

## [0.2.0] — 2025-10-13

- Core framework content migration complete.

## [0.1.0] — 2025-10-13

- Initial SF² framework setup.
