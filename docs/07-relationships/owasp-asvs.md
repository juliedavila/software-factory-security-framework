# SF² and OWASP ASVS Integration

## Framework Overview

**OWASP ASVS (Application Security Verification Standard)**
- **Focus**: Security verification requirements for applications
- **Website**: https://owasp.org/www-project-application-security-verification-standard/
- **Purpose**: Comprehensive security requirements for testing web applications

## Relationship to SF²

**OWASP ASVS** provides **comprehensive security verification requirements** organized into 14 categories across 3 verification levels.

**SF²** helps determine **which ASVS level to target**, **which requirements to prioritize**, and **how to implement verification** based on organizational position and risk.

## Key Insight

**ASVS provides three verification levels**:
- **Level 1** (Opportunistic): Basic security for low-risk applications
- **Level 2** (Standard): Most applications should meet this level
- **Level 3** (Advanced): High-security applications with stringent requirements

**SF² helps you determine**:
- Which ASVS level is appropriate for your organization
- Whether to implement comprehensive ASVS or risk-based subset
- How to sequence ASVS requirement implementation
- Whether to automate or manually verify ASVS requirements

## ASVS Verification Categories

ASVS organizes requirements into 14 categories:

1. Architecture, Design and Threat Modeling
2. Authentication
3. Session Management
4. Access Control
5. Validation, Sanitization and Encoding
6. Stored Cryptography
7. Error Handling and Logging
8. Data Protection
9. Communication
10. Malicious Code
11. Business Logic
12. Files and Resources
13. API and Web Service
14. Configuration

## SF² ASVS Strategy by Quadrant

### Visionaries (Simple + High Readiness)

**ASVS Verification Approach**: Automated Level 2, selective Level 3

**Target ASVS Level**: **Level 2 (Standard)** for most applications

**Implementation Strategy**:
- **Automate ASVS verification** in CI/CD pipeline
- **Automated testing** for ASVS categories that support automation:
  - V5 (Validation, Sanitization) - SAST/DAST
  - V7 (Error Handling and Logging) - Automated scanning
  - V9 (Communication) - TLS/certificate verification
  - V13 (API and Web Service) - API security testing
- **Secure templates** implementing ASVS requirements by default
- **Self-service ASVS verification** for developers

