# References

## Related Security Frameworks

### NIST SSDF (Secure Software Development Framework)
**Focus**: Secure development lifecycle practices

**Website**: https://csrc.nist.gov/Projects/ssdf

**Relationship to SF²**: SF² addresses sustainable resourcing of SSDF practices at scale. Use SSDF for development security practices, SF² for sustainable implementation strategy.

### OWASP SAMM (Software Assurance Maturity Model)
**Focus**: Security practice maturity progression

**Website**: https://owaspsamm.org/

**Relationship to SF²**: SF² contextualizes SAMM implementation based on organizational readiness. Implementation speed and scope vary by blast radius and readiness level.

### BSIMM (Building Security In Maturity Model)
**Focus**: Security activity measurement and benchmarking

**Website**: https://www.bsimm.com/

**Relationship to SF²**: SF² determines investment priorities for BSIMM activities based on organizational positioning. Use SF² assessment to guide BSIMM implementation scope and sequencing.

### OWASP ASVS (Application Security Verification Standard)
**Focus**: Security verification requirements

**Website**: https://owasp.org/www-project-application-security-verification-standard/

**Relationship to SF²**: SF² helps sequence ASVS implementation within scaling investment strategy. Use SF² to determine risk-based ASVS subset vs. comprehensive implementation.

## Foundational References

SF² is built on prior work. These are the thinkers whose arguments the framework rests on, grouped by the part of SF² they anchor. Each entry names the work, where to find it, and what it carries for the framework.

### Software factory lineage and the atelier critique

The term SF² governs has a fifty-year industrial paper trail, and the framework owes the strongest counter-framing (software as artist colony, not factory) a real answer. These anchor [Engaging the Atelier Critique](../01-foundation/atelier-engagement.md).

