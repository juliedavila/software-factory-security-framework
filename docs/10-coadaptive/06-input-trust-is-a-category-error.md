# Input Trust Is a Category Error

!!! info "Coadaptive Layer · Chapter 06"
    **This chapter extends:** [SF² Runtime Stewardship (Section 02)](../02-stewardship/runtime.md), [SF² Contextual Modifiers · Attack Landscape (Section 05)](../05-context/attack-landscape.md).
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

## The taxonomy: Bargury, Greshake, Schulhoff

The taxonomy of failure modes is by now well-mapped.

**Michael Bargury** (Zenity) demonstrated [*Living off Microsoft Copilot*](https://i.blackhat.com/BH-US-24/Presentations/US24-MichaelBargury-LivingoffMicrosofCopilot.pdf) at Black Hat 2024: indirect prompt injection that turns Copilot against its own user through content the agent reads automatically, hidden in a shared document or an email the victim never has to open. He called the result remote copilot execution. His framing is that the trust boundary moves to wherever the agent reads, which is almost always somewhere the security team has never controlled. The class crossed from demonstration to production exploit in 2025, when Aim Security's [EchoLeak](https://arxiv.org/abs/2509.10540) (CVE-2025-32711) achieved zero-click data exfiltration from Microsoft 365 Copilot through a single crafted email.

**Kai Greshake** introduced indirect prompt injection as a category in 2023 with [*Not what you've signed up for*](https://arxiv.org/abs/2302.12173), and has expanded the surface through demonstrations across Bing Chat, search-result injection, and retrieval-augmented attacks. The operational lesson: anything the agent reads is part of the agent's attack surface.

**Sander Schulhoff** (HackAPrompt) produced the first community-scale prompt injection taxonomy through the [HackAPrompt competition](https://aclanthology.org/2023.emnlp-main.302/) (EMNLP 2023), where roughly 3,000 participants submitted some 600,000 adversarial prompts. The corpus shows a long tail of techniques and a converging insight: defense in the prompt does not generalize. Defense at the boundary does.

Read together, they point at one conclusion: prompt injection is a property of the [substrate](01-three-layer-model.md#substrate), not a bug you patch. The defenders who get this earliest stop investing in prompt-side hardening and start investing in capability containment.

Full citations for this chapter are in the [references](../appendix/references.md#prompt-injection-and-input-trust).

## Mitigate, don't solve

Keep two things apart here. The diagnosis is settled: prompt injection is unsolvable, and no deployment changes that. The prescription is where judgment enters, because how you contain the unsolvable depends on what the agent is for.

The doctrinal move is to push the defense into layers where defense is real.

**Substrate (Chapter 04 territory).** Capability containment. The agent should not be able to do what the attacker asks because the agent does not have the capability. Boundary-enforced authority is what mitigates the unsolvable, not better prompts. The research frontier has landed in the same place: DeepMind and ETH Zürich's [*Defeating Prompt Injections by Design*](https://arxiv.org/abs/2503.18813) (CaMeL, 2025) gives up on hardening the model and moves the entire defense to a system layer around it. The title says "by design," and the design lives outside the model.

**Dynamic (the interaction-pattern layer).** Provenance and isolation. Know which tokens came from which trust domain; never let untrusted tokens cross into the action-bearing context without an explicit checkpoint. This is engineering, not prompting.

**Unit (Chapter 03 territory).** Human in the loop at the stakes that earn it. Not the default, not the bottleneck the paved road was supposed to eliminate, but a deliberate, narrow point of human authority for actions whose downside is catastrophic.

These three are a coverage map, not a priority ladder. Which one carries the weight depends on how broad the agent is. Take a deployment agent whose only capabilities are to merge an approved change and trigger a build: bound it that tightly and an injected instruction to exfiltrate the customer database has nothing to reach, because that power was never granted. The substrate contains it almost completely. Now take an inbox assistant of the kind [EchoLeak](https://nvd.nist.gov/vuln/detail/CVE-2025-32711) turned against its own user, reading across your mail and documents and acting on what it finds. Its reach is the product; narrow it to the point of safety and you have removed the assistant. For an agent like that, capability limits run out early, and the dynamic layer has to carry the rest.

Carrying the rest is concrete work, not a hope. It means tagging the email's content as untrusted the moment the assistant reads it, then refusing to let that content drive an outbound action without a checkpoint at the trust boundary. EchoLeak worked because untrusted email text was allowed to steer data back out unchecked; provenance marks the origin and blocks that crossing, which the model on its own cannot see. Research has already built this. CaMeL tracks where each value came from in a layer around the model, and blocks the action the model would otherwise take. Substrate first holds for the core you can bound; for agents you cannot bound that tightly, it is substrate as far as it reaches, then provenance for the rest. Breadth is one axis of that limit and reachability is the other: even the narrow agent the substrate contains today is contained only for as long as it cannot act on the layer that bounds it, the time-axis dating carried in [the three-layer model](01-three-layer-model.md#substrate).

The harder version of this attack does not end when the session does. An injected instruction can be written into the agent's memory: a long-term store, a retrieval index, a running summary of past work. It surfaces later when a related query arrives, retrieved as the agent's own remembered context and trusted on that basis. Memory poisoning is the same category error made persistent: the channel that cannot separate data from instructions now cannot separate a planted memory from a real one. Provenance has to survive that. Setting a trust tag at read time but never checking it at retrieval is provenance theater, not provenance: the store looks governed while the action path stays open. If the tagging is doing real work, the share of flagged retrievals that trace to untagged stored tokens should fall quarter over quarter. Flat or rising means the tag is written but never enforced.

Durability under budget pressure is a separate axis from coverage. When a team loses people, prompt-side hardening and human review thin out first, because both run on continuous human effort. Substrate containment holds, because it costs no one's time to keep running. Cost-to-keep and coverage are different axes, and the first must not re-rank the second: the map stays a map. Which layer you need is still set by the agent's reach. What a budget cut changes is what you protect first, and the [investment portfolio](../04-investment/portfolio-framework.md) treats that choice directly. The claim is testable: after a real headcount cut, failures that trace to the staffed layers should rise while failures that trace to substrate hold flat. If both rise together, durability was not the difference.

This is where the boring seams show up. In any complex system, the failures that do the most damage tend to hide in the unglamorous joints between components rather than inside the components everyone is watching, and prompt injection follows the pattern. The failures that matter are the quiet ones at the boundary between trust domains: the place where the agent's reading surface meets the user's request, where a shared document carries something it was not supposed to carry, where the MCP server forwards what it shouldn't. Glamorous prompts do not break systems. Trust-domain seams do.

A doctrine that accepts the category error and works one layer down is a doctrine that ships.

## See also

- [The AI-Era Threat Surface](02-ai-era-threat-surface.md): where this architectural unsolvable sits in the larger threat picture
- [Boundary Enforcement](04-boundary-enforcement.md): substrate-layer containment as the answer
- [Authorization at Agent Scale](05-authorization-at-agent-scale.md): authorization companion
