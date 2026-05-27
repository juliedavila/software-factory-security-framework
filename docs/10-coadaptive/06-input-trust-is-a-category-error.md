# Input Trust Is a Category Error

!!! info "Coadaptive Layer · Chapter 06"
    **This chapter extends:** SF² Runtime Stewardship (Section 02), SF² Contextual Modifiers · Attack Landscape (Section 05).
    **Scope:** prompt injection as architecturally unsolvable, and what to do about it.

> *[Julie writes — opening. The claim Julie holds publicly: **prompt injection is architecturally unsolvable**. Treating prompt injection as a "bug to fix" is the category error. It is a property of LLM-input-as-instruction, not a defect of any particular implementation. Mitigate, don't solve.]*

## Why prompt injection is architecturally unsolvable

> *[Julie writes — the why. Inputs that are also instructions cannot be defensively parsed. Treating it as input-validation is the category error.]*

## Bargury, Greshake, Schulhoff — the taxonomy

> *[Julie writes — citation hooks. Michael Bargury (Zenity, Echoleak). Kai Greshake (indirect prompt injection). Sander Schulhoff (HackAPrompt taxonomy). What each contributes to the architectural-unsolvability case.]*

## Mitigate, don't solve

> *[Julie writes — what mitigation looks like at the substrate layer (capability containment from Ch 04), at the dynamic layer (provenance and isolation), at the unit layer (human in the loop where the stakes earn it). The boring-seams handle lands here: the most consequential failures don't happen inside the glamorous prompt; they happen at the boundary between trust domains.]*

## See also

- [The AI-Era Threat Surface](02-ai-era-threat-surface.md) — where this architectural unsolvable sits in the larger threat picture
- [Boundary Enforcement](04-boundary-enforcement.md) — substrate-layer containment as the answer
- [Authorization at Agent Scale](05-authorization-at-agent-scale.md) — authorization companion