- **[Bemer (1968), "The Economics of Program Production."](https://www.computerhistory.org/collections/catalog/102724781)** Robert W. Bemer, then at General Electric, is generally credited with the earliest "software factory" proposal, framed as an answer to the late-1960s software crisis. (Bemer's papers, Computer History Museum.) The provenance behind treating "Software Factory" as industrial-lineage vocabulary rather than a fresh coinage.
- **[Cusumano (1991), *Japan's Software Factories: A Challenge to U.S. Management.*](https://global.oup.com/academic/product/japans-software-factories-9780195062168)** Oxford University Press. The book-length study of the factory model applied to software at Hitachi, Toshiba, NEC, and Fujitsu. The mid-history of the term, between Bemer and modern DevOps usage.
- **[Greenfield & Short (2004), *Software Factories: Assembling Applications with Patterns, Models, Frameworks, and Tools.*](https://archive.org/details/softwarefactorie0000gree)** Wiley. The configuration-of-languages-patterns-frameworks-tools definition that carried the term into modern application development.
- **[U.S. Department of Defense accredited software factories](https://software.af.mil/) (Platform One, Kessel Run, and others).** More than twenty accredited software factories operate today; the word carries operational and regulatory weight in the one ecosystem where getting delivery wrong gets people killed.
- **[Sankar, *Position and Portfolio.*](https://www.shyamsankar.com/p/position-and-portfolio)** shyamsankar.com. Palantir's CTO argues the atelier counter-framing: position and portfolio decoupled, "there is only the artist and the work." The steelmanned view SF² absorbs at the creative-act layer. The "artist colony, extraordinarily and exquisitely flat" line is from Sankar's *Financial Times* interview, 12 August 2021 (paywalled).

### Capability and least-privilege

- **[Saltzer & Schroeder (1975), "The Protection of Information in Computer Systems."](https://web.mit.edu/saltzer/www/publications/protection/)** *Proceedings of the IEEE* 63(9):1278-1308. The original eight design principles, least privilege among them. SF²'s investment portfolio is a modern form of the same question: where do you spend constrained attention? This is the half-century anchor.
- **[Hardy (1988), "The Confused Deputy."](http://cap-lore.com/CapTheory/ConfusedDeputy.html)** *ACM SIGOPS Operating Systems Review* 22(4):36-38 ([DOI](https://dl.acm.org/doi/10.1145/54289.871709)). The foundational account of why authority and the right to exercise it must be bound together. Agent and MCP authorization failures are this 1988 problem reincarnated.
- **[Birgisson, Politz, Erlingsson, Taly, Vrable & Lentczner (2014), "Macaroons: Cookies with Contextual Caveats for Decentralized Authorization in the Cloud."](https://theory.stanford.edu/~ataly/Papers/macaroons.pdf)** NDSS ([DOI](https://doi.org/10.14722/NDSS.2014.23212)). Bearer credentials that attenuate: any holder can append a caveat that narrows what a token may do, and none can broaden it, with the chain enforced by nested HMACs. This is the existence proof that authority can be made to shrink at every hop of a delegation chain. The pattern runs in production today: Fly.io scopes its API tokens this way (`fly tokens attenuate`, with caveats that lock a credential to a single machine), and AWS STS session policies enforce the same intersection rule, where a delegated session can never exceed the role it assumed. SF²'s agent-scale authorization argument extends a deployed pattern, not a research idea.
- **[Shapiro, Smith & Farber (1999), "EROS: A Fast Capability System."](https://dl.acm.org/doi/10.1145/319151.319163)** SOSP. A capability operating system where every authority a process holds is an explicit, unforgeable capability and nothing is ambient. The existence proof that capability-based confinement runs as a real operating system, not only as a principle.
- **[Watson, Anderson, Laurie & Kennaway (2010), "Capsicum: Practical Capabilities for UNIX."](https://www.usenix.org/conference/usenixsecurity10/capsicum-practical-capabilities-unix)** USENIX Security. Capability-mode sandboxing retrofitted into a mainstream operating system (FreeBSD), carrying the EROS model into production UNIX. The practical face of bounding what a component may do at the OS boundary.

### Agentic security: capability control and the confused deputy

The 2025-2026 agentic-security literature carries the two anchors above, least privilege and the confused deputy, into autonomous AI systems. It converges on boundary enforcement with per-request attenuation, in the same vocabulary SF² uses.

- **[Cloud Security Alliance, "Confused Deputy Attacks on Autonomous AI Agents"](https://labs.cloudsecurityalliance.org/research/csa-research-note-ai-agent-confused-deputy-prompt-injection/) and the [MAESTRO threat-modeling framework](https://cloudsecurityalliance.org/blog/2025/02/06/agentic-ai-threat-modeling-framework-maestro) (2025).** The practitioner-standards confirmation that Hardy's 1988 problem is the central agent-authorization failure, plus a multi-layer framework that models how a weakness cascades across layers rather than staying contained to one. CSA's lens is SF²'s lens.
- **[Huang & Narajala (2025), "A Novel Zero-Trust Identity Framework for Agentic AI."](https://arxiv.org/abs/2505.19301)** Fine-grained, agent-scoped authority with per-request capability attenuation as the confused-deputy mitigation. The standards-side author (CSA AI Safety co-chair) naming the same mechanism SF² reaches for.
- **[Bandara et al. (2025), "ASTRIDE: A Security Threat Modeling Platform for Agentic-AI Applications" (arXiv:2512.04785).](https://arxiv.org/abs/2512.04785)** Extends the classic STRIDE method with a new category for agent-specific attacks (prompt injection, unsafe tool invocation, reasoning subversion) and automates diagram-driven assessment. The threat-modeling field itself moving to cover the agentic surface, the evolution SF² builds on rather than corrects.
- **[OWASP, Top 10 for Agentic Applications (2026).](https://genai.owasp.org/resource/owasp-top-10-for-agentic-applications-for-2026/)** Introduces "least agency" as an extension of least privilege: permissions attach to tools rather than prompt text, and agents withhold high-impact decisions for explicit authorization. The boundary-at-infrastructure argument and the criticality-gated human decision, peer-reviewed by more than 100 practitioners.
- **[Shi et al. (2025), "Progent: Programmable Privilege Control for LLM Agents" (arXiv:2504.11703).](https://arxiv.org/abs/2504.11703)** Per-request privilege where the effective action space can only shrink without explicit approval, a property the authors call monotonic confinement, benchmarked on AgentDojo and ASB. The formal, measured form of broad latent capability attenuated per request.
- **[Zhu et al. (2025), "MiniScope: A Least Privilege Framework for Authorizing Tool Calling Agents" (arXiv:2512.11147).](https://arxiv.org/abs/2512.11147)** Automatically reconstructed least-privilege permissions that confine damage from unreliable models at low overhead. Capability-preserving by construction.
- **[Betser et al. (2026), "AgenTRIM: Tool Risk Mitigation for Agentic AI" (arXiv:2601.12449).](https://arxiv.org/abs/2601.12449)** Per-step least-privilege enforcement that preserves capability while bounding it. The useful-and-bounded claim, evaluated on AgentDojo.
- **[SPIFFE and SPIRE.](https://spiffe.io)** The CNCF workload-identity standard: short-lived, cryptographically attested identities (SVIDs) issued per workload, the production form of scoped machine identity for agents and services. Necessary for naming a deputy, insufficient on its own for bounding what it may do.
- **[Cloud Security Alliance, "Agent Identity Governance Framework" (2026 draft).](https://labs.cloudsecurityalliance.org/agentic/agentic-identity-governance-framework-v1/)** Recommends SPIFFE SVIDs for persistent agent identities and pairs them with just-in-time, scope-limited, time-bound grants for ephemeral sub-agents: identity plus attenuation, the pairing the authorization chapter argues for.

### Verified boundaries and AI-found vulnerabilities

The substrate guarantee is provable by construction only for as long as a component cannot reach the layer that bounds it. These anchor the dating of that claim: what a verified boundary buys that an asserted one does not, and the evidence that AI now finds exploitable flaws in enforcement-layer code.

- **[Klein et al. (2009), "seL4: Formal Verification of an OS Kernel."](https://dl.acm.org/doi/10.1145/1629575.1629596)** SOSP 2009 ([full proof account](https://sel4.systems/Research/pdfs/comprehensive-formal-verification-os-microkernel.pdf)). A machine-checked proof, in Isabelle/HOL, that a general-purpose OS kernel's C implementation refines its specification, carrying functional correctness, access-control enforcement, and information-flow noninterference. The existence proof that a boundary can be proven rather than asserted, and the reason verification is the one defensive property attacker cleverness cannot erode.
- **[DARPA, "AI Cyber Challenge (AIxCC) Final Results" (2025).](https://www.darpa.mil/news/2025/aixcc-results)** Autonomous cyber-reasoning systems found 18 real vulnerabilities across 54 million lines of open-source code and patched the majority of injected ones, at roughly $152 per task. DARPA's own framing calls it an inflection point. The evidence that finding a path through enforcement-layer code is now a machine-scale capability, currently led by defenders.
- **[Google, "Big Sleep" agent (Project Zero and DeepMind, 2024-2025).](https://cloud.google.com/blog/products/identity-security/cloud-ciso-perspectives-our-big-sleep-agent-makes-big-leap)** The first AI agent to find a live, previously-unknown vulnerability in widely-deployed substrate software (SQLite, CVE-2025-6965), then more across open-source projects. The symmetric capability made concrete: AI reaching flaws in exactly the primitive code that sits below applications.
- **[CSIS, "Beyond Autonomous Attacks: The Reality of AI-Enabled Cyber Threats" (2026).](https://www.csis.org/blogs/strategic-technologies-blog/beyond-autonomous-attacks-reality-ai-enabled-cyber-threats)** The measured counter to the autonomous-attack narrative: AI's offensive contribution today is efficiency, not new capability, with most attacks still relying on existing tactics. The grounding for dating the symmetric-capability balance as contested but not yet flipped.
- **[Saxe, "AI Security Notes" (2025).](https://joshuasaxe181906.substack.com/p/ai-security-notes-582025)** The generalization asymmetry between offense and defense: offensive AI is built on public, transferable knowledge, while defensive efficacy depends on the private, idiosyncratic shape of a given enterprise environment, the regime where machine learning generalizes worst. The structural reason a defender cannot reach parity by pointing the same class of model at defense, and a second argument, independent of review speed, for containment over an AI arms race.

### Prompt injection and input trust

The prompt-injection literature this chapter draws on, from the naming of the category through the first production exploit to the system-layer defenses that answer it.

- **[Greshake et al. (2023), "Not What You've Signed Up For: Compromising Real-World LLM-Integrated Applications with Indirect Prompt Injection."](https://arxiv.org/abs/2302.12173)** Named indirect prompt injection as a category. The operational lesson: anything the agent reads is part of the agent's attack surface.
- **[Bargury (2024), "Living off Microsoft Copilot."](https://i.blackhat.com/BH-US-24/Presentations/US24-MichaelBargury-LivingoffMicrosofCopilot.pdf)** Black Hat USA 2024. Indirect prompt injection that turns Copilot against its own user through content the agent reads automatically; "remote copilot execution." The trust boundary moves to wherever the agent reads.
- **[Aim Labs (2025), "EchoLeak" (CVE-2025-32711).](https://nvd.nist.gov/vuln/detail/CVE-2025-32711)** The first zero-click prompt-injection exploit in a production LLM system: a single crafted email achieved remote, unauthenticated data exfiltration from Microsoft 365 Copilot. Technical analysis: [arXiv:2509.10540](https://arxiv.org/abs/2509.10540).
- **[Schulhoff et al. (2023), "Ignore This Title and HackAPrompt."](https://aclanthology.org/2023.emnlp-main.302/)** EMNLP 2023. The first community-scale prompt-injection taxonomy: roughly 3,000 participants, some 600,000 adversarial prompts. Defense in the prompt does not generalize; defense at the boundary does.
- **[OWASP (2025), "Top 10 for Agentic Applications" (ASI06: Memory & Context Poisoning).](https://genai.owasp.org/resource/owasp-top-10-for-agentic-applications-for-2026/)** Names the persistent escalation as its own class: memory, retrieval, or context shaped to steer the agent's steps long after the initial interaction, with the consequence appearing at runtime rather than training time. Its governance prescription is the one this chapter reaches on its own, provenance metadata on every memory write.
- **["A Practical Memory Injection Attack against LLM Agents" (MINJA, 2025).](https://arxiv.org/abs/2503.03704)** Injects malicious records into an agent's long-term memory through ordinary queries alone, with no privileged access, so the poison is retrieved later as the agent's own remembered experience. The demonstration that stored-token poisoning needs no write privilege, only a conversation.
- **[AgentPoison (NeurIPS 2024), "Red-teaming LLM Agents via Poisoning Memory or Knowledge Bases."](https://arxiv.org/abs/2407.12784)** Optimizes a backdoor trigger so a poisoned long-term memory or RAG store returns malicious demonstrations whenever the trigger appears, while benign queries behave normally and hide the compromise. The retrieval-time half of the threat: the poison is prioritized when it matters and dormant otherwise.
- **[Google DeepMind & ETH Zürich (2025), "Defeating Prompt Injections by Design" (CaMeL).](https://arxiv.org/abs/2503.18813)** Gives up on hardening the model and moves the defense to a system layer around it: track where each value came from and block the disallowed flow. A privileged model plans but never reads untrusted data, a quarantined model reads that data but holds no authority, and an interpreter enforces policy on the flow between them. Control-flow integrity under untrusted input, a distinct invariant from the credential attenuation above. The research instance of substrate-plus-provenance containment.
- **[Tallam & Miller (2025), "Operationalizing CaMeL: Strengthening LLM Defenses for Enterprise Deployment" (arXiv:2505.22852).](https://arxiv.org/abs/2505.22852)** The deployment cost of the dual-model design, which "effectively doubles the number of model invocations" and spends more tokens by construction, since the privileged model re-queries to produce clean interpreter code and the quarantined model reads every untrusted artifact. Workflows where the quarantined model processes multiple artifacts, reviewing ten emails for instance, can exceed ten seconds of latency, "often unacceptable in interactive applications like customer-facing chatbots or support agents"; caching plus deterministic parsers recover up to half the overhead. The reason containment by construction is a workload choice, not a universal default.
- **[Lan et al. (2026), "Silent Egress" (arXiv:2602.22450).](https://arxiv.org/abs/2602.22450)** Implicit prompt injection drives an agent to exfiltrate its runtime context through ordinary outbound requests while the user-facing response stays harmless; output-based checks miss the great majority of successful leaks. The empirical case that an agent run is judged from outside, not from what it shows the user.
- **Observability, from control theory to production.** [Kálmán (1960)](https://en.wikipedia.org/wiki/Observability) defined a system as observable when its internal state can be reconstructed from its external outputs over time; [Charity Majors](https://charity.wtf/2020/03/03/observability-is-a-many-splendored-thing/) carries the idea into software practice as the ability to ask any question of a running system from the outside, including the ones you did not anticipate. The external-correctness criterion for agent runs descends from this.

### Resilience and adaptive capacity

- **[Holling (1973), "Resilience and Stability of Ecological Systems."](https://doi.org/10.1146/annurev.es.04.110173.000245)** *Annual Review of Ecology and Systematics* 4:1-23. The origin of resilience as a property distinct from stability: a system's capacity to absorb disturbance and reorganize while keeping its essential function, rather than its tendency to return to a prior equilibrium. SF²'s Adaptive Capacity condition descends from this idea, carried into engineered systems by the resilience-engineering work below.
- **[Hollnagel, Leonhardt, Shorrock & Licu (2013), *From Safety-I to Safety-II: A White Paper.*](https://www.skybrary.aero/sites/default/files/bookshelf/2437.pdf)** EUROCONTROL. Reframes safety from the absence of failure to the presence of adaptive capacity. This is the resilience-engineering anchor for SF²'s operational readiness axis.
- **[Woods (2018), "Resilience as Graceful Extensibility to Overcome Brittleness."](https://irgc.org/wp-content/uploads/2018/09/Woods-Resilience-as-Graceful-Extensibility-to-Overcome-Brittleness-1.pdf)** IRGC. Precise vocabulary for what software factories need at brittle boundaries.
- **[Cook (2000), "How Complex Systems Fail."](https://how.complexsystems.fail/)** An 18-point distillation of why complex systems break and keep running anyway. Pairs cleanly with Hollnagel and Woods.
- **[Parasuraman & Manzey (2010), "Complacency and Bias in Human Use of Automation."](https://doi.org/10.1177/0018720810376055)** *Human Factors* 52(3):381-410. The canonical account of automation complacency: under task load, attention drifts from automated output, and the effect shows up in experts as much as novices. The mechanism beneath the comprehension crisis, and the reason adaptive capacity depends on humans who still verify what the machine produced.

### Economic reasoning in security

- **[Geer et al. (2003), "CyberInsecurity: The Cost of Monopoly."](https://www.schneier.com/essays/archives/2003/09/cyberinsecurity_the.html)** The monoculture argument: security risk priced as a market property, not a moral one.
- **[Geer (2010), "Cybersecurity and National Policy."](https://www.schneier.com/blog/archives/2010/11/dan_geer_on_cyb.html)** Security reasoned about in economic terms. SF²'s investment portfolio needs Geer as its economic spine, or it reads as opinion rather than argument.
- **[Schneier (1999), "Attack Trees."](https://www.schneier.com/academic/archives/1999/12/attack_trees.html)** *Dr. Dobb's Journal.* An attacker's cost through an attack tree resolves at its OR-nodes by the cheapest branch, not the average. The formal reason an investment that raises the average toll can leave the cost to breach you unchanged, and the arithmetic behind the Adversary Economics criterion's coverage-over-price test.
- **[Varian (2004), "System Reliability and Free Riding."](https://people.ischool.berkeley.edu/~hal/Papers/2004/reliability)** Security is the weakest-link case of system reliability: protection tracks the least-defended path, not the sum or average of effort. The economic statement of the one-seam correction, with the added bite that weakest-link structure invites underinvestment in the very seam that decides the outcome.
- **[Anderson & Moore (2006), "The Economics of Information Security."](https://www.cl.cam.ac.uk/archive/rja14/Papers/sciecon2.pdf)** *Science* 314(5799):610-613. Ties weakest-link economics to systematic security underinvestment under misaligned incentives. Why spend chases the visible average rather than the binding minimum.
- **[Gordon & Loeb (2002), "The Economics of Information Security Investment."](https://en.wikipedia.org/wiki/Gordon%E2%80%93Loeb_model)** *ACM TISSEC* 5(4):438-457. Anchors optimal security spend to expected loss reduction rather than to cost imposed on the attacker. The model behind judging an investment by the surface it closes, not the toll it adds.
- **[Collier et al. (2023), "On Metrics and Prioritization of Investments in Hardware Security."](https://incose.onlinelibrary.wiley.com/doi/10.1002/sys.21667)** *Systems Engineering* (INCOSE). Finds ratio metrics like ROSI do not correlate with risk reduction, while expected net benefit does: expected net benefit equals risk reduction minus cost. The reason a defender's stopping rule reasons in net benefit rather than a ratio, and the guard against a control that posts a flattering ratio while retiring little real risk.
- **[Naylor et al. (2014), "The Cost of the 'S' in HTTPS."](https://davidtnaylor.com/CostOfTheS.pdf)** CoNEXT '14, 133-140 ([DOI](https://dl.acm.org/doi/10.1145/2674005.2674991)). Measures the costs HTTPS imposes beyond dollars: communication latency, data usage, energy, and lost in-network caching. The empirical anchor for treating performance as a first-class mitigation cost, the column a dollar-based model prices at zero.
- **[Goodhart's Law.](https://en.wikipedia.org/wiki/Goodhart%27s_law)** When a measure becomes a target, it ceases to be a good measure. The reason the investment criteria treat hours saved as a proxy and gate it behind a risk override: a metric carrying decision weight is one the organization learns to satisfy, so effort-hours optimized as a target drift away from the value they were meant to stand for.
- **[HackerOne (2023), "As Economy Slows, Headcount and Resource Cuts Harm Security Teams."](https://www.hackerone.com/press-release/economy-slows-headcount-and-resource-cuts-harm-security-teams-ability-combat-threats)** Survey finding 63% of security organizations had budgets cut and 39% cut headcount in a single downturn year, with two-thirds reporting it degraded their ability to operate. The empirical basis for position durability: scaling investment is the discretionary spend a shock cuts first, so a capex shock unwinds Lean in a budget cycle rather than over quarters. (See also [TechCrunch's 2023 roundup](https://techcrunch.com/2023/12/30/cybersecurity-not-immune-brutal-layoffs-2023/): 110+ security firms cut staff that year.)

### Absorption capacity and investment timing

- **[Cohen & Levinthal (1990), "Absorptive Capacity: A New Perspective on Learning and Innovation."](https://doi.org/10.2307/2393553)** *Administrative Science Quarterly* 35(1):128-152. A firm's ability to recognize, assimilate, and apply new knowledge is a function of what it already understands. The academic spine for absorption capacity as the variable that sets how fast a paved road actually returns, and the reason the organization that already understands its own platform absorbs the next capability faster.
- **[Rogers, *Diffusion of Innovations.*](https://en.wikipedia.org/wiki/Diffusion_of_innovations)** The perceived attributes of an innovation, its relative advantage, compatibility, complexity, trialability, and observability, explain most of the variance in its rate of adoption. The mechanism behind timing set by how fast a practice spreads across teams rather than by a fixed calendar.
- **[DORA (2024), *Accelerate State of DevOps Report.*](https://dora.dev/research/2024/dora-report/)** Standing up a platform measured a temporary dip in throughput and stability before it matured, the gain arriving only after the absorption cost is paid. The measured face of absorption lag, and the J-curve behind the portfolio chapter's claim that timing is paced by adoption, not by the date of the rollout.

### Coverage, deception, and retiring attack classes

- **[Bejtlich (2009), "The Defender's Dilemma and the Intruder's Dilemma."](https://taosecurity.blogspot.com/2009/05/defenders-dilemma-and-intruders-dilemma.html)** The asymmetry usually quoted against defenders, inverted: where the attacker needs only one way in, the defender needs only one indicator of the intruder's presence. The reason deception belongs to the detection surface, scored as coverage of whether you would notice, not as cost imposed.
- **[MITRE Engage.](https://engage.mitre.org/)** MITRE's framework for adversary engagement and deception. Honeypots, canary tokens, and honeytokens earn their keep through a high-fidelity signal, since a decoy has no legitimate use and any touch is a near-certain alarm, not through the friction they add. The canonical case for the rule that cost-imposition counts only when it ships a signal and a way to contain what trips it.
- **[Google Security (2024), "Eliminating Memory Safety Vulnerabilities at the Source."](https://security.googleblog.com/2024/09/eliminating-memory-safety-vulnerabilities-Android.html)** As Android moved new code to memory-safe languages, the share of its vulnerabilities that were memory-safety bugs fell from roughly three-quarters to under a quarter over six years. The trend line for retiring a whole attack class at the source rather than catching instances one at a time.
- **[Let's Encrypt Statistics.](https://letsencrypt.org/stats/)** Free certificates and browser pressure moved the web to encryption by default, retiring mass interception of cleartext web sessions as an economical attack. The completed transport-layer instance of a field closing a path so thoroughly that attackers move on.

### Operational and program design

- **[Anderson (2020), *Security Engineering*, 3rd ed.](https://www.cl.cam.ac.uk/archive/rja14/book.html)** Wiley (full text free). The encyclopedic reference for building dependable distributed systems. SF² cites specific chapters rather than reinventing taxonomy.
- **[Venables, "Turning the Security Flywheel."](https://www.philvenables.com/post/turning-the-security-flywheel)** Self-reinforcing, industrial-scale program design from a sitting CISO. Venables' artisanal-versus-industrial framing is the direct precursor to SF²'s Scaling Investments thesis.
- **[Sounil Yu, Cyber Defense Matrix and the DIE Triad.](https://cyberdefensematrix.com/)** DIE (Distributed, Immutable, Ephemeral) is the architectural inverse of CIA, aligned with SF²'s stance of building security in through constraints on the artifact.

### Strategic positioning and contingency theory

The two-axis model rests on a body of organizational theory: there is no single best way to organize, only the structure that fits an organization's environment, scale, and technology. SF² carries that logic into security program design, which is why it replaces the maturity ladder with a position.

- **[Donaldson (2001), *The Contingency Theory of Organizations.*](https://sk.sagepub.com/book/mono/download/the-contingency-theory-of-organizations/chpt/core-paradigm-theoretical-integration.pdf)** SAGE. The consolidated statement of contingency theory, descending from Lawrence & Lorsch's *Organization and Environment* (1967) and Burns & Stalker's mechanistic-versus-organic distinction (1961): organizational fit, not a universal maturity ladder, predicts performance. The intellectual parent of SF²'s claim that security posture is position-contingent rather than a level to climb.
- **[Horne, Maynard & Ahmad (2017), "Organisational Information Security Strategy: Review, Discussion and Future Research."](https://ajis.aaisnet.org/index.php/ajis/article/view/1427)** *Australasian Journal of Information Systems* 21. Argues information security strategy must move from internally-focused protection toward a view that weighs the organization's resources, capabilities, and external environment. The closest precedent for SF²: it calls for environment-contingent security strategy; SF² supplies the operational construct, position and portfolio and movement, that makes the call actionable.

### AI-era code generation, comprehension, and review

The comprehension crisis in the [Coadaptive Security layer](../10-coadaptive/02-ai-era-threat-surface.md) rests on a documented direction of travel, not a fixed multiple. These are the sources that establish it.

- **[DORA (2025), *State of AI-assisted Software Development.*](https://dora.dev/research/2025/dora-report/)** AI adoption now shows a positive relationship with delivery throughput but continues to show a negative relationship with delivery stability, and 30% of respondents report little or no trust in AI-generated code. The report's frame is that AI is an amplifier, magnifying an organization's existing strengths and weaknesses rather than fixing them. The empirical grounding for [AI Saturation](../05-context/ai-saturation.md) as a contextual modifier: adoption that varies by team, not by size, and shifts the binding constraint downstream to review.
- **[Veracode (2025), *GenAI Code Security Report.*](https://www.veracode.com/blog/genai-code-security-report/)** Across more than 100 models and 80 security-relevant tasks, 45% of AI-generated samples failed the associated security test, with Java the worst at 72%, and the failure rate did not improve as the models grew more capable at functional code. The evidence behind the [AI Saturation](../05-context/ai-saturation.md) warning that this is a security problem you cannot wait out with the next model.
- **[GitClear (2025), *AI Copilot Code Quality.*](https://www.gitclear.com/ai_assistant_code_quality_2025_research)** Analysis of 211 million lines: copy-pasted code rose from 8.3% to 12.3% (2021-2024) while refactored lines fell from 24.1% to 9.5%, a maintainability erosion consistent with generation outrunning comprehension.
- **[DX, "Measuring AI's impact on developer productivity."](https://getdx.com/blog/ai-measurement-hub/)** Experience-sampling that asks reviewers directly whether AI-generated code was harder to understand; the closest industry instrument for the comprehension gap itself.
- **[Osmani (2026), "Comprehension Debt: The Hidden Cost of AI-Generated Code."](https://www.oreilly.com/radar/comprehension-debt-the-hidden-cost-of-ai-generated-code/)** O'Reilly Radar. Names the per-codebase accrual of the comprehension crisis: the growing gap between how much code exists and how much any human genuinely understands. Distinct from technical debt because it breeds false confidence rather than the mounting friction of slow builds and tangled dependencies.
- **[Dorner et al. (2025), "Quo Vadis, Code Review?" (arXiv:2508.06879)](https://arxiv.org/abs/2508.06879)** Practitioners expect LLMs as active review participants and name the long-term risk of eroding human understanding, accountability, and trust.
- **[Tilbury & Flowerday (2026), "The Vigilance Paradox: Automation Reliance Inside the Modern SOC."](https://doi.org/10.1108/ics-08-2025-0318)** *Information & Computer Security.* A survey of 696 security analysts plus 29 interviews finds that automation complacency reduces monitoring of automated output and that systematic verification procedures are what mitigate it. The security-domain evidence that the comprehension gap is closed by verifying, not consuming.
- **[Sutskever (2024), NeurIPS keynote: "pre-training as we know it will end."](https://analyticsindiamag.com/ai-features/the-end-of-pre-training-era-begins/)** The OpenAI co-founder's argument that pretraining-compute scaling faces a ceiling because the public human-text corpus, the "fossil fuel of AI," is finite and being exhausted roughly between 2026 and 2032. The grounding for the plateau caveat in [BAU vs Scaling](../04-investment/bau-vs-scaling.md): the demand exponential rests on a mechanism that may stall, which is why the framework's case is built on return-shape rather than on continued scaling. (Primary coverage: Kylie Robison, *The Verge*, Dec 2024.)

### Comprehension as a queryable model of behavior

The comprehension a software factory needs is not knowledge held in any one person's head but an authoritative, queryable model of how the system behaves, reconciled against the code as it changes. These sources establish both the shape of that model and the guard rail on it: a model built from example assertions records what was checked, not what the system was meant to do.

- **[Finster, "Spec-Driven Development Isn't New."](https://bdfinst.medium.com/5-minute-devops-spec-driven-development-isnt-new-3a5c552efc95)** Bryan Finster (Dojo Consortium). "Tests describe behavior. Behavior drives code. Code is the implementation detail." The order an authoritative behavioral model has to respect, and the reason good acceptance tests let you rewrite a system without drama: they capture intent, not implementation. The continuous-delivery statement of the queryable-model claim.
- **[Gu et al. (2024), "The Counterfeit Conundrum: Can Code Language Models Grasp the Nuances of Their Incorrect Generations?" (arXiv:2402.19475)](https://arxiv.org/abs/2402.19475)** Code language models generate programs that pass weaker correctness checks while staying subtly wrong, and the models themselves struggle to recognize or repair them. The empirical basis for the intent-vs-assertion guard rail: a model validated only by passing checks answers with confidence and is wrong.
- **[Baumeister (2004), "Combining Formal Specifications with Test Driven Development."](https://doi.org/10.1007/978-3-540-27777-4_1)** Tests describe behavior only by example, so a suite of passing assertions underdetermines what the system was meant to do. The classic statement of why example-based tests are insufficient as a specification of intent.
- **[Park & Maurer (2009), "Communicating Domain Knowledge in Executable Acceptance Test Driven Development."](https://doi.org/10.1007/978-3-642-01853-4_5)** Executable acceptance tests as a living, queryable specification of behavior rather than a static document. Grounds the "current map you can question" form of the comprehension model.

### Agent and MCP supply chain

- **[OWASP MCP Security Cheat Sheet.](https://cheatsheetseries.owasp.org/cheatsheets/MCP_Security_Cheat_Sheet.html)** Treats untrusted or compromised MCP server packages as a supply-chain attack, and names tool poisoning (malicious instructions hidden in tool descriptions, parameter schemas, or return values), rug pulls (a server changing its tool definitions after approval), and tool shadowing. Its core defense is the inventory-and-pin discipline the rest of the supply chain already needs: pin tool definitions by cryptographic hash and alert on any change.
- **[The Hacker News (2025), "First Malicious MCP Server Found Stealing Emails in Rogue Postmark-MCP Package."](https://thehackernews.com/2025/09/first-malicious-mcp-server-found.html)** The first malicious MCP server found in the wild, identified by Koi Security: an npm package, postmark-mcp, that silently BCC'd every outgoing email to an attacker-controlled address across more than 1,600 installs before it was pulled. The in-the-wild proof that an agent's toolchain is a supply-chain target, not a hypothetical one.

### Post-quantum cryptography and crypto-agility

- **[NIST (2024), FIPS 203 (ML-KEM).](https://csrc.nist.gov/pubs/fips/203/final)** The first finalized post-quantum standards (August 13, 2024), closing an eight-year selection: the key-encapsulation and digital-signature primitives the migration moves toward. Companion standards [FIPS 204 (ML-DSA)](https://csrc.nist.gov/pubs/fips/204/final) and [FIPS 205 (SLH-DSA)](https://csrc.nist.gov/pubs/fips/205/final).
- **[NIST IR 8547 (2024, initial public draft), "Transition to Post-Quantum Cryptography Standards."](https://csrc.nist.gov/pubs/ir/8547/ipd)** The deprecation roadmap: RSA and ECC at roughly 112-bit security deprecated by 2030, all quantum-vulnerable public-key cryptography disallowed in NIST standards by 2035. The dated clock the high-exposure case runs against.
- **[NSA, Commercial National Security Algorithm Suite 2.0 (CNSA 2.0) FAQ.](https://media.defense.gov/2022/Sep/07/2003071836/-1/-1/0/CSI_CNSA_2.0_FAQ_.PDF)** The national-security-systems mandate and timeline: quantum-resistant software and firmware signing by 2025, NSS on CNSA 2.0 by 2030, full migration by 2035. The regulatory forcing function for organizations bound by it.
- **[NIST NCCoE, "Migration to Post-Quantum Cryptography" project.](https://pages.nist.gov/nccoe-migration-post-quantum-cryptography/)** Crypto-agility and migration practice guidance: the discovery-and-inventory discipline the chapter prescribes before any algorithm choice.

### Emergent organizational design

- **[Komoroske, "Coordination Headwind" and the slime-mold model.](https://komoroske.com/slime-mold/)** Names the gardening-platforms and Schelling-point moves that make SF² emergent rather than imposed. The direct lineage for any claim that security is an emergent property.
- **[Shortridge & Rinehart (2023), *Security Chaos Engineering.*](https://www.oreilly.com/library/view/security-chaos-engineering/9781098113810/)** Security as ecology, not enforcement. Gives SF² its experimental, probabilistic posture instead of a compliance-checkbox frame.

### Crisis windows and staged response

- **[Kingdon (1984/1995), *Agendas, Alternatives, and Public Policies.*](https://en.wikipedia.org/wiki/Multiple_streams_framework)** The policy-window mechanism: a window opens, often through a focusing event, and a pre-existing solution gets coupled to the agenda by whoever already holds a finished proposal. The academic spine for "stay staged," since the solution has to exist and be ready before the window opens.
- **[Birkland (1998), "Focusing Events, Mobilization, and Agenda Setting."](https://doi.org/10.1017/S0143814X98000038)** *Journal of Public Policy* 18(1):53-74. Sudden harmful events concentrate attention and open windows, but the agenda change accrues to groups already mobilized. The "prepared" half of the mechanism: the event is necessary, the ready coalition is what converts it to action.
- **[Downs (1972), "Up and Down with Ecology: The Issue-Attention Cycle."](https://gwern.net/doc/sociology/2015-gupta.pdf)** *The Public Interest* 28:38-50. Attention to a problem rises sharply then decays as it competes with other issues. Why the window closes on its own schedule, stated without committing to a duration.
- **[NIST SP 800-61r3 (2025), *Incident Response Recommendations and Considerations for Cybersecurity Risk Management.*](https://csrc.nist.gov/pubs/sp/800/61/r3/final)** Supersedes the 2012 four-phase guide and reframes incident response as a risk-management activity under the CSF 2.0 Functions. The standards basis for staging response plans against your top risks (Govern, Identify) and sharpening them after the event (Improvement).
- **[CISA Tabletop Exercise Packages.](https://www.cisa.gov/resources-tools/services/cisa-tabletop-exercise-packages)** Pre-built, scenario-specific exercises whose stated purpose is to test and build out response plans, each shipping an after-action template that feeds back into the plan. The mechanism behind rebaselining a staged plan on a cadence rather than writing it once.
- **[Google SRE Workbook, "Postmortem Culture: Learning from Failure."](https://sre.google/workbook/postmortem-culture/)** A blameless post-mortem turns an incident into the highest-quality input a plan will ever get. The retro-sharpens-the-staged-plan loop, stated as practice.
- **[IBM, *Cost of a Data Breach 2025.*](https://www.ibm.com/reports/data-breach)** (Trade.) Measures whether organizations raise security investment after a breach (49% in 2025, down from 63% in 2024), not how long the elevated-priority window lasts. The evidence that the post-incident window is real but variable, and that its duration is not a measured constant.
- **[NIST SP 800-84 (2006), *Guide to Test, Training, and Exercise Programs for IT Plans and Capabilities.*](https://nvlpubs.nist.gov/nistpubs/legacy/sp/nistspecialpublication800-84.pdf)** The methodology for tabletop and functional exercises: write objectives, build the scenario, run the debrief, file the after-action report. The discipline that turns a staged demonstration of a chronic exposure into a repeatable, auditable practice rather than a one-off scare, and the standards basis for making a silent risk legible before it becomes an incident.
- **Vicarious and near-miss learning.** Organizations change behavior in response to others' failures and near-failures, not only their own incidents, which is what lets a chronic exposure move on a peer's incident rather than your own. [Madsen & Desai (2010), "Failing to Learn? The Effects of Failure and Success on Organizational Learning in the Global Orbital Launch Vehicle Industry,"](https://doi.org/10.5465/amj.2010.51467631) *Academy of Management Journal* 53(3):451-476, find failure experience teaches more durably than success; [Kim & Miner (2007), "Vicarious Learning from the Failures and Near-Failures of Others: Evidence from the U.S. Commercial Banking Industry,"](https://doi.org/10.5465/amj.2007.25529755) *AMJ* 50(3):687-714, find firms improve survival by learning from peers' near-failures.

### Regulation as drag and driver, and the compliance-security gap

- **[Khansa & Liginlal (2007), "The Influence of Regulations on Innovation in Information Security."](https://aisel.aisnet.org/amcis2007/180/)** *AMCIS 2007 Proceedings.* Time-series evidence that major regulations spike demand for security products and services, pulling the function "out of obscurity and into the corporate boardroom." The empirical basis for regulation as a forcing function.
- **[Marotta & Madnick (2020), "Analyzing the Interplay Between Regulatory Compliance and Cybersecurity."](https://doi.org/10.2139/ssrn.3542563)** MIT Sloan working paper. "Compliance is often the driver for developing or improving cyber-security" yet "may be incomplete as a cyber-security measure itself," which grounds both the driver claim and the compliance-is-not-security caveat in one source.
- **[Dean & Brown (1995), "Pollution Regulation as a Barrier to New Firm Entry."](https://doi.org/10.5465/256737)** *Academy of Management Journal* 38(2). Regulation deters entry and confers an advantage on incumbents who have already cleared the bar. The mechanism behind the market-access "moat" face of the driver.
- **[Singla (2023), "Regulatory Costs and Market Power."](https://doi.org/10.2139/ssrn.4368609)** Compliance costs raise industry concentration: higher profitability for large firms, lower for small, with incumbents pushing for rules that burden smaller rivals. The moat mechanism, measured.
- **[Stevens, Dykstra, Knox Everette & Mazurek (2020), "It Lurks Within: A Look at the Unexpected Security Implications of Compliance Programs."](https://doi.org/10.1109/MSEC.2020.3014291)** *IEEE Security & Privacy.* Organizations "often conflate compliance with strong security"; fully compliant organizations still carry exploitable gaps. The caveat, from a top venue.
- **[Kwon & Johnson (2013), "Health-Care Security Strategies for Data Protection and Regulatory Compliance."](https://doi.org/10.2753/MIS0742-1222300202)** *Journal of Management Information Systems* 30(2). In operationally immature organizations compliance improves real security; in mature ones it does not. The empirical basis for tying the caveat to the operational-readiness axis.
- **[Kwon & Johnson (2014), "Proactive Versus Reactive Security Investments in the Healthcare Sector."](https://doi.org/10.25300/misq/2014/38.2.06)** *MIS Quarterly* 38(2). Proactive, voluntarily-made security investments outperform reactive, involuntary ones. The case for orienting to a telegraphed regulatory signal early rather than complying under a clock.
- **[NIST SP 800-63B, *Digital Identity Guidelines: Authentication and Lifecycle Management.*](https://pages.nist.gov/800-63-3/sp800-63b.html)** Reverses the older mandate of periodic password expiration, since forced rotation drives users toward weaker, predictable secrets. The worked example of a control that outlived its evidence while checklists kept prescribing it.
- **[NIST Cryptographic Module Validation Program (CMVP).](https://csrc.nist.gov/projects/cryptographic-module-validation-program)** FIPS 140 validation and re-validation. Re-certifying a module after a defect takes far longer than patching it, so adhering to "run only the validated module" can keep known-vulnerable cryptography in place. The validation-lag dynamic behind compliance-induced regression.
- **[SEC, "SEC Adopts Rules on Cybersecurity Risk Management, Strategy, Governance, and Incident Disclosure" (2023).](https://www.sec.gov/newsroom/press-releases/2023-139)** Public-company cyber disclosure moved from no federal mandate to a four-business-day materiality clock. A snap-back instance.
- **[European Commission, AI Act.](https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai)** In force August 2024, obligations phasing through 2026-2028. AI went from essentially unregulated to a tiered regime in roughly two years, the snap-back instance most relevant to a high AI Saturation score.
- **[European Commission, Cyber Resilience Act.](https://digital-strategy.ec.europa.eu/en/policies/cyber-resilience-act)** In force December 2024, main obligations December 2027; non-compliant products may not be sold in the EU. Connected products and software moving from minimal regulation to market-access-gated.
- **[CISA, Cyber Incident Reporting for Critical Infrastructure Act (CIRCIA).](https://www.cisa.gov/topics/cyber-threats-and-advisories/information-sharing/cyber-incident-reporting-critical-infrastructure-act-2022-circia)** Signed into law March 2022, reporting rule still landing years later. The clearest case that regulation telegraphs well ahead of enforcement.

### Compliance crosswalk and jurisdiction conflict

- **[Secure Controls Framework (SCF)](https://securecontrolsframework.com/) and the efficacy of control rationalization.** The SCF is a free metaframework that normalizes 200+ laws, regulations, and frameworks into one common control set, mapped with NIST IR 8477 Set Theory Relationship Mapping: build a control once, satisfy many regimes. The major frameworks overlap heavily (SOC 2 and ISO 27001 align on the large majority of criteria; SOC 2 and NIST 800-53 share most controls; FedRAMP is NIST 800-53 adapted for cloud), which is why a crosswalked control set absorbs a new mandate as the delta it adds, not a build from zero. The academic record is consistent and candid about the limits: [Hayden (2009)](https://doi.org/10.1080/19393550903324936) sets out the rationalization strategy and where it stops; [Wang, Sadjadi & Rishe (2024)](https://doi.org/10.1109/BigDataSecurity62737.2024.00013) validate the SCF unified mapping across seven frameworks; [Cadet et al. (2024)](https://shisrrj.com/paper/SHISRRJ2472145.pdf) extend it to scalable cross-industry architectures for organizations under a large matrix of regulators.
- **Where regulations genuinely conflict.** The US CLOUD Act and FISA 702 compel US providers to produce data they control wherever it is stored; the CJEU's Schrems II (C-311/18) and the EDPB's [Recommendations 01/2020](https://edpb.europa.eu/sites/edpb/files/consultation/edpb_recommendations_202001_supplementarymeasurestransferstools_en.pdf) treat that exposure as a GDPR violation unless the data is put technically beyond reach, which is why customer-held keys and sovereign environments became architectural requirements, not options. GDPR's right to erasure can collide head-on with a US litigation hold that compels preserving the same record ([Kennedys, the OpenAI cross-border dilemma, 2025](https://www.kennedyslaw.com/en/thought-leadership/article/2025/openai-and-the-cross-border-data-dilemma-us-litigation-holds-vs-gdpr-erasure-obligations-ukeu/)). The EU AI Act against the [US state patchwork](https://www.brookings.edu/articles/the-eu-and-us-diverge-on-ai-regulation-a-transatlantic-comparison-and-steps-to-alignment/) fragments rather than contradicts: both can be met, but only with per-jurisdiction configuration. These are the conflicts a cross-walk cannot dissolve.

### Operator versus provider, and authorization granularity

The operator/provider split in [Third-Party](../02-stewardship/third-party.md) rests on a single principle: an operator can confine an agent only as finely as the platform's own authorization model allows. These are the anchors for that claim; the EU AI Act's provider-versus-deployer line, codifying the same split in law, is listed under regulation above.

- **[Schneider (2003), "Least Privilege and More."](https://www.cs.cornell.edu/fbs/publications/leastPriv.pdf)** *IEEE Security & Privacy* 1(5):55-59. Least privilege is bounded by what the enforcement mechanism can express: you confine a component only as finely as the underlying model allows. The academic anchor for the claim that a provider defines what is expressible in the authorization vocabulary, and the operator answers for the residual the vocabulary cannot remove.
- **[GitHub (2022), "Introducing fine-grained personal access tokens for GitHub."](https://github.blog/security/application-security/introducing-fine-grained-personal-access-tokens-for-github/)** Classic personal access tokens "provided very coarse-grained permissions, granting access to all of the repositories and organizations that the owning user can access." The lived form of platform-set scope, where the token that reads one project reads them all until the platform ships a finer primitive. The concrete grounding for counting coarse primitives as a real cost when you choose what to build on.

### Adoption velocity, paved roads, and guardrails

[Relationship Health](../05-context/relationship-health.md) turns on adoption velocity, and the platform-engineering field has already worked out how to raise it without trust: make the secure path the default path. These are the anchors for the friction-over-mandate reframe.

- **[DORA, "Platform engineering" capability.](https://dora.dev/capabilities/platform-engineering/)** An internal developer platform provides "golden paths" and a "paved road that scales these benefits securely," making the supported, secure option the self-service default. The grounding for adoption velocity as the binding constraint, and for the secure default that is mandatory and low-friction at once.
- **[DORA, "Transformational leadership" capability.](https://dora.dev/capabilities/transformational-leadership/)** DORA finds leadership moves delivery performance indirectly, by enabling the practices teams adopt rather than adopting for them, and is blunt on the limit: even the strongest leaders cannot reach high performance on their own. The grounding for the security-and-engineering-leadership relationship as the upstream enabler of a funded, durable capability boundary rather than its competitor, and for reading that relationship as a multiplier on the forcing function, not a replacement for it.
- **[Howard (2018), "Less Gates, More Guardrails."](https://www.sonatype.com/blog/less-gates-more-guardrails-devsecops-lessons-learned-in-2017)** Sonatype. Security controls "cannot take the form of toll gates; instead, they must take the form of guardrails": automated, embedded in the pipeline, fast by default. The case that friction, not whether a control is mandatory, is what predicts adoption.
- **[Singhal, "Scaling Appsec at Netflix."](https://netflixtechblog.medium.com/scaling-appsec-at-netflix-6a13d7ab6043)** Netflix Technology Blog. A paved-road platform baked security in by default rather than leaving it to a checklist, so a team could reach a production-ready, authenticated service in minutes. The worked example of a low-friction default carrying full adoption without a relationship to lean on.

### Change capacity, absorption, and concurrent overload

[Change Capacity](../05-context/change-capacity.md) is the absorb clock, and it is a shared, depletable pool. These anchor the claim that concurrent change contends for one budget and that pricing a move on the install date inherits an absorption gap.

- **The absorption pool is finite, and concurrent change depletes it.** [Bernerth, Walker & Harris (2011)](https://doi.org/10.1080/02678373.2011.634280), *Work & Stress*, build and validate a change-fatigue measure: multiple concurrent changes drive exhaustion, lower commitment, and turnover. [Cox et al. (2022)](https://doi.org/10.1108/jocm-12-2021-0369) show change frequency predicts fatigue, which lowers performance through reduced satisfaction and commitment. [Kanitz, Huy, Backmann & Hoegl (2021)](https://doi.org/10.5465/AMJ.2019.0413), *Academy of Management Journal*, "No Change Is an Island," find that interferences between concurrent initiatives undermine implementation. [Spring (2021)](https://doi.org/10.33423/jhetp.v21i4.4215) proposes a measure of initiative magnitude and "organizational limits beyond which performance will suffer." The empirical basis for change capacity as a shared, depletable budget.
- **Concurrent overload degrades throughput (the contention mechanism).** Flow and portfolio research finds that running too many initiatives at once raises context-switching cost and resource contention and lowers delivery; capping work in progress consistently improves throughput. [SAFe portfolio WIP guidance](https://agility-at-scale.com/safe/lpm/work-in-progress/) states value streams "can only absorb so much work before context switching and resource contention degrade delivery," and industry data (Lean Enterprise Institute) put the lead-time cost of capping contributors at no more than two assignments at up to 40 percent. The portfolio-side grounding for sequencing by the absorption budget, not the install calendar. Portfolio-logical, distinct from the measured human-fatigue pool above; both feed the same budget.
- **The deployment-adoption gap and shelfware.** Standing a tool up and getting the organization to run on it are different milestones, often months apart; absent adoption a tool becomes "shelfware," paid for and idle. Industry data put a large share of software licenses as never used, and training delivered at rollout decays before the real work arrives weeks later ([WalkMe, software usage vs. adoption](https://www.walkme.com/blog/software-usage-vs-software-adoption/)). The empirical face of pricing a change on the install date and inheriting an absorption gap.

### The autonomous task horizon

The [unit-of-defense chapter](../10-coadaptive/03-unit-of-defense.md#the-earned-human-anchor) dates the routine-gate migration against a measured rate rather than a guess.

- **[METR (2026), "Time Horizon 1.1."](https://metr.org/blog/2026-1-29-time-horizon-1-1/)** and **[METR (2025), "Measuring AI Ability to Complete Long Tasks."](https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/)** The frontier task horizon, the length of task a model completes unsupervised at fifty-percent reliability, doubled about every seven months across 2019-2025 and roughly every four months across 2024-2025. The falsifiable pace behind the five-to-ten-year routine-gate window: if the doubling stalls, the migration slows with it. This rate is the perishable number in the forecast; re-check it against METR's latest each release.

### Accountability and liability for autonomous action

The high-criticality gates in the [unit-of-defense chapter](../10-coadaptive/03-unit-of-defense.md#the-earned-human-anchor) run on a liability clock, not a competence clock. These sources establish why a human is retained at the gate, what makes that retention meaningful rather than nominal, what moves a gate like it, and the market that could move it from the other direction.

- **[Santoni de Sio & van den Hoven (2018), "Meaningful Human Control over Autonomous Systems."](https://doi.org/10.3389/frobt.2018.00015)** *Frontiers in Robotics and AI.* The principle that humans, not algorithms, must remain ultimately responsible for high-stakes decisions, formalized as two conditions: the system tracks the reasons of the humans who deploy it, and every outcome can be traced back to a responsible human. The grounding for keeping a human at the high-criticality gate as the point responsibility traces to.
- **[Elish (2019), "Moral Crumple Zones: Cautionary Tales in Human-Robot Interaction."](https://doi.org/10.17351/ests2019.260)** *Engaging Science, Technology, and Society.* In a highly automated system the nearest human can become the component that absorbs the moral and legal responsibility for failures they had little control over, protecting the system at the operator's expense. The caution that makes the gate a matter of meaningful control rather than a name on the form.
- **[IMDA Singapore (2026), Model AI Governance Framework for Agentic AI.](https://www.imda.gov.sg/resources/press-releases-factsheets-and-speeches/press-releases/2026/new-model-ai-governance-framework-for-agentic-ai)** Launched at the World Economic Forum, 22 January 2026; the first national framework for autonomous agents. Compliance is voluntary, but organizations remain legally accountable for their agents' actions: accountability does not transfer to the agent, it concentrates on the deployer.
- **[U.S. Payments Forum (2017), "Understanding the U.S. EMV Fraud Liability Shifts."](https://www.uspaymentsforum.org/wp-content/uploads/2017/07/EMV-Fraud-Liability-Shift-WP-FINAL-July-2017.pdf)** In October 2015 counterfeit card-present fraud liability shifted to whichever party, merchant or issuer, had not adopted chip technology. The precedent for a liability change moving a long-standing human-gated process quickly, with no improvement in the underlying detection capability.
- **[Zhu (2026), "Insurance of Agentic AI."](https://arxiv.org/abs/2606.05449)** Characterizes agentic AI as a continuum of autonomy and delegated authority and argues for a layered insurance ecosystem covering autonomous-agent action. The early shape of the liability market whose maturation is the third falsifier: if coverage for autonomous action is underwritten by level of authority, a high-criticality gate could empty on a liability clock rather than a capability one.

## Industry Resources

### Supply Chain Security

- **SLSA (Supply-chain Levels for Software Artifacts)**: https://slsa.dev/
- **CISA Software Supply Chain**: https://www.cisa.gov/sbom
- **OpenSSF (Open Source Security Foundation)**: https://openssf.org/

### Security Scaling

- **DevSecOps Foundation**: https://www.devsecops.org/
- **Cloud Security Alliance**: https://cloudsecurityalliance.org/
- **Security Champions Playbook**: https://github.com/c0rdis/security-champions-playbook

### Organizational Transformation

- **Accelerate (DORA Metrics)**: https://www.devops-research.com/research.html
- **Team Topologies**: https://teamtopologies.com/
- **Platform Engineering**: https://platformengineering.org/

## Further Reading

### Security Leadership

- **Building a Modern Security Program**: Ryan McGeehan
- **The Manager's Path**: Camille Fournier (Technical Leadership)

(Kelly Shortridge & Aaron Rinehart's *Security Chaos Engineering* moved up to [Foundational References](#foundational-references).)

### Strategic Thinking

- **Wardley Mapping**: Simon Wardley (Strategic positioning)
- **Good Strategy Bad Strategy**: Richard Rumelt
- **Principles**: Ray Dalio (Organizational principles)

## Community Resources

### Conferences

- **RSA Conference**: https://www.rsaconference.com/
- **Black Hat**: https://www.blackhat.com/
- **DevSecCon**: https://www.devseccon.com/
- **OWASP Global AppSec**: https://owasp.org/events/

### Online Communities

- **r/netsec** (Reddit): Security news and discussion
- **Security Weekly**: Podcast network
- **Risky Business**: Security news podcast
- **Cloud Security Podcast**: Cloud security topics

## Contributing Resources

Have suggestions for additional resources? See our [Contributing Guidelines](../contributing.md) to propose additions.

---

## About This Framework

**Author**: Julie Davila
**Version**: 1.1.0
**License**: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
**Repository**: https://github.com/juliedavila/software-factory-security-framework
**Website**: https://sf2framework.com

This framework represents my personal strategic mental models for security leadership, developed through years of experience leading product security at scale. **SF² is an independent framework** and does not represent the views of any employer.

Version 1.0 is the first complete, usable release. The 0.x series was me finding the shape; 1.0 is the shape, ready to use. It stays a living document, and I'll keep refining it as adversaries evolve and practice catches up. A 1.0 tag means established, never finished.

This is an open source framework (CC BY 4.0) intended as a resource for the broader security community.

---

[:octicons-arrow-left-24: Back to Glossary](glossary.md){ .md-button }
[:octicons-arrow-right-24: View on GitHub](https://github.com/juliedavila/software-factory-security-framework){ .md-button }
