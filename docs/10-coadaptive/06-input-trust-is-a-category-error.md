# Input Trust Is a Category Error

!!! info "Coadaptive Layer · Chapter 06"
    **This chapter extends:** SF² Runtime Stewardship (Section 02), SF² Contextual Modifiers · Attack Landscape (Section 05).
    **Scope:** prompt injection as architecturally unsolvable, and what to do about it.

Prompt injection is architecturally unsolvable.

The problem is the category, not the quality of anyone's parser. When the same channel carries data and instructions, no defensive parser can reliably tell them apart, because the distinction does not exist in the channel. You can sand the surface forever and never reach the bottom.

The instinct in our field is to file prompt injection under input validation and assign it to whoever owns the framework. That instinct is wrong, and it has cost real ground. Defenders treating prompt injection as SQL injection 2.0 are under-resourced. They are also working in the wrong direction. SQL injection has a structural fix because SQL has a parser; LLMs have no parser, and the input itself is the program.

The right doctrine starts from accepting that. Stop trying to solve it. Mitigate it where it lands, contain it where it can be contained, and design assuming an attacker is in the prompt.

## Why prompt injection is architecturally unsolvable

The argument is short.

LLM inference treats every token in the context window as material it may act on. There is no input/instruction boundary inside the model. Wrapping user content in tags, prepending system prompts, fine-tuning for "ignore the user's directives": these are surface conventions, not architectural separations. The attacker controls part of the context window; the attacker controls part of the program.

Defensive parsing presumes a grammar to parse against. There is no grammar. The model's behavior on adversarial input is a function of its training, its temperature, its context, and the surrounding tokens, all of which are continuous and shift under load. A "robust" prompt is a prompt that has not yet found its adversarial twin.

If the field can accept that TLS does not prevent denial of service and that signing does not prevent compromise of the signing key, it can accept that LLM input validation does not prevent prompt injection. The category-error label is the load-bearing claim of this chapter.

There is theory behind this, not just field intuition. Wolf and colleagues proved it formally in [*Fundamental Limitations of Alignment in Large Language Models*](https://arxiv.org/abs/2304.11082) (ICML 2024): for any behavior the model exhibits with nonzero probability, there exists a prompt that elicits it, and the probability rises with prompt length. Any alignment that attenuates an undesired behavior without erasing it is reversible by a long-enough adversarial prompt. Prompt-side defense is bounded by a theorem, not by engineering effort.

## The taxonomy: Bargury, Greshake, Schulhoff

The taxonomy of failure modes is by now well-mapped.

**Michael Bargury** (Zenity) demonstrated [*Living off Microsoft Copilot*](https://i.blackhat.com/BH-US-24/Presentations/US24-MichaelBargury-LivingoffMicrosofCopilot.pdf) at Black Hat 2024: indirect prompt injection that turns Copilot against its own user through content the agent reads automatically, hidden in a shared document or an email the victim never has to open. He called the result remote copilot execution. His framing is that the trust boundary moves to wherever the agent reads, which is almost always somewhere the security team has never controlled. The class crossed from demonstration to production exploit in 2025, when Aim Security's [EchoLeak](https://arxiv.org/abs/2509.10540) (CVE-2025-32711) achieved zero-click data exfiltration from Microsoft 365 Copilot through a single crafted email.

**Kai Greshake** introduced indirect prompt injection as a category in 2023 with [*Not what you've signed up for*](https://arxiv.org/abs/2302.12173), and has expanded the surface through demonstrations across Bing Chat, search-result injection, and retrieval-augmented attacks. The operational lesson: anything the agent reads is part of the agent's attack surface.

**Sander Schulhoff** (HackAPrompt) produced the first community-scale prompt injection taxonomy through the [HackAPrompt competition](https://aclanthology.org/2023.emnlp-main.302/) (EMNLP 2023), where roughly 3,000 participants submitted some 600,000 adversarial prompts. The corpus shows a long tail of techniques and a converging insight: defense in the prompt does not generalize. Defense at the boundary does.

Read together, they point at one conclusion: prompt injection is a property of the substrate, not a bug you patch. The defenders who get this earliest stop investing in prompt-side hardening and start investing in capability containment.

## Mitigate, don't solve

The doctrinal move is to push the defense into layers where defense is real.

**Substrate (Chapter 04 territory).** Capability containment. The agent should not be able to do what the attacker asks because the agent does not have the capability. Boundary-enforced authority is what mitigates the unsolvable, not better prompts. This is where the research frontier has converged. Google DeepMind and ETH Zürich's [*Defeating Prompt Injections by Design*](https://arxiv.org/abs/2503.18813) (CaMeL, 2025) gives up on hardening the model and wraps it in a system layer that tracks control and data flow and enforces capability-based policies in a custom interpreter, so untrusted tokens cannot steer privileged actions. The title says "by design," and the design lives outside the model. That is the same doctrine this chapter argues, validated by the people trying hardest to solve it the other way.

**Dynamic (the interaction-pattern layer).** Provenance and isolation. Know which tokens came from which trust domain; never let untrusted tokens cross into the action-bearing context without an explicit checkpoint. This is engineering, not prompting.

**Unit (Chapter 03 territory).** Human in the loop at the stakes that earn it. Not the default, not the bottleneck the paved road was supposed to eliminate, but a deliberate, narrow point of human authority for actions whose downside is catastrophic.

This is where the boring seams show up. In any complex system, the failures that do the most damage tend to hide in the unglamorous joints between components rather than inside the components everyone is watching, and prompt injection follows the pattern. The failures that matter are the quiet ones at the boundary between trust domains: the place where the agent's reading surface meets the user's request, where a shared document carries something it was not supposed to carry, where the MCP server forwards what it shouldn't. Glamorous prompts do not break systems. Trust-domain seams do.

A doctrine that accepts the category error and works one layer down is a doctrine that ships.

## See also

- [The AI-Era Threat Surface](02-ai-era-threat-surface.md): where this architectural unsolvable sits in the larger threat picture
- [Boundary Enforcement](04-boundary-enforcement.md): substrate-layer containment as the answer
- [Authorization at Agent Scale](05-authorization-at-agent-scale.md): authorization companion
