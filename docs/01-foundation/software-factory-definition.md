# Foundation: Software Factory Definition

## The Universal Challenge

Whether you're leading security for a three-person startup or a multinational corporation, you face the same fundamental question: **How do you maintain security accountability for code-based systems that deliver value to end users?**

This responsibility spans your entire value delivery chain—from internal development through third-party dependencies to production operations.

## What is a Software Factory?

!!! info "Definition"
    A **software factory** is an organization that bears operational responsibility for deploying, maintaining, and evolving code-based systems that deliver value to end users, including systematic risk stewardship across all components in their value delivery chain—whether directly controlled or third-party.

This definition encompasses:

- **Scale Agnostic**: From single-developer startups to enterprise organizations
- **Technology Agnostic**: Any tech stack, deployment model, or infrastructure approach
- **Responsibility Focused**: Emphasis on operational accountability rather than just code ownership
- **Third-Party Inclusive**: Recognition that modern software depends extensively on external components

## Key Characteristics

### Operational Responsibility

Software factories are accountable for how code reaches end users and impacts their experience, regardless of whether every component is built in-house.

### Value Delivery Chain

The entire pipeline from code creation through production deployment and ongoing operations.

### Risk Stewardship

Ongoing responsibility for understanding, assessing, and responding to security risks across the complete software stack.

### Systematic Processes

Repeatable, improvable approaches to software creation and deployment rather than ad-hoc development.

## Why This Definition Matters

Understanding your organization as a software factory helps clarify:

1. **Scope of Responsibility**: You're accountable for security across the entire value delivery chain, not just code you write
2. **Third-Party Dependencies**: External components are part of your security responsibility
3. **Operational Focus**: Security accountability extends through production operations
4. **Universal Applicability**: The same framework applies regardless of organization size or technology choices

## How This Framework Complements Existing Security Standards

SF² addresses strategic questions that existing frameworks don't answer:

- **Resource Allocation Strategy**: How do you sustainably invest in security as your organization scales?
- **Contextual Implementation**: How do you adapt security approaches to your specific organizational reality?
- **Business Integration**: How do you align security investments with business outcomes and competitive advantage?

### Framework Relationships

| Framework | Primary Focus | SF² Relationship | When to Use Together |
|-----------|--------------|------------------|----------------------|
| **NIST SSDF** | Secure development lifecycle practices | SF² addresses sustainable resourcing of SSDF practices at scale | Use SSDF for development security practices, SF² for sustainable implementation strategy |
| **OWASP SAMM** | Security practice maturity progression | SF² contextualizes SAMM implementation based on organizational readiness | Implementation speed and scope vary by organizational complexity and readiness level |
| **BSIMM** | Security activity measurement and benchmarking | SF² determines investment priorities for BSIMM activities based on organizational positioning | Use SF² assessment to guide BSIMM implementation scope and sequencing |
| **OWASP ASVS** | Security verification requirements | SF² helps sequence ASVS implementation within scaling investment strategy | Use SF² to determine risk-based ASVS subset vs. comprehensive implementation |

## Examples of Software Factories

To illustrate the universal nature of this definition:

### Startup Software Factory
- **Team**: 5 developers
- **Product**: SaaS application
- **Value Chain**: Cloud infrastructure (AWS), development tools (GitHub), monitoring (Datadog), dozens of open-source dependencies
- **Security Responsibility**: Entire stack, despite building ~5% of code themselves

### Enterprise Software Factory
- **Team**: 500+ developers across multiple teams
- **Products**: Multiple applications and services
- **Value Chain**: Multi-cloud infrastructure, extensive third-party integrations, internal platform services, hundreds of dependencies
- **Security Responsibility**: Complex ecosystem with multiple ownership boundaries but unified accountability to end users

### Platform Software Factory
- **Team**: 50 platform engineers
- **Product**: Internal developer platform
- **Value Chain**: Kubernetes infrastructure, CI/CD pipelines, security tooling, compliance automation
- **Security Responsibility**: Enabling other teams while maintaining platform security posture

!!! note "Common Thread"
    In each case, security responsibility extends far beyond code directly written by the organization. The software factory definition emphasizes this operational accountability across the complete value delivery chain.

---

## Next Steps

Now that you understand what constitutes a software factory, the next section explores the five universal security responsibilities that every software factory must address.

[:octicons-arrow-right-24: Continue to Universal Stewardship](../02-stewardship/overview.md){ .md-button .md-button--primary }
[:octicons-arrow-right-24: Back to Executive Summary](../executive-summary.md){ .md-button }
