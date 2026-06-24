# Glossary

## Core Framework Terms

**Software Factory**
: An organization that bears operational responsibility for deploying, maintaining, and evolving code-based systems that deliver value to end users, including systematic risk stewardship across all components in their value delivery chain, whether directly controlled or third-party.

**SF²**
: Software Factory Security Framework - A strategic mental model for scaling security capabilities while improving business outcomes.

## Strategic Positioning

**Blast Radius**
: The horizontal positioning axis: the inherent reach of a failure assuming containment fails, set by granted authority (Small reach → Large reach). Headcount is a legacy proxy AI has decoupled from reach. (Called Operational Complexity before v0.7.)

**Blast Cell**
: The bounded region a contained failure stays inside. Small reach means a worst-case failure is held to a single blast cell; large reach means it cascades across the estate. The unit that blast radius is measured against.

**Operational Readiness**
: The "how you operate" axis: automation, infrastructure modernity, process maturity, and the ability to prove containment holds (Lower → Higher).

**Studio**
: Organizations with small inherent reach and high readiness (Small reach + High Readiness): narrow grants, floor built.

**Lean**
: Organizations with large inherent reach and proven containment (Large reach + High Readiness). The goal position: large blast radius with the floor built.

**Craft**
: Organizations with small inherent reach and low readiness (Small reach + Low Readiness): narrow grants, containment unproven.

**Mass**
: Organizations with large inherent reach and unproven containment (Large reach + Low Readiness). Ungoverned reach, not size.

## Universal Stewardship

**Supply Chain Stewardship**
: Managing security risks from all external dependencies and third-party components throughout their lifecycle. #1 priority due to adversary evolution to automated discovery.

**Process Stewardship**
: Security embedded throughout development lifecycle with continuous validation and rapid feedback loops.

**Runtime Stewardship**
: Maintaining security and reliability of systems in production with proactive monitoring and rapid response capabilities.

**Third-Party Stewardship**
: Managing security risks from integrated services, platforms, and vendors throughout operational lifecycle.

**Adaptive Capacity**
: Whether the system as a whole can absorb a surprise it was not designed for and keep working. The condition formerly called Continuous Learning, renamed for what it is. Unlike the other four stewardship areas, it maps to no single team: you assess whether the system has it, you cannot hand it to anyone. Resilience-engineering lineage (Holling, Hollnagel, Woods, Cook).

## Investment Portfolio

**BAU (Business-as-Usual) Activities**
: Manual security work that scales linearly with growth (security reviews, threat modeling, incident response). Should be deliberately constrained post-scaling crisis.

**Scaling Investments**
: Capabilities that reduce manual effort exponentially (automation platforms, self-service capabilities, policy-as-code). Primary investment focus past crisis point.

**Platform Effects**
: Benefits that serve both internal and customer software factories, creating multiplicative value.

**Scaling Crisis**
: The inevitable moment when demand for security services grows exponentially while team capacity grows linearly.

**Paved Roads**
: Secure templates and patterns that engineers can use without security review, reducing manual effort while maintaining security.

**Catch and Store Principle**
: Security investments that capture organizational effort and store it in reusable capabilities serving future needs without additional manual work.

## Contextual Modifiers

**Attack Landscape Maturity**
: The evolution of adversary capabilities from targeted attacks to automated discovery at internet scale. High maturity creates existential gaps for manual defender processes.

**Supply Chain Complexity**
: The interconnected risk created by multi-tier dependencies, critical single vendors, and geopolitical constraints.

**Regulatory Constraints**
: Compliance requirements that cut both ways: they increase BAU workload and constrain technology choices, while also driving security investment as a forcing function and market-access lever.

**Crisis Events**
: Security incidents, compliance failures, or business disruptions that create windows for organizational change and transformation.

**Change Capacity**
: Organizational ability to absorb transformation, affecting transition speed and scaling investment success probability.

**Relationship Health**
: The quality of relationships between security and engineering teams, directly affecting adoption velocity.

**AI Saturation**
: How much of an organization's software work AI now generates, from code to review. As that proportion climbs, the binding constraint shifts from writing code to reviewing it, moving investment from manual review toward automated guardrails and scoped agent identity.

**PQC Exposure**
: How much of an organization's cryptography the quantum transition puts at risk, and how hard that risk is to retire. Not how close quantum computers are, but your own footprint: how long data must stay secret and how hard the underlying math is to swap. The loss is silent and already underway (harvest now, decrypt later).

## Technical Terms

**SBOM (Software Bill of Materials)**
: A comprehensive inventory of software components, dependencies, and their relationships.

**SAST (Static Application Security Testing)**
: Automated analysis of source code for security vulnerabilities.

**DAST (Dynamic Application Security Testing)**
: Automated security testing of running applications.

**Policy-as-Code**
: Security policies defined and enforced through code rather than manual processes.

**Infrastructure-as-Code (IaC)**
: Managing and provisioning infrastructure through machine-readable definition files rather than manual configuration.

## Measurement Terms

**Mean Time to Detect (MTTD)**
: Average time to identify security incidents.

**Mean Time to Contain (MTTC)**
: Average time to stop incident spread.

**Mean Time to Recover (MTTR)**
: Average time to restore normal operations after an incident.

**Time to Value**
: Duration from investment to measurable benefits.

## Related Frameworks

**NIST SSDF (Secure Software Development Framework)**
: Framework for secure development lifecycle practices.

**OWASP SAMM (Software Assurance Maturity Model)**
: Framework for assessing and improving software security practices.

**BSIMM (Building Security In Maturity Model)**
: Measurement framework for software security initiatives.

**OWASP ASVS (Application Security Verification Standard)**
: Standard for testing web application technical security controls.

---

[:octicons-arrow-right-24: View References](references.md){ .md-button }
[:octicons-arrow-left-24: Back to Use Cases](../08-use-cases/scenarios.md){ .md-button }
