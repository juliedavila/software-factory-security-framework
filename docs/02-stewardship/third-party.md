# Third-Party Stewardship

## The Integration Ecosystem

Modern software factories rarely operate in isolation—they integrate with cloud providers, monitoring services, development tools, and business platforms. Third-party stewardship addresses the security implications of these operational dependencies.

## Core Responsibility

Managing security risks from integrated services, platforms, and vendors throughout their operational lifecycle.

!!! info "Beyond Supply Chain"
    While [Supply Chain Stewardship](supply-chain.md) focuses on dependencies incorporated into your software, Third-Party Stewardship addresses operational services and platforms that support your software factory.

## Key Focus Areas

### 1. Integration Security Risk Management

**Risk Assessment**:

- Security evaluation before integration
- Data flow mapping and classification
- Access scope and permission analysis
- Vendor security posture assessment
- Ongoing risk monitoring

**Integration Patterns**:

- API security and authentication
- Service-to-service encryption
- Least-privilege access controls
- Network segmentation where appropriate
- Regular security review of integrations

!!! example "Common Third-Party Integrations"
    - **Cloud Providers**: AWS, GCP, Azure
    - **Development Tools**: GitHub, GitLab, CI/CD platforms
    - **Monitoring/Observability**: Datadog, New Relic, Splunk
    - **Business Tools**: Slack, Google Workspace, Salesforce
    - **Security Tools**: SIEM, vulnerability scanners, identity providers

### 2. Shared Responsibility Model Clarity

**Responsibility Boundaries**:

- Clear documentation of who secures what
- Regular validation of assumptions
- Training on shared responsibility
- Audit of actual vs. documented responsibilities
- Incident response coordination procedures

**Common Shared Responsibility Areas**:

- **Cloud Infrastructure**: Provider secures physical layer, you secure workloads
- **SaaS Applications**: Provider secures application, you secure access and data
- **Platform Services**: Provider secures platform, you secure usage and configuration
- **Identity Providers**: Provider secures authentication, you secure authorization

!!! warning "Shared Responsibility Failures"
    Many security incidents result from misunderstandings about responsibility boundaries. Document and validate assumptions regularly.

### 3. Service Provider Security Monitoring

**Ongoing Assessment**:

- Vendor security posture tracking
- Compliance certification monitoring
- Security incident notification requirements
- Regular vendor security reviews
- Third-party audit rights and execution

**Vendor Communication**:

- Established security contacts
- Incident notification procedures
- Change management communication
- Security improvement collaboration
- Escalation paths for security issues

### 4. Contingency Planning

**Service Failure Preparation**:

- Business continuity plans for critical services
- Data portability and backup strategies
- Alternative provider evaluation
- Failover and recovery procedures
- Regular testing of contingency plans

**Vendor Security Incident Response**:

- Coordinated incident response procedures
- Customer data protection protocols
- Communication templates and responsibilities
- Recovery procedures and validation
- Post-incident review processes

### 5. Contract and SLA Security Requirements

**Contractual Protections**:

- Security requirements in vendor contracts
- Data protection and privacy clauses
- Incident notification SLAs
- Audit rights and compliance requirements
- Termination and data return procedures

**SLA Monitoring**:

- Security SLA tracking and reporting
- Performance against security commitments
- Escalation for SLA violations
- Regular SLA review and updates

## Success Indicators

| Indicator | Description | Target |
|-----------|-------------|--------|
| **Integration Assessment Coverage** | Percentage of third-party integrations with security assessment | 100% of critical integrations |
| **Shared Responsibility Validation** | Frequency of shared responsibility model review | Quarterly |
| **Vendor Security Review Completion** | Percentage of critical vendors reviewed annually | 100% |
| **Contingency Plan Testing** | Critical service contingency plans tested | Annually minimum |
| **Contract Compliance** | Vendor adherence to security contract requirements | >95% |
| **Incident Coordination Time** | Time to coordinate response with vendor during incident | <2 hours |

## Implementation by Strategic Position

### Visionaries (Simple + High Readiness)
- Cloud-native service integrations with built-in security
- Automated vendor security monitoring
- Policy-as-code for integration governance
- Modern identity and access management

### Leaders (Complex + High Readiness)
- Enterprise vendor risk management platforms
- Comprehensive third-party security orchestration
- Cross-organization integration policies
- Advanced vendor security scorecards

### Niche Players (Simple + Low Readiness)
- Basic vendor security questionnaires
- Manual integration documentation
- Spreadsheet-based vendor tracking
- Focus on critical vendor relationships first

### Challengers (Complex + Low Readiness)
- Pragmatic vendor prioritization (critical first)
- Hybrid manual/automated assessment
- Gradual integration security improvements
- Leverage existing procurement infrastructure

## Strategic Investments That Scale

### Vendor Risk Management Platform

**Centralized Oversight**:

- Single source of truth for vendor relationships
- Automated vendor security assessment
- Risk scoring and trending
- Integration with procurement systems
- Continuous monitoring capabilities

### Integration Security Patterns

**Reusable Security Controls**:

- Pre-approved integration patterns
- Security-vetted service catalogs
- Template contracts with security requirements
- Standardized authentication and authorization
- Automated security validation

## Common Pitfalls

!!! warning "Anti-Patterns to Avoid"
    **Set-and-Forget Assessments**: Initial vendor review without ongoing monitoring

    **Security Questionnaire Theater**: Relying solely on vendor self-assessment

    **Shadow IT**: Unmanaged third-party integrations circumventing security review

    **Unclear Responsibility**: Assumptions about shared responsibility without validation

    **No Contingency Planning**: Single points of failure without backup plans

## Quick Start Checklist

For organizations starting third-party stewardship:

- [ ] **Week 1**: Inventory all third-party services and integrations
- [ ] **Week 2**: Identify critical vendors requiring immediate security review
- [ ] **Week 3**: Document shared responsibility assumptions for critical services
- [ ] **Month 2**: Conduct security assessments for top 5 critical vendors
- [ ] **Month 3**: Establish vendor security incident notification procedures
- [ ] **Quarter 2**: Develop contingency plans for single points of failure
- [ ] **Quarter 3**: Implement vendor security review cadence
- [ ] **Quarter 4**: Test contingency plans for critical service failures

---

## Next Steps

[:octicons-arrow-right-24: Continue to Continuous Learning](continuous-learning.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Runtime Stewardship](runtime.md){ .md-button }
