# Universal Risk Stewardship Responsibilities

## The Common Ground Across All Software Factories

Regardless of size, technology stack, or industry, every software factory must address five core stewardship areas. These represent the fundamental security responsibilities that scale with your organization.

!!! info "Universal Applicability"
    These stewardship responsibilities apply to every software-producing organization—from three-person startups to multinational enterprises. The specific implementation approaches vary based on your [strategic position](../03-positioning/two-axis-model.md), but the responsibilities themselves are universal.

## The Five Stewardship Areas

| Stewardship Area | Core Responsibility | Why Universal |
|-----------------|-------------------|--------------|
| **[Supply Chain](supply-chain.md)** (#1 Priority) | Managing security risks from all external dependencies and third-party components throughout their lifecycle | Modern software depends heavily on external components—even simple applications typically incorporate dozens of third-party dependencies |
| **[Process](process.md)** | Security embedded throughout development lifecycle with continuous validation and rapid feedback loops | Development process directly impacts security outcomes regardless of sophistication level |
| **[Runtime](runtime.md)** | Maintaining security and reliability of systems in production with proactive monitoring and rapid response capabilities | Once serving users, organization becomes directly responsible for security behavior in production |
| **[Third-Party](third-party.md)** | Managing security risks from integrated services, platforms, and vendors throughout operational lifecycle | Modern software factories integrate with cloud providers, monitoring services, development tools, business platforms |
| **[Continuous Learning](continuous-learning.md)** | Evolving security practices based on experience, incidents, and changing threat landscape while building organizational capability | Security landscape continuously evolves through new threats, technologies, organizational changes |

## Key Focus Areas by Stewardship Area

### Supply Chain (#1 Priority)

- Dependency monitoring with automated vulnerability detection
- Vendor security evaluation and relationship management
- Supply chain attack detection and response planning
- License compliance integrated with procurement

**Success Indicators**: Dependency mapping coverage, vendor security assessment completion, supply chain incident response readiness

### Process

- Pipeline security controls with automated continuous testing
- Code review effectiveness integrated with quality processes
- Secret management with automated rotation
- Environment consistency with drift prevention
- Security-quality integration

**Success Indicators**: Developer satisfaction scores, security-quality integration metrics, continuous validation effectiveness

### Runtime

- Production monitoring with automated incident detection
- Incident response readiness and execution
- Data protection with access controls
- Performance-security balance optimization

**Success Indicators**: Incident response time, monitoring coverage effectiveness, customer impact assessment quality

### Third-Party

- Integration security risk management
- Shared responsibility model clarity and enforcement
- Service provider security monitoring
- Contingency planning with tested procedures

**Success Indicators**: Integration assessment coverage, shared responsibility validation, contingency plan testing

### Continuous Learning

- Risk monitoring with predictive insights
- Feedback loop optimization
- Blameless post-mortems with lessons learned integration
- Knowledge sharing with cross-functional collaboration

**Success Indicators**: Learning culture indicators, improvement cycle effectiveness, knowledge transfer success rates

## Strategic Insight

!!! tip "Implementation Varies, Responsibilities Don't"
    These stewardship responsibilities are universal, but **implementation approaches must scale appropriately to organizational complexity and readiness**.

    A three-person startup and a 500-person enterprise both need supply chain stewardship, but their implementations will look dramatically different. The [Strategic Positioning](../03-positioning/two-axis-model.md) section provides frameworks for making these strategic implementation decisions.

## How Stewardship Areas Interact

The five stewardship areas are interconnected:

- **Supply Chain** risks can manifest during **Runtime**
- **Process** improvements enable better **Third-Party** integration security
- **Continuous Learning** informs improvements across all other areas
- **Runtime** incidents drive **Process** improvements
- **Third-Party** security depends on **Supply Chain** visibility

Understanding these interactions helps you prioritize investments that create cascading benefits across multiple stewardship areas.

## Next Steps

Explore each stewardship area in detail, starting with the highest priority:

[:octicons-arrow-right-24: Supply Chain Stewardship (#1 Priority)](supply-chain.md){ .md-button .md-button--primary }
[:octicons-arrow-right-24: Process Stewardship](process.md){ .md-button }
[:octicons-arrow-right-24: Runtime Stewardship](runtime.md){ .md-button }

---

[:octicons-arrow-left-24: Back to Foundation](../01-foundation/software-factory-definition.md){ .md-button }
