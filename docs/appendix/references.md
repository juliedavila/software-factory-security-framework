# References

## Related Security Frameworks

### NIST SSDF (Secure Software Development Framework)
**Focus**: Secure development lifecycle practices

**Website**: https://csrc.nist.gov/Projects/ssdf

**Relationship to SF²**: SF² addresses sustainable resourcing of SSDF practices at scale. Use SSDF for development security practices, SF² for sustainable implementation strategy.

### OWASP SAMM (Software Assurance Maturity Model)
**Focus**: Security practice maturity progression

**Website**: https://owaspsamm.org/

**Relationship to SF²**: SF² contextualizes SAMM implementation based on organizational readiness. Implementation speed and scope vary by operational complexity and readiness level.

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

### Capability and least-privilege

- **[Saltzer & Schroeder (1975), "The Protection of Information in Computer Systems."](https://web.mit.edu/saltzer/www/publications/protection/)** *Proceedings of the IEEE* 63(9):1278-1308. The original eight design principles, least privilege among them. SF²'s investment portfolio is a modern form of the same question: where do you spend constrained attention? This is the half-century anchor.
- **[Hardy (1988), "The Confused Deputy."](http://cap-lore.com/CapTheory/ConfusedDeputy.html)** *ACM SIGOPS Operating Systems Review* 22(4):36-38 ([DOI](https://dl.acm.org/doi/10.1145/54289.871709)). The foundational account of why authority and the right to exercise it must be bound together. Agent and MCP authorization failures are this 1988 problem reincarnated.
- **[Birgisson, Politz, Erlingsson, Taly, Vrable & Lentczner (2014), "Macaroons: Cookies with Contextual Caveats for Decentralized Authorization in the Cloud."](https://theory.stanford.edu/~ataly/Papers/macaroons.pdf)** NDSS ([DOI](https://doi.org/10.14722/NDSS.2014.23212)). Bearer credentials that attenuate: any holder can append a caveat that narrows what a token may do, and none can broaden it, with the chain enforced by nested HMACs. This is the existence proof that authority can be made to shrink at every hop of a delegation chain. The pattern runs in production today: Fly.io scopes its API tokens this way (`fly tokens attenuate`, with caveats that lock a credential to a single machine), and AWS STS session policies enforce the same intersection rule, where a delegated session can never exceed the role it assumed. SF²'s agent-scale authorization argument extends a deployed pattern, not a research idea.

### Agentic security: capability control and the confused deputy

The 2025-2026 agentic-security literature carries the two anchors above, least privilege and the confused deputy, into autonomous AI systems. It converges on boundary enforcement with per-request attenuation, in the same vocabulary SF² uses.

- **[Cloud Security Alliance, "Confused Deputy Attacks on Autonomous AI Agents"](https://labs.cloudsecurityalliance.org/research/csa-research-note-ai-agent-confused-deputy-prompt-injection/) and the [MAESTRO threat-modeling framework](https://cloudsecurityalliance.org/blog/2025/02/06/agentic-ai-threat-modeling-framework-maestro) (2025).** The practitioner-standards confirmation that Hardy's 1988 problem is the central agent-authorization failure, plus a multi-layer framework for modeling it. CSA's lens is SF²'s lens.
- **[Huang & Narajala (2025), "A Novel Zero-Trust Identity Framework for Agentic AI."](https://arxiv.org/abs/2505.19301)** Fine-grained, agent-scoped authority with per-request capability attenuation as the confused-deputy mitigation. The standards-side author (CSA AI Safety co-chair) naming the same mechanism SF² reaches for.
- **[OWASP, Top 10 for Agentic Applications (2026).](https://genai.owasp.org/resource/owasp-top-10-for-agentic-applications-for-2026/)** Introduces "least agency" as an extension of least privilege: permissions attach to tools rather than prompt text, and agents withhold high-impact decisions for explicit authorization. The boundary-at-infrastructure argument and the criticality-gated human decision, peer-reviewed by more than 100 practitioners.
- **[Shi et al. (2025), "Progent: Programmable Privilege Control for LLM Agents" (arXiv:2504.11703).](https://arxiv.org/abs/2504.11703)** Per-request privilege where the effective action space can only shrink without explicit approval, a property the authors call monotonic confinement, benchmarked on AgentDojo and ASB. The formal, measured form of broad latent capability attenuated per request.
- **[Zhu et al. (2025), "MiniScope: A Least Privilege Framework for Authorizing Tool Calling Agents" (arXiv:2512.11147).](https://arxiv.org/abs/2512.11147)** Automatically reconstructed least-privilege permissions that confine damage from unreliable models at low overhead. Capability-preserving by construction.
- **[Betser et al. (2026), "AgenTRIM: Tool Risk Mitigation for Agentic AI" (arXiv:2601.12449).](https://arxiv.org/abs/2601.12449)** Per-step least-privilege enforcement that preserves capability while bounding it. The useful-and-bounded claim, evaluated on AgentDojo.
- **[SPIFFE and SPIRE.](https://spiffe.io)** The CNCF workload-identity standard: short-lived, cryptographically attested identities (SVIDs) issued per workload, the production form of scoped machine identity for agents and services. Necessary for naming a deputy, insufficient on its own for bounding what it may do.
- **[Cloud Security Alliance, "Agent Identity Governance Framework" (2026 draft).](https://labs.cloudsecurityalliance.org/agentic/agentic-identity-governance-framework-v1/)** Recommends SPIFFE SVIDs for persistent agent identities and pairs them with just-in-time, scope-limited, time-bound grants for ephemeral sub-agents: identity plus attenuation, the pairing the authorization chapter argues for.

### Prompt injection and input trust

The prompt-injection literature this chapter draws on, from the naming of the category through the first production exploit to the system-layer defenses that answer it.

- **[Greshake et al. (2023), "Not What You've Signed Up For: Compromising Real-World LLM-Integrated Applications with Indirect Prompt Injection."](https://arxiv.org/abs/2302.12173)** Named indirect prompt injection as a category. The operational lesson: anything the agent reads is part of the agent's attack surface.
- **[Bargury (2024), "Living off Microsoft Copilot."](https://i.blackhat.com/BH-US-24/Presentations/US24-MichaelBargury-LivingoffMicrosofCopilot.pdf)** Black Hat USA 2024. Indirect prompt injection that turns Copilot against its own user through content the agent reads automatically; "remote copilot execution." The trust boundary moves to wherever the agent reads.
- **[Aim Labs (2025), "EchoLeak" (CVE-2025-32711).](https://nvd.nist.gov/vuln/detail/CVE-2025-32711)** The first zero-click prompt-injection exploit in a production LLM system: a single crafted email achieved remote, unauthenticated data exfiltration from Microsoft 365 Copilot. Technical analysis: [arXiv:2509.10540](https://arxiv.org/abs/2509.10540).
- **[Schulhoff et al. (2023), "Ignore This Title and HackAPrompt."](https://aclanthology.org/2023.emnlp-main.302/)** EMNLP 2023. The first community-scale prompt-injection taxonomy: roughly 3,000 participants, some 600,000 adversarial prompts. Defense in the prompt does not generalize; defense at the boundary does.
- **[Google DeepMind & ETH Zürich (2025), "Defeating Prompt Injections by Design" (CaMeL).](https://arxiv.org/abs/2503.18813)** Gives up on hardening the model and moves the defense to a system layer around it: track where each value came from and block the disallowed flow. The research instance of substrate-plus-provenance containment.

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

### AI-era code generation, comprehension, and review

The comprehension crisis in the [Coadaptive Security layer](../10-coadaptive/02-ai-era-threat-surface.md) rests on a documented direction of travel, not a fixed multiple. These are the sources that establish it.

- **[DORA (2025), *State of AI-assisted Software Development.*](https://dora.dev/research/2025/dora-report/)** AI adoption now shows a positive relationship with delivery throughput but continues to show a negative relationship with delivery stability, and 30% of respondents report little or no trust in AI-generated code. The report's frame is that AI is an amplifier, magnifying an organization's existing strengths and weaknesses rather than fixing them. The empirical grounding for [AI Saturation](../05-context/ai-saturation.md) as a contextual modifier: adoption that varies by team, not by size, and shifts the binding constraint downstream to review.
- **[Veracode (2025), *GenAI Code Security Report.*](https://www.veracode.com/blog/genai-code-security-report/)** Across more than 100 models and 80 security-relevant tasks, 45% of AI-generated samples failed the associated security test, with Java the worst at 72%, and the failure rate did not improve as the models grew more capable at functional code. The evidence behind the [AI Saturation](../05-context/ai-saturation.md) warning that this is a security problem you cannot wait out with the next model.
- **[GitClear (2025), *AI Copilot Code Quality.*](https://www.gitclear.com/ai_assistant_code_quality_2025_research)** Analysis of 211 million lines: copy-pasted code rose from 8.3% to 12.3% (2021-2024) while refactored lines fell from 24.1% to 9.5%, a maintainability erosion consistent with generation outrunning comprehension.
- **[DX, "Measuring AI's impact on developer productivity."](https://getdx.com/blog/ai-measurement-hub/)** Experience-sampling that asks reviewers directly whether AI-generated code was harder to understand; the closest industry instrument for the comprehension gap itself.
- **[Osmani (2026), "Comprehension Debt: The Hidden Cost of AI-Generated Code."](https://www.oreilly.com/radar/comprehension-debt-the-hidden-cost-of-ai-generated-code/)** O'Reilly Radar. Names the per-codebase accrual of the comprehension crisis: the growing gap between how much code exists and how much any human genuinely understands. Distinct from technical debt because it breeds false confidence rather than the mounting friction of slow builds and tangled dependencies.
- **[Dorner et al. (2025), "Quo Vadis, Code Review?" (arXiv:2508.06879)](https://arxiv.org/abs/2508.06879)** Practitioners expect LLMs as active review participants and name the long-term risk of eroding human understanding, accountability, and trust.
- **[Tilbury & Flowerday (2026), "The Vigilance Paradox: Automation Reliance Inside the Modern SOC."](https://doi.org/10.1108/ics-08-2025-0318)** *Information & Computer Security.* A survey of 696 security analysts plus 29 interviews finds that automation complacency reduces monitoring of automated output and that systematic verification procedures are what mitigate it. The security-domain evidence that the comprehension gap is closed by verifying, not consuming.

### Comprehension as a queryable model of behavior

The comprehension a software factory needs is not knowledge held in any one person's head but an authoritative, queryable model of how the system behaves, reconciled against the code as it changes. These sources establish both the shape of that model and the guard rail on it: a model built from example assertions records what was checked, not what the system was meant to do.

- **[Finster, "Spec-Driven Development Isn't New."](https://bdfinst.medium.com/5-minute-devops-spec-driven-development-isnt-new-3a5c552efc95)** Bryan Finster (Dojo Consortium). "Tests describe behavior. Behavior drives code. Code is the implementation detail." The order an authoritative behavioral model has to respect, and the reason good acceptance tests let you rewrite a system without drama: they capture intent, not implementation. The continuous-delivery statement of the queryable-model claim.
- **[Gu et al. (2024), "The Counterfeit Conundrum: Can Code Language Models Grasp the Nuances of Their Incorrect Generations?" (arXiv:2402.19475)](https://arxiv.org/abs/2402.19475)** Code language models generate programs that pass weaker correctness checks while staying subtly wrong, and the models themselves struggle to recognize or repair them. The empirical basis for the intent-vs-assertion guard rail: a model validated only by passing checks answers with confidence and is wrong.
- **[Baumeister (2004), "Combining Formal Specifications with Test Driven Development."](https://doi.org/10.1007/978-3-540-27777-4_1)** Tests describe behavior only by example, so a suite of passing assertions underdetermines what the system was meant to do. The classic statement of why example-based tests are insufficient as a specification of intent.
- **[Park & Maurer (2009), "Communicating Domain Knowledge in Executable Acceptance Test Driven Development."](https://doi.org/10.1007/978-3-642-01853-4_5)** Executable acceptance tests as a living, queryable specification of behavior rather than a static document. Grounds the "current map you can question" form of the comprehension model.

### Agent and MCP supply chain

- **[OWASP MCP Security Cheat Sheet.](https://cheatsheetseries.owasp.org/cheatsheets/MCP_Security_Cheat_Sheet.html)** Treats untrusted or compromised MCP server packages as a supply-chain attack, and names tool poisoning (malicious instructions hidden in tool descriptions, parameter schemas, or return values), rug pulls (a server changing its tool definitions after approval), and tool shadowing. Its core defense is the inventory-and-pin discipline the rest of the supply chain already needs: pin tool definitions by cryptographic hash and alert on any change.
- **[The Hacker News (2025), "First Malicious MCP Server Found Stealing Emails in Rogue Postmark-MCP Package."](https://thehackernews.com/2025/09/first-malicious-mcp-server-found.html)** The first malicious MCP server found in the wild, identified by Koi Security: an npm package, postmark-mcp, that silently BCC'd every outgoing email to an attacker-controlled address across more than 1,600 installs before it was pulled. The in-the-wild proof that an agent's toolchain is a supply-chain target, not a hypothetical one.

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

### Operator versus provider, and authorization granularity

The operator/provider split in [Third-Party](../02-stewardship/third-party.md) rests on a single principle: an operator can confine an agent only as finely as the platform's own authorization model allows. These are the anchors for that claim; the EU AI Act's provider-versus-deployer line, codifying the same split in law, is listed under regulation above.

- **[Schneider (2003), "Least Privilege and More."](https://www.cs.cornell.edu/fbs/publications/leastPriv.pdf)** *IEEE Security & Privacy* 1(5):55-59. Least privilege is bounded by what the enforcement mechanism can express: you confine a component only as finely as the underlying model allows. The academic anchor for the claim that a provider defines what is expressible in the authorization vocabulary, and the operator answers for the residual the vocabulary cannot remove.
- **[GitHub (2022), "Introducing fine-grained personal access tokens for GitHub."](https://github.blog/security/application-security/introducing-fine-grained-personal-access-tokens-for-github/)** Classic personal access tokens "provided very coarse-grained permissions, granting access to all of the repositories and organizations that the owning user can access." The lived form of platform-set scope, where the token that reads one project reads them all until the platform ships a finer primitive. The concrete grounding for counting coarse primitives as a real cost when you choose what to build on.

### Adoption velocity, paved roads, and guardrails

[Relationship Health](../05-context/relationship-health.md) turns on adoption velocity, and the platform-engineering field has already worked out how to raise it without trust: make the secure path the default path. These are the anchors for the friction-over-mandate reframe.

- **[DORA, "Platform engineering" capability.](https://dora.dev/capabilities/platform-engineering/)** An internal developer platform provides "golden paths" and a "paved road that scales these benefits securely," making the supported, secure option the self-service default. The grounding for adoption velocity as the binding constraint, and for the secure default that is mandatory and low-friction at once.
- **[Howard (2018), "Less Gates, More Guardrails."](https://www.sonatype.com/blog/less-gates-more-guardrails-devsecops-lessons-learned-in-2017)** Sonatype. Security controls "cannot take the form of toll gates; instead, they must take the form of guardrails": automated, embedded in the pipeline, fast by default. The case that friction, not whether a control is mandatory, is what predicts adoption.
- **[Singhal, "Scaling Appsec at Netflix."](https://netflixtechblog.medium.com/scaling-appsec-at-netflix-6a13d7ab6043)** Netflix Technology Blog. A paved-road platform baked security in by default rather than leaving it to a checklist, so a team could reach a production-ready, authenticated service in minutes. The worked example of a low-friction default carrying full adoption without a relationship to lean on.

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
**Version**: 0.6.0
**License**: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
**Repository**: https://gitlab.com/juliedavila/software-factory-security-framework
**Website**: https://sf2framework.com

This framework represents my personal strategic mental models for security leadership, developed through years of experience leading product security at scale. **SF² is an independent framework** and does not represent the views of any employer.

This is an open source framework (CC BY 4.0) intended as a resource for the broader security community.

---

[:octicons-arrow-left-24: Back to Glossary](glossary.md){ .md-button }
[:octicons-arrow-right-24: View on GitLab](https://gitlab.com/juliedavila/software-factory-security-framework){ .md-button }
