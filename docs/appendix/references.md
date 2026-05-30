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

- **Saltzer & Schroeder (1975), "The Protection of Information in Computer Systems."** *Proceedings of the IEEE* 63(9):1278-1308. <https://web.mit.edu/saltzer/www/publications/protection/>. The original eight design principles, least privilege among them. SF²'s investment portfolio is a modern form of the same question: where do you spend constrained attention? This is the half-century anchor.
- **Hardy (1988), "The Confused Deputy."** *ACM SIGOPS Operating Systems Review* 22(4):36-38. <http://cap-lore.com/CapTheory/ConfusedDeputy.html> (DOI: <https://dl.acm.org/doi/10.1145/54289.871709>). The foundational account of why authority and the right to exercise it must be bound together. Agent and MCP authorization failures are this 1988 problem reincarnated.

### Resilience and adaptive capacity

- **Hollnagel, Leonhardt, Shorrock & Licu (2013), *From Safety-I to Safety-II: A White Paper.*** EUROCONTROL. <https://www.skybrary.aero/sites/default/files/bookshelf/2437.pdf>. Reframes safety from the absence of failure to the presence of adaptive capacity. This is the resilience-engineering anchor for SF²'s operational readiness axis.
- **Woods (2018), "Resilience as Graceful Extensibility to Overcome Brittleness."** IRGC. <https://irgc.org/wp-content/uploads/2018/09/Woods-Resilience-as-Graceful-Extensibility-to-Overcome-Brittleness-1.pdf>. Precise vocabulary for what software factories need at brittle boundaries.
- **Cook (2000), "How Complex Systems Fail."** <https://how.complexsystems.fail/>. An 18-point distillation of why complex systems break and keep running anyway. Pairs cleanly with Hollnagel and Woods.

### Economic reasoning in security

- **Geer et al. (2003), "CyberInsecurity: The Cost of Monopoly."** <https://www.schneier.com/essays/archives/2003/09/cyberinsecurity_the.html>. The monoculture argument: security risk priced as a market property, not a moral one.
- **Geer (2010), "Cybersecurity and National Policy."** <https://www.schneier.com/blog/archives/2010/11/dan_geer_on_cyb.html>. Security reasoned about in economic terms. SF²'s investment portfolio needs Geer as its economic spine, or it reads as opinion rather than argument.

### Operational and program design

- **Anderson (2020), *Security Engineering*, 3rd ed.** Wiley. <https://www.cl.cam.ac.uk/archive/rja14/book.html> (full text free). The encyclopedic reference for building dependable distributed systems. SF² cites specific chapters rather than reinventing taxonomy.
- **Venables, "Turning the Security Flywheel."** <https://www.philvenables.com/post/turning-the-security-flywheel>. Self-reinforcing, industrial-scale program design from a sitting CISO. Venables' artisanal-versus-industrial framing is the direct precursor to SF²'s Scaling Investments thesis.
- **Sounil Yu, Cyber Defense Matrix and the DIE Triad.** <https://cyberdefensematrix.com/>. DIE (Distributed, Immutable, Ephemeral) is the architectural inverse of CIA, aligned with SF²'s stance of building security in through constraints on the artifact.

### Emergent organizational design

- **Komoroske, "Coordination Headwind" and the slime-mold model.** <https://komoroske.com/slime-mold/>. Names the gardening-platforms and Schelling-point moves that make SF² emergent rather than imposed. The direct lineage for any claim that security is an emergent property.
- **Shortridge & Rinehart (2023), *Security Chaos Engineering.*** O'Reilly. <https://www.oreilly.com/library/view/security-chaos-engineering/9781098113810/>. Security as ecology, not enforcement. Gives SF² its experimental, probabilistic posture instead of a compliance-checkbox frame.

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
**Version**: 0.5.0
**License**: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
**Repository**: https://gitlab.com/juliedavila/software-factory-security-framework
**Website**: https://sf2framework.com

This framework represents my personal strategic mental models for security leadership, developed through years of experience leading product security at scale. While I currently serve as VP of Security at GitLab, **SF² is not an official GitLab framework** and does not formally represent GitLab's views.

These mental models do inform how I approach security strategy at GitLab. To the extent I have strategic influence over GitLab's security posture, the principles in SF² reflect my underlying approach to securing software factories at scale.

This is an open source framework (CC BY 4.0) intended as a resource for the broader security community.

---

[:octicons-arrow-left-24: Back to Glossary](glossary.md){ .md-button }
[:octicons-arrow-right-24: View on GitLab](https://gitlab.com/juliedavila/software-factory-security-framework){ .md-button }