**Manual Verification** (for requirements that can't be automated):
- V1 (Architecture and Threat Modeling) - Risk-based for novel architectures
- V4 (Access Control) - Logic testing for complex authorization
- V11 (Business Logic) - Application-specific verification

**Timeline**: 12-18 months to comprehensive automated ASVS Level 2

### Leaders (Complex + High Readiness)

**ASVS Verification Approach**: Comprehensive Level 2, selective Level 3 for high-risk

**Target ASVS Level**:
- **Level 2 (Standard)** for all applications
- **Level 3 (Advanced)** for high-security applications (payment, sensitive data, critical infrastructure)

**Implementation Strategy**:
- **Platform-scale ASVS verification** serving multiple teams
- **Automated ASVS testing** integrated into security platforms
- **Security product capabilities** (if customer-facing software factory)
  - ASVS compliance as competitive advantage
  - Automated customer-facing security verification reports
- **Advanced verification** for complex requirements
  - Automated threat modeling capabilities
  - Sophisticated access control testing

**Optimization Focus**:
- Automated evidence collection for ASVS compliance
- Continuous ASVS verification (not point-in-time)
- Industry leadership in ASVS automation

**Timeline**: Ongoing optimization of established ASVS capabilities

### Niche Players (Simple + Low Readiness)

**ASVS Verification Approach**: Essential Level 1 requirements, risk-based Level 2

**Target ASVS Level**: **Level 1 (Opportunistic)** baseline, **selective Level 2** for high-risk areas

**Implementation Strategy**:
- **Focus on highest-risk ASVS categories**:
  - V2 (Authentication) - Critical for all applications
  - V3 (Session Management) - Essential security baseline
  - V5 (Validation, Sanitization) - Prevent common vulnerabilities
  - V9 (Communication) - TLS/HTTPS basics
- **Use managed security services** that provide ASVS compliance
- **Basic security testing** covering essential ASVS requirements
- **Accept Level 1 compliance** for lower-risk areas

**Skip or Minimize**:
- Advanced ASVS categories (Architecture, Business Logic)
- Comprehensive Level 2 verification for low-risk functionality
- Level 3 requirements (not cost-effective at this scale)

**Timeline**: 6-12 months to essential ASVS Level 1 coverage

### Challengers (Complex + Low Readiness)

**ASVS Verification Approach**: Hybrid (Level 2 for new, Level 1 for legacy)

**Target ASVS Level by System**:

**New/Modern Applications**:
- **Level 2 (Standard)** with automated verification
- Build Visionary/Leaders-level ASVS capabilities for future

**Active Legacy Applications**:
- **Level 1 (Opportunistic)** baseline
- **Risk-based Level 2** for critical functionality
- Accept pragmatic risk for legacy

**Legacy Applications Being Retired**:
- **Level 1 or accept known gaps**
- Don't invest in comprehensive ASVS for retiring systems

**Implementation Strategy**:
- **Automated ASVS** for new application development
- **Pragmatic risk assessment** for legacy applications
- **Gradual ASVS improvement** as applications modernize
- **Hybrid verification tools** that work across modern and legacy

**Timeline**: 3-5 years to comprehensive Level 2 as applications modernize

## Risk-Based ASVS Prioritization

### Critical ASVS Categories (All Organizations)

These categories should be prioritized regardless of position:

1. **V2 (Authentication)** - Broken authentication = complete compromise
2. **V3 (Session Management)** - Session attacks affect all applications
3. **V4 (Access Control)** - Broken access control = unauthorized access
4. **V5 (Validation, Sanitization)** - Prevents injection attacks

### High-Value ASVS Categories (Visionaries, Leaders, Challengers-New)

5. **V9 (Communication)** - TLS/encryption for data in transit
6. **V8 (Data Protection)** - Sensitive data handling
7. **V13 (API and Web Service)** - API security increasingly critical

### Moderate-Value ASVS Categories (Situational)

8. **V6 (Stored Cryptography)** - If handling sensitive data
9. **V7 (Error Handling and Logging)** - Incident response needs
10. **V14 (Configuration)** - Security misconfiguration prevention

### Lower-Value ASVS Categories (Deprioritize)

11. **V1 (Architecture, Design, Threat Modeling)** - Time-intensive, hard to automate
12. **V11 (Business Logic)** - Application-specific, manual verification
13. **V10 (Malicious Code)** - Covered by supply chain security
14. **V12 (Files and Resources)** - Lower risk for modern applications

## Contextual Modifiers and ASVS

### High Attack Landscape Maturity
**Impact**: Accelerates need for comprehensive ASVS
- **Level 2 becomes minimum** even for simple applications
- **Automated ASVS verification essential** (manual testing too slow)
- **Continuous verification** (not annual assessments)

### High Regulatory Constraints
**Impact**: May require comprehensive Level 2 or Level 3
- **PCI DSS, HIPAA, SOC 2** often reference ASVS
- **Level 3 verification** may be mandated for regulated data
- **Evidence collection** for ASVS compliance becomes significant burden

### Customer-Facing Software Factory
**Impact**: ASVS becomes competitive advantage
- **ASVS Level 2+ compliance** as trust signal to customers
- **Security verification reports** based on ASVS
- **Industry certifications** (OWASP, CSA) requiring ASVS

## Practical Integration Examples

### Example 1: Visionary SaaS Startup

**Scenario**: Series B startup building SaaS platform

**Traditional ASVS Approach**:
- Annual penetration test checking ASVS requirements
- Manual verification of ASVS categories
- Expensive and point-in-time

**SF²-Informed Approach**:
- **Automated ASVS verification** in CI/CD:
  - SAST/DAST covering V5, V7, V9, V13
  - Automated authentication testing (V2, V3)
  - TLS/certificate validation (V9)
- **Secure templates** implementing ASVS requirements by default
- **Manual verification** only for V1, V4, V11 (architecture, access control, business logic)
- **Continuous ASVS verification** with every deployment

**Outcome**: Level 2 ASVS compliance with 80% automation, continuous verification

### Example 2: Challenger Financial Services

**Scenario**: Large bank with legacy applications and modern cloud services

**Traditional ASVS Approach**:
- Attempt Level 3 ASVS across all applications
- Comprehensive manual verification
- Overwhelming security team

**SF²-Informed Approach**:
- **New cloud services**: Level 2 ASVS with automated verification
- **Critical legacy**: Level 2 for V2-V5 (authentication, access control, validation)
- **Non-critical legacy**: Level 1 baseline, accept gaps
- **Retiring applications**: No new ASVS investment

**Outcome**: Achievable ASVS compliance aligned with modernization timeline

### Example 3: Leaders Platform Company

**Scenario**: Large tech company with security product capabilities

**Traditional ASVS Approach**:
- Comprehensive Level 2-3 ASVS verification
- Significant manual verification effort

**SF²-Informed Approach**:
- **Automated ASVS platform** serving all teams:
  - Security testing platform covering ASVS requirements
  - Self-service ASVS verification for developers
  - Automated compliance reporting
- **Advanced verification capabilities**:
  - Automated threat modeling (V1)
  - Sophisticated access control testing (V4)
- **Customer-facing ASVS compliance**:
  - Security verification reports based on ASVS
  - Competitive advantage through security transparency

**Outcome**: Comprehensive ASVS Level 2-3 with platform efficiency, security as differentiator

## ASVS Level Decision Matrix

| Your SF² Position | Target ASVS Level | Verification Approach | Coverage |
|------------------|------------------|---------------------|----------|
| **Visionaries** | Level 2 | Automated verification | Comprehensive for new |
| **Leaders** | Level 2-3 | Platform-scale automation | Comprehensive all apps |
| **Niche Players** | Level 1 | Managed services, basic testing | Essential categories |
| **Challengers** | Level 1-2 hybrid | Automated for new, risk-based for legacy | New: L2, Legacy: L1 |

## Key Takeaways

**Use OWASP ASVS for**:
- Comprehensive security verification requirements
- Standard terminology for security testing
- Compliance and certification requirements
- Technical security testing guidance

**Use SF² for**:
- Determining appropriate ASVS level for your organization
- Prioritizing ASVS requirements based on risk
- Sequencing ASVS implementation within investment strategy
- Choosing automation vs manual verification approach

**Together**:
- ASVS provides the verification requirements
- SF² provides the implementation strategy
- Result: Risk-appropriate security verification at sustainable scale

**Critical Insights**:
- **Level 3 ASVS is not always necessary** - Most applications should target Level 2
- **Not all ASVS requirements are equal** - Prioritize based on risk
- **Automation accelerates ASVS adoption** - Don't rely solely on manual verification
- **Hybrid approaches work** - Different ASVS levels for different system types

---

## Next Steps

You've completed the Framework Relationships section! Continue to Use Cases or explore the Appendix:

[:octicons-arrow-right-24: View Use Cases](../08-use-cases/scenarios.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to BSIMM Relationship](bsimm.md){ .md-button }
[:octicons-book-24: Explore Glossary](../appendix/glossary.md){ .md-button }

[:octicons-arrow-right-24: Edit this page](https://gitlab.com/juliedavila/software-factory-security-framework/-/edit/master/docs/07-relationships/owasp-asvs.md){ .md-button }
