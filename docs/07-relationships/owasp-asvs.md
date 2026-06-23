# SF² and OWASP ASVS Integration

## Framework Overview

**OWASP ASVS (Application Security Verification Standard)**
- **Focus**: Security verification requirements for applications
- **Website**: https://owasp.org/www-project-application-security-verification-standard/
- **Purpose**: Comprehensive security requirements for testing web applications

## Relationship to SF²

**OWASP ASVS** provides **comprehensive security verification requirements** organized into 17 chapters across three verification levels ([ASVS 5.0](https://owasp.org/www-project-application-security-verification-standard/), 2025).

**SF²** helps determine **which ASVS level to target**, **which requirements to prioritize**, and **how to implement verification** based on organizational position and risk.

SF² sequences a practice baseline, and ASVS's verification levels are one expression of that baseline, not a fixed endpoint. As that baseline broadens toward attestation and capability standards, SF²'s role holds: it picks the right subset for your context, and it ties the verification back to what the system is allowed to do.

## Key Insight

**ASVS provides three verification levels** (each a superset of the one below):
- **Level 1**: Baseline security and the first step into ASVS, for lower-risk applications
- **Level 2**: The recommended target for most applications, especially those handling sensitive data
- **Level 3**: High-assurance requirements for critical, high-value applications

**SF² helps you determine**:
- Which ASVS level is appropriate for your organization
- Whether to implement comprehensive ASVS or risk-based subset
- How to sequence ASVS requirement implementation
- Whether to automate or manually verify ASVS requirements

## ASVS Verification Chapters

ASVS 5.0 organizes requirements into 17 chapters:

1. **V1** Encoding and Sanitization
2. **V2** Validation and Business Logic
3. **V3** Web Frontend Security
4. **V4** API and Web Service
5. **V5** File Handling
6. **V6** Authentication
7. **V7** Session Management
8. **V8** Authorization
9. **V9** Self-contained Tokens
10. **V10** OAuth and OIDC
11. **V11** Cryptography
12. **V12** Secure Communication
13. **V13** Configuration
14. **V14** Data Protection
15. **V15** Secure Coding and Architecture
16. **V16** Security Logging and Error Handling
17. **V17** WebRTC

## SF² ASVS Strategy by Quadrant

### Studio (Small reach + High Readiness)

**ASVS Verification Approach**: Automated Level 2, selective Level 3

**Target ASVS Level**: **Level 2** for most applications

**Implementation Strategy**:
- **Automate ASVS verification** in CI/CD pipeline
- **Automated testing** for ASVS chapters that support automation:
  - V1 (Encoding/Sanitization) and V2 (Validation) - SAST/DAST
  - V16 (Security Logging and Error Handling) - Automated scanning
  - V12 (Secure Communication) - TLS/certificate verification
  - V4 (API and Web Service) - API security testing
- **Secure templates** implementing ASVS requirements by default
- **Self-service ASVS verification** for developers

**Manual Verification** (for requirements that can't be automated):
- V15 (Secure Coding and Architecture) - Risk-based threat modeling for novel architectures
- V8 (Authorization) - Logic testing for complex authorization
- V2 (Business Logic requirements) - Application-specific verification

**Timeline**: 12-18 months to comprehensive automated ASVS Level 2

### Lean (Large reach + High Readiness)

**ASVS Verification Approach**: Comprehensive Level 2, selective Level 3 for high-risk

**Target ASVS Level**:
- **Level 2** for all applications
- **Level 3** for high-security applications (payment, sensitive data, critical infrastructure)

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

### Craft (Small reach + Low Readiness)

**ASVS Verification Approach**: Essential Level 1 requirements, risk-based Level 2

**Target ASVS Level**: **Level 1** baseline, **selective Level 2** for high-risk areas

**Implementation Strategy**:
- **Focus on highest-risk ASVS chapters**:
  - V6 (Authentication) - Critical for all applications
  - V7 (Session Management) - Essential security baseline
  - V1 (Encoding/Sanitization) and V2 (Validation) - Prevent common vulnerabilities
  - V12 (Secure Communication) - TLS/HTTPS basics
- **Use managed security services** that provide ASVS compliance
- **Basic security testing** covering essential ASVS requirements
- **Accept Level 1 compliance** for lower-risk areas

**Skip or Minimize**:
- Advanced ASVS chapters (architecture, business logic)
- Comprehensive Level 2 verification for low-risk functionality
- Level 3 requirements (not cost-effective at this scale)

**Timeline**: 6-12 months to essential ASVS Level 1 coverage

### Mass (Large reach + Low Readiness)

**ASVS Verification Approach**: Hybrid (Level 2 for new, Level 1 for legacy)

**Target ASVS Level by System**:

**New/Modern Applications**:
- **Level 2** with automated verification
- Build Studio/Lean-level ASVS capabilities for future

**Active Legacy Applications**:
- **Level 1** baseline
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

### Critical ASVS Chapters (All Organizations)

These chapters should be prioritized regardless of position:

1. **V6 (Authentication)** - Broken authentication = complete compromise
2. **V7 (Session Management)** - Session attacks affect all applications
3. **V8 (Authorization)** - Broken access control = unauthorized access
4. **V1 (Encoding/Sanitization) and V2 (Validation)** - Prevents injection attacks

### High-Value ASVS Chapters (Studio, Lean, Mass-New)

5. **V12 (Secure Communication)** - TLS/encryption for data in transit
6. **V14 (Data Protection)** - Sensitive data handling
7. **V4 (API and Web Service)** - API security increasingly critical

### Moderate-Value ASVS Chapters (Situational)

8. **V11 (Cryptography)** - If handling sensitive data
9. **V16 (Security Logging and Error Handling)** - Incident response needs
10. **V13 (Configuration)** - Security misconfiguration prevention

### Lower-Value ASVS Chapters (Deprioritize)

11. **V15 (Secure Coding and Architecture)** - Architecture and threat modeling are high-judgment and hard to automate (handle manually for novel designs); malicious-code concerns are largely covered by supply chain controls
12. **Business-logic verification (the application-specific slice of V2, distinct from the input validation prioritized above)** - Manual and situational
13. **V5 (File Handling)** - Lower risk for modern applications

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

### Example 1: Studio SaaS Startup

**Scenario**: Series B startup building SaaS platform

**Traditional ASVS Approach**:
- Annual penetration test checking ASVS requirements
- Manual verification of ASVS categories
- Expensive and point-in-time

**SF²-Informed Approach**:
- **Automated ASVS verification** in CI/CD:
  - SAST/DAST covering V1, V2, V4, V12, and V16
  - Automated authentication testing (V6, V7)
  - TLS/certificate validation (V12)
- **Secure templates** implementing ASVS requirements by default
- **Manual verification** only for V15, V8, and V2 (architecture, authorization, business logic)
- **Continuous ASVS verification** with every deployment

**Outcome**: Level 2 ASVS compliance with 80% automation, continuous verification

### Example 2: Mass Financial Services

**Scenario**: Large bank with legacy applications and modern cloud services

**Traditional ASVS Approach**:
- Attempt Level 3 ASVS across all applications
- Comprehensive manual verification
- Overwhelming security team

**SF²-Informed Approach**:
- **New cloud services**: Level 2 ASVS with automated verification
- **Critical legacy**: Level 2 for authentication (V6), authorization (V8), and input validation (V1/V2)
- **Non-critical legacy**: Level 1 baseline, accept gaps
- **Retiring applications**: No new ASVS investment

**Outcome**: Achievable ASVS compliance aligned with modernization timeline

### Example 3: Lean Platform Company

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
  - Automated threat modeling (V15)
  - Sophisticated access control testing (V8)
- **Customer-facing ASVS compliance**:
  - Security verification reports based on ASVS
  - Competitive advantage through security transparency

**Outcome**: Comprehensive ASVS Level 2-3 with platform efficiency, security as differentiator

## ASVS Level Decision Matrix

| Your SF² Position | Target ASVS Level | Verification Approach | Coverage |
|------------------|------------------|---------------------|----------|
| **Studio** | Level 2 | Automated verification | Comprehensive for new |
| **Lean** | Level 2-3 | Platform-scale automation | Comprehensive all apps |
| **Craft** | Level 1 | Managed services, basic testing | Essential categories |
| **Mass** | Level 1-2 hybrid | Automated for new, risk-based for legacy | New: L2, Legacy: L1 |

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
