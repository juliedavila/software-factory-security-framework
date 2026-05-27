# Input Trust Is a Category Error

!!! info "Coadaptive Layer · Chapter 06"
    **This chapter extends:** SF² Runtime Stewardship (Section 02), SF² Contextual Modifiers · Attack Landscape (Section 05).
    **Scope:** prompt injection as architecturally unsolvable, and what to do about it.

Prompt injection is architecturally unsolvable.

That is not a claim about implementation quality. It is a claim about category. When the same channel carries data and instructions, no defensive parser can reliably tell them apart, because the distinction does not exist in the channel. You can sand the surface forever and never reach the bottom.

The instinct in our field is to file prompt injection under input validation and assign it to whoever owns the framework. That instinct is wrong, and it has cost real ground. Defenders treating prompt injection as SQL injection 2.0 are under-resourced. They are also working in the wrong direction. SQL injection has a structural fix because SQL has a parser; LLMs have no parser, and the input itself is the program.

The right doctrine starts from accepting that. Stop trying to solve it. Mitigate it where it lands, contain it where it can be contained, and design assuming an attacker is in the prompt.

## Why prompt injection is architecturally unsolvable

The argument is short.

LLM inference treats every token in the context window as material it may act on. There is no input/instruction boundary inside the model. Wrapping user content in tags, prepending system prompts, fine-tuning for "ignore the user's directives": these are surface conventions, not architectural separations. The attacker controls part of the context window; the attacker controls part of the program.

Defensive parsing presumes a grammar to parse against. There is no grammar. The model's behavior on adversarial input is a function of its training, its temperature, its context, and the surrounding tokens, all of which are continuous and shift under load. A "robust" prompt is a prompt that has not yet found its adversarial twin.

If the field can accept that TLS does not prevent denial of service and that signing does not prevent compromise of the signing key, it can accept that LLM input validation does not prevent prompt injection. The category-error label is not rhetorical. It is the load-bearing claim of this chapter.

## The taxonomy: Bargury, Greshake, Schulhoff

The taxonomy of failure modes is by now well-mapped.

**Michael Bargury** (Zenity Labs) demonstrated indirect prompt injection across MCP and agent-mediated channels with the Echoleak class: Copilot leaks via crafted documents shared through legitimate channels. Bargury's framing is that the trust boundary moves to wherever the agent reads, which is almost always somewhere the security team has never controlled.

**Kai Greshake** introduced indirect prompt injection as a category in 2023 with *Not what you've signed up for*, and has expanded the surface through demonstrations across Bing Chat, search-result injection, and retrieval-augmented attacks. The operational lesson: anything the agent reads is part of the agent's attack surface.

**Sander Schulhoff** (HackAPrompt) produced the first community-scale prompt injection taxonomy through the HackAPrompt competition. The corpus shows a long tail of techniques and a converging insight: defense in the prompt does not generalize. Defense at the boundary does.

Read together, prompt injection is not one bug. It is a property of the substrate. The defenders who get this earliest stop investing in prompt-side hardening and start investing in capability containment.

## Mitigate, don't solve

The doctrinal move is to push the defense into layers where defense is real.

**Substrate (Chapter 04 territory).** Capability containment. The agent should not be able to do what the attacker asks because the agent does not have the capability. Boundary-enforced authority is what mitigates the unsolvable, not better prompts.

**Dynamic (the interaction-pattern layer).** Provenance and isolation. Know which tokens came from which trust domain; never let untrusted tokens cross into the action-bearing context without an explicit checkpoint. This is engineering, not prompting.

**Unit (Chapter 03 territory).** Human in the loop at the stakes that earn it. Not the default, not the bottleneck the paved road was supposed to eliminate, but a deliberate, narrow point of human authority for actions whose downside is catastrophic.

The boring-seams thesis lands here. The most consequential prompt injection failures are not the spectacular ones. They are the quiet ones at the boundary between trust domains: the place where the agent's reading surface meets the user's request, where the document carries something the document was not supposed to carry, where the MCP server forwards what it shouldn't. Glamorous prompts do not break systems. Trust-domain seams do.

A doctrine that accepts the category error and works one layer down is a doctrine that ships.

## See also

- [The AI-Era Threat Surface](02-ai-era-threat-surface.md): where this architectural unsolvable sits in the larger threat picture
- [Boundary Enforcement](04-boundary-enforcement.md): substrate-layer containment as the answer
- [Authorization at Agent Scale](05-authorization-at-agent-scale.md): authorization companion
