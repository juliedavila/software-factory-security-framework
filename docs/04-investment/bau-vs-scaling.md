# BAU vs Scaling Investments

## The Inevitable Choice

Demand for security services grows exponentially. The instinct is to read the constraint as capacity: not enough reviewers, not enough hours. Several things do bind a scaling security program, but the one more headcount cannot buy is [comprehension bandwidth](../10-coadaptive/02-ai-era-threat-surface.md), the rate at which your people can actually understand what your factory ships. This is not a structural gap where a linear line loses to an exponential one and you manage the decline. It is a race between two exponentials: how fast the factory produces, and how much of that output your people can actually secure and understand. Which curve you fund is the inflection point.

One honest caveat on the word *exponential*. The demand curve climbs as long as the factory ships more code and hands automation more authority, and that has compounded because AI capability has compounded. That engine is not guaranteed. Most people, when they say the models keep getting better, mean pre-training scaling. That mechanism is showing diminishing returns, and the public human text it trains on is being used up sometime this decade. Ilya Sutskever, who led much of that scaling, [told NeurIPS in 2024](https://analyticsindiamag.com/ai-features/the-end-of-pre-training-era-begins/) that "pre-training as we know it will end." A slowdown in that one mechanism is a real possibility, not a tail risk.

It changes less than it looks like it should, for three reasons in rising order of certainty. The least certain first: the mechanism people will point to, pre-training, may stall. Next, and surer: even if it does, the demand this framework tracks is not model cleverness; it is the volume of code shipped and the breadth of authority handed to automation, and both keep climbing on deployment alone, through test-time reasoning, agent fleets, and wider rollout, with no new scaling breakthrough required. Surest of all: the comprehension debt and the automated adversary are already here, since a plateau does not un-ship the code your people already cannot read, or call off the scanners already probing you. The destination is the same. What a plateau buys is time on the clock, not a turn in the road.

<figure>
  <svg viewBox="0 0 760 470" role="img" aria-labelledby="sf2-2e-title sf2-2e-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:760px;width:100%;height:auto;font-family:'Source Serif 4',Georgia,serif;">
    <title id="sf2-2e-title">A race between two exponentials: production against comprehension</title>
    <desc id="sf2-2e-desc">A line chart of rate against time showing two rising curves. The production curve, the volume of code shipped and the authority handed to automation, climbs steeply. The comprehension curve, the rate at which people can actually secure and understand that output, rises far more slowly. The vertical distance between them, widening to the right, is the share of output the organization cannot secure or understand. A dashed vertical line marks the inflection point: which curve you choose to fund. The production curve continues as a dashed line past the present, showing that it keeps climbing on deployment alone: test-time reasoning, agent fleets, wider rollout, with no new scaling breakthrough required. A pre-training plateau buys time on the clock, not a turn in the road. This is a race between two exponentials, not a structural decline a linear line manages.</desc>
    <rect x="0" y="0" width="760" height="470" fill="#FAFAF7"/>
    <text x="380" y="32" font-size="16.5" font-weight="700" fill="#2C4A6B" text-anchor="middle">A race between two exponentials, not a managed decline</text>
    <line x1="110" y1="80" x2="110" y2="372" stroke="#2A2520" stroke-width="1.6"/>
    <line x1="110" y1="372" x2="710" y2="372" stroke="#2A2520" stroke-width="1.6"/>
    <text x="40" y="226" font-size="11.5" fill="#6B6456" text-anchor="middle" transform="rotate(-90 40 226)">rate (volume per unit time)</text>
    <text x="410" y="398" font-size="11.5" fill="#6B6456" text-anchor="middle">time</text>
    <!-- inflection line -->
    <line x1="410" y1="80" x2="410" y2="372" stroke="#2C4A6B" stroke-width="1.3" stroke-dasharray="4 4"/>
    <rect x="297.7" y="60.8" width="224.6" height="19.1" rx="2" fill="#FAFAF7" fill-opacity="0.72"/>
    <text x="410" y="74" font-size="10.5" font-weight="700" fill="#2C4A6B" text-anchor="middle">the inflection point: which curve you fund</text>
    <!-- production curve -->
    <path d="M110 358 C 330 348, 440 250, 614 120" fill="none" stroke="#D55E00" stroke-width="2.8"/>
    <path d="M614 120 C 660 86, 686 78, 710 70" fill="none" stroke="#D55E00" stroke-width="2.8" stroke-dasharray="6 4"/>
    <rect x="422.1" y="134.9" width="137.9" height="21.3" rx="2" fill="#FAFAF7" fill-opacity="0.72"/>
    <text x="556" y="150" font-size="12.5" font-weight="700" fill="#A6450B" text-anchor="end">production / demand</text>
    <rect x="395.2" y="153.5" width="164.8" height="18.0" rx="2" fill="#FAFAF7" fill-opacity="0.72"/>
    <text x="556" y="166" font-size="10" fill="#A6450B" text-anchor="end">code shipped + authority granted</text>
    <rect x="590.6" y="49.9" width="123.4" height="17.7" rx="2" fill="#FAFAF7" fill-opacity="0.72"/>
    <text x="710" y="62" font-size="9.5" font-style="italic" fill="#A6450B" text-anchor="end">climbs on deployment alone</text>
    <!-- comprehension curve -->
    <path d="M110 358 C 350 350, 520 332, 710 300" fill="none" stroke="#0072B2" stroke-width="2.8"/>
    <rect x="529.6" y="276.9" width="174.4" height="21.3" rx="2" fill="#FAFAF7" fill-opacity="0.72"/>
    <text x="700" y="292" font-size="12.5" font-weight="700" fill="#00557F" text-anchor="end">comprehension bandwidth</text>
    <rect x="520.1" y="303.5" width="183.9" height="18.0" rx="2" fill="#FAFAF7" fill-opacity="0.72"/>
    <text x="700" y="316" font-size="10" fill="#00557F" text-anchor="end">what people can secure + understand</text>
    <!-- the gap -->
    <line x1="662" y1="92" x2="662" y2="306" stroke="#6B6456" stroke-width="1.3" stroke-dasharray="3 3"/>
    <rect x="668.4" y="190.8" width="45.6" height="19.1" rx="2" fill="#FAFAF7" fill-opacity="0.72"/>
    <text x="710" y="204" font-size="10.5" font-weight="700" fill="#6B6456" text-anchor="end">the gap</text>
    <rect x="594.9" y="207.5" width="119.1" height="18.0" rx="2" fill="#FAFAF7" fill-opacity="0.72"/>
    <text x="710" y="220" font-size="10" fill="#6B6456" text-anchor="end">what no one can secure</text>
    <line x1="60" y1="416" x2="710" y2="416" stroke="#B8956A" stroke-width="1"/>
    <text x="60" y="438" font-size="12.5" font-weight="700" fill="#2C4A6B">Not a linear line losing to an exponential. Two exponentials, and which one you fund is the inflection point.</text>
    <text x="60" y="458" font-size="10.5" fill="#2A2520">A pre-training plateau slows the demand curve but does not un-ship the code already written: time on the clock, not a turn in the road.</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Production climbs faster than comprehension; the widening gap is the share of output no one can secure or understand. Which curve you fund is the inflection point. A plateau slows demand but does not change the destination.</figcaption>
</figure>

**The Traditional Response**: Hire more security professionals, work longer hours, accept growing backlogs.

**The Strategic Response**: Deliberately constrain some activities to invest in capabilities that reduce future manual effort.

This section explains how to make this strategic shift while maintaining security outcomes.

---

## The BAU Scaling Crisis

### The Mathematical Reality

As software factories grow, traditional security activities face a scaling challenge that hiring alone cannot solve:

**Demand Grows Exponentially**:
- Security review requests increase with feature velocity (more teams = more requests)
- Threat modeling needs scale with system complexity (more services = more models)
- Customer security inquiries grow with customer base (enterprise customers demand more)
- Incident response requirements increase with system surface area (more systems = more incidents)
- Compliance activities expand with regulatory scope (new markets = new requirements)

**Capacity Grows Linearly**:
- Hiring requires time (3-6 months per role typically)
- Onboarding creates temporary productivity reduction (new hires require training)
- Communication overhead increases with team size (coordination costs rise)
- Maintaining quality becomes challenging during rapid scaling (standards slip under pressure)

**The Inflection Point**: Organizations reach a point where demand for BAU (Business-as-Usual) security services exceeds sustainable capacity, creating constraints on both security effectiveness and business velocity.

---

### The Capability Gap: Beyond Just Capacity

Volume isn't the real problem in the BAU scaling crisis. The deeper issue is a capability mismatch between manual defenders and automated adversaries.

**The Adversary Capability Shift**: In recent years, adversaries evolved from targeted reconnaissance to automated discovery at internet scale. Using techniques inspired by bug bounty programs and internet-wide scanning, attackers can now:

- Discover unknown assets (forgotten servers, shadow IT, unmanaged dependencies) faster than organizations can inventory them
- Exploit known vulnerabilities within hours or days of disclosure
- Conduct credential stuffing at scale against thousands of targets simultaneously
- Probe continuously while defenders scan quarterly

**One Break, Two Bottlenecks**: Organizations conducting quarterly vulnerability scans face adversaries who probe continuously. Manual asset discovery can't keep pace with automated reconnaissance. Underneath both sits one break showing up in two places. On the attacker's side, automation outran a human-bound defensive process, so manual throughput loses the speed race. On the production side, automation now outruns people too: code and systems are generated faster than anyone can understand them, so manual comprehension loses the understanding race. One root cause, two human bottlenecks, neither closed by hiring alone.

Once a program has enough repeated work to amortize, the dollar that makes the secure path the easy path, by automating a step or packaging it into a guardrail engineers plug into, buys more than the dollar that adds one more linear reviewer, including the dollar that pays the engineer who builds it.

!!! warning "Critical Insight: Supply Chain as #1 Priority"
    Supply chain security became the #1 priority not because dependencies increased, but because adversary capability evolved. When attackers can discover your unknown assets faster than you can catalog them, supply chain security becomes existential regardless of your other security investments.

---

## The Strategic Choice Point

At the scaling inflection point, organizations face two fundamentally different resource allocation strategies:

### Traditional Scaling Approach (Unsustainable)

**Strategy**: Attempt to maintain current service levels through capacity increases

**Typical Actions**:
- Hire additional security personnel for manual work
- Extend working hours to cover growing demand
- Build custom solutions for individual use cases
- Maintain primarily reactive security posture
- Accept growing backlogs as "normal"

**Why This Fails**:
- Hiring doesn't close the capability gap against automated adversaries
- Linear capacity growth can't match exponential demand growth
- Custom solutions create maintenance burden without scaling benefits
- Team burnout and quality degradation become inevitable
- Security becomes a business constraint and bottleneck

---

### Strategic Scaling Approach (Sustainable)

**Strategy**: Deliberately constrain capacity for some BAU activities to create investment cycles for automation and self-service capabilities

**Typical Actions**:
- Set explicit capacity limits for manual security activities
- Develop automation and self-service capabilities systematically
- Create standardized approaches for common security needs
- Shift toward proactive, scalable security architecture
- Measure and communicate ROI from scaling investments

**Why This Succeeds**:
- Automation closes the capability gap against scaled adversaries
- Capabilities create compound returns over time
- Self-service enables teams without security team growth
- Developer experience improves rather than degrades
- Security becomes a competitive advantage enabler

!!! tip "The Compound Interest Principle"
    Just as financial investments generate compound returns, security scaling investments create exponential value. An automation capability used 100 times costs the same to build as one used once, but delivers 100x the value. Manual security work scales linearly. Each review costs the same effort.

---

## Investment Portfolio Categories

Security investments fall into three categories with fundamentally different scaling characteristics:

### BAU Activities (Constrain Past Crisis Point)

**Definition**: Manual work that scales linearly with organizational growth

**Examples**:
- Manual security design reviews for each new service
- Threat modeling sessions requiring security team participation
- Individual incident response investigations
- Customer security questionnaire responses
- Ad-hoc compliance evidence collection

**Characteristics**:
- Required for business operations (can't eliminate entirely)
- Demand grows with organizational scale
- Each instance requires similar effort (limited efficiency gains)
- Creates capacity constraints at scale

**Strategic Approach**:
- **Pre-Crisis**: Maintain current service levels while building alternatives
- **Crisis Point**: Set explicit capacity constraints with communication strategy
- **Post-Crisis**: Systematic constraint with clear self-service alternatives

**Constraint Strategy by Position**:

| Position | BAU Approach | Constraint Mechanism |
|----------|--------------|---------------------|
| **Studio** | Minimal BAU burden initially | Automation-first, avoid creating manual processes |
| **Lean** | Systematic constraint with alternatives | Self-service platform + clear escalation paths |
| **Craft** | Manageable manual processes | Document processes while building readiness |
| **Mass** | High burden requiring constraint | Triage system + strategic automation pilots |

<figure>
  <svg viewBox="0 0 720 500" role="img" aria-labelledby="sf2-ea-title sf2-ea-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:720px;width:100%;height:auto;font-family:'Source Serif 4',Georgia,serif;">
    <title id="sf2-ea-title">Year-one effort allocation by quadrant: constraining BAU versus scaling investment</title>
    <desc id="sf2-ea-desc">Four horizontal stacked bars, one per quadrant, showing the year-one split between business-as-usual to constrain and scaling investment. Craft spends about 80 percent on BAU and 20 percent on scaling. Mass spends about 80 percent on BAU and 20 percent on scaling. Studio spends 30 percent on BAU and 70 percent on scaling. Lean spends about 12 percent on BAU and 88 percent on scaling. The more readiness an organization has, the more of its effort goes to scaling rather than constraining BAU. Craft and Mass both spend most of their effort on BAU for opposite reasons: Craft by intentional simplicity, Mass because legacy work eats the budget. These are year-one figures. A dashed extension on the Craft and Mass bars shows the constraint share ratcheting down toward scaling over later years, a direction of travel rather than a dated forecast.</desc>
    <defs>
      <pattern id="ea-bau" width="7" height="7" patternUnits="userSpaceOnUse"><line x1="0" y1="0" x2="0" y2="7" stroke="#8A8270" stroke-width="1" opacity="0.35"/></pattern>
      <pattern id="ea-studio" width="12" height="12" patternUnits="userSpaceOnUse" patternTransform="rotate(45)"><line x1="0" y1="0" x2="0" y2="12" stroke="#009E73" stroke-width="1.2" opacity="0.5"/></pattern>
      <pattern id="ea-lean" width="13" height="13" patternUnits="userSpaceOnUse"><circle cx="4" cy="4" r="1.6" fill="#0072B2" opacity="0.5"/></pattern>
      <pattern id="ea-craft" width="12" height="12" patternUnits="userSpaceOnUse" patternTransform="rotate(-45)"><line x1="0" y1="0" x2="0" y2="12" stroke="#E69F00" stroke-width="1.4" opacity="0.55"/></pattern>
      <pattern id="ea-mass" width="12" height="12" patternUnits="userSpaceOnUse"><path d="M0 0 L12 12 M12 0 L0 12" stroke="#D55E00" stroke-width="0.9" opacity="0.4"/></pattern>
      <marker id="ea-later" markerWidth="10" markerHeight="10" refX="7" refY="5" orient="auto"><path d="M2 1 L8 5 L2 9 Z" fill="#8A7A5A"/></marker>
    </defs>
    <rect x="0" y="0" width="720" height="500" fill="#FAFAF7"/>
    <text x="360" y="34" font-size="16.5" font-weight="700" fill="#2C4A6B" text-anchor="middle">Year-one effort: constrain BAU vs. invest in scaling</text>
    <!-- scale gridlines 0/50/100 -->
    <g stroke="#D8D2C6" stroke-width="1"><line x1="180" y1="70" x2="180" y2="378"/><line x1="420" y1="70" x2="420" y2="378"/><line x1="660" y1="70" x2="660" y2="378"/></g>
    <g font-size="10" fill="#6B6456" text-anchor="middle"><text x="180" y="64">0%</text><text x="420" y="64">50%</text><text x="660" y="64">100%</text></g>
    <!-- Craft -->
    <text x="170" y="105" font-size="14" font-weight="700" fill="#855A00" text-anchor="end">Craft</text>
    <rect x="180" y="84" width="384" height="34" fill="#E8E2D4" stroke="#8A8270" stroke-width="1.2"/><rect x="180" y="84" width="384" height="34" fill="url(#ea-bau)"/>
    <rect x="564" y="84" width="96" height="34" fill="#FBEFD9" stroke="#E69F00" stroke-width="1.4"/><rect x="564" y="84" width="96" height="34" fill="url(#ea-craft)"/>
    <rect x="500" y="87" width="64" height="28" fill="#FBEFD9" opacity="0.5" stroke="#A6450B" stroke-width="1.1" stroke-dasharray="4 3"/>
    <line x1="560" y1="101" x2="506" y2="101" stroke="#8A7A5A" stroke-width="1.2" marker-end="url(#ea-later)"/>
    <text x="372" y="106" font-size="11.5" fill="#3A3530" text-anchor="middle">BAU to constrain 80%</text>
    <text x="612" y="106" font-size="11" font-weight="700" fill="#855A00" text-anchor="middle">20%</text>
    <!-- Mass -->
    <text x="170" y="170" font-size="14" font-weight="700" fill="#A6450B" text-anchor="end">Mass</text>
    <rect x="180" y="149" width="384" height="34" fill="#E8E2D4" stroke="#8A8270" stroke-width="1.2"/><rect x="180" y="149" width="384" height="34" fill="url(#ea-bau)"/>
    <rect x="564" y="149" width="96" height="34" fill="#FBE6DA" stroke="#D55E00" stroke-width="1.4"/><rect x="564" y="149" width="96" height="34" fill="url(#ea-mass)"/>
    <rect x="500" y="152" width="64" height="28" fill="#FBE6DA" opacity="0.5" stroke="#A6450B" stroke-width="1.1" stroke-dasharray="4 3"/>
    <line x1="560" y1="166" x2="506" y2="166" stroke="#8A7A5A" stroke-width="1.2" marker-end="url(#ea-later)"/>
    <text x="372" y="171" font-size="11.5" fill="#3A3530" text-anchor="middle">BAU to constrain 80%</text>
    <text x="612" y="171" font-size="11" font-weight="700" fill="#A6450B" text-anchor="middle">20%</text>
    <!-- Studio -->
    <text x="170" y="235" font-size="14" font-weight="700" fill="#00553F" text-anchor="end">Studio</text>
    <rect x="180" y="214" width="144" height="34" fill="#E8E2D4" stroke="#8A8270" stroke-width="1.2"/><rect x="180" y="214" width="144" height="34" fill="url(#ea-bau)"/>
    <rect x="324" y="214" width="336" height="34" fill="#E2F3EC" stroke="#009E73" stroke-width="1.4"/><rect x="324" y="214" width="336" height="34" fill="url(#ea-studio)"/>
    <text x="252" y="236" font-size="11" fill="#3A3530" text-anchor="middle">BAU 30%</text>
    <text x="492" y="236" font-size="11.5" font-weight="700" fill="#00553F" text-anchor="middle">Scaling investment 70%</text>
    <!-- Lean -->
    <text x="170" y="300" font-size="14" font-weight="700" fill="#00557F" text-anchor="end">Lean</text>
    <rect x="180" y="279" width="58" height="34" fill="#E8E2D4" stroke="#8A8270" stroke-width="1.2"/><rect x="180" y="279" width="58" height="34" fill="url(#ea-bau)"/>
    <rect x="238" y="279" width="422" height="34" fill="#DCEBF6" stroke="#0072B2" stroke-width="1.4"/><rect x="238" y="279" width="422" height="34" fill="url(#ea-lean)"/>
    <text x="209" y="301" font-size="9.5" fill="#3A3530" text-anchor="middle">12%</text>
    <text x="449" y="301" font-size="11.5" font-weight="700" fill="#00557F" text-anchor="middle">Scaling investment ~88%</text>
    <!-- insight -->
    <line x1="60" y1="404" x2="660" y2="404" stroke="#B8956A" stroke-width="1"/>
    <text x="60" y="430" font-size="12.5" font-weight="700" fill="#2C4A6B">The more readiness you hold, the more effort goes to scaling, not constraining BAU.</text>
    <text x="60" y="452" font-size="11.5" fill="#2A2520">Craft and Mass both spend most on BAU, for opposite reasons: Craft by intentional simplicity,</text>
    <text x="60" y="468" font-size="11.5" fill="#2A2520">Mass because legacy eats the budget. Year-one figures; both shift toward scaling over later years.</text>
    <rect x="60" y="478" width="20" height="11" fill="#FBEFD9" opacity="0.6" stroke="#A6450B" stroke-width="1.1" stroke-dasharray="4 3"/>
    <text x="88" y="488" font-size="10.5" font-style="italic" fill="#2A2520">dashed = BAU that shifts to scaling in later years (the ratchet, not a dated forecast)</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Year-one effort split per quadrant. The more readiness you hold, the more goes to scaling rather than constraining BAU. Craft and Mass spend most on BAU for opposite reasons: Craft by intentional simplicity, Mass because legacy eats the budget.</figcaption>
</figure>

---

### Scaling Investments (Prioritize Post-Crisis)

**Definition**: Capabilities that reduce manual effort exponentially or enable self-service

Scaling Investments compound in two different ways, and the difference decides what each one buys. **Automation** takes a human out of a repeated step, so the work runs hands-free and throughput stops being bound by hours. **Composable guardrails** keep the human but change what they have to understand: instead of reviewing N bespoke implementations of mTLS, base images, scoped roles, or secure pub/sub, your people understand one packaged path that teams plug into. The comprehension does not disappear. It concentrates into one durable review, amortized across every team that adopts the path, which is a real economy only on the traffic that actually takes it. A guardrail also does what automation does not: because it is a boundary, it limits what goes wrong when something slips through, not just what your reviewers have to read. Two benefits from one artifact.

**Examples**:
- Automated dependency scanning with auto-remediation
- Self-service security environment provisioning
- Policy-as-code with automated enforcement
- Security champions program enabling distributed expertise
- Developer security training and tooling integration

**Characteristics**:
- Initial investment required (time, money, organizational change)
- Benefits compound over time (more usage = more value)
- Reduces future manual effort requirements systematically
- Enables organizational scaling without proportional security team growth

**Evaluation Criteria**:

| Criterion | Why It Matters | Assessment Question |
|-----------|----------------|-------------------|
| **Manual Effort Reduction** | Primary driver of sustainable scaling | Will this eliminate repetitive work permanently? |
| **Developer Experience** | Critical for adoption | Does this reduce security friction or create new complexity? |
| **Time to Value** | Affects organizational confidence | How quickly will benefits become measurable? |
| **Cultural Alignment** | Determines sustainability | Does this support learning culture and psychological safety? |
| **Adversary Economics** | Real, but judged by coverage | Does this close a path, or only raise the price on paths already closed? |

**Expected ROI Timeline**: 6-18 months with compound returns increasing over time

---

### Platform Effects (Multiply)

**Definition**: Investments that benefit both your organization AND customer software factories (platform companies only)

**Examples**:
- Security platform features customers can use
- Open-source security tools serving broader ecosystem
- Security standards that become industry practices
- Shared threat intelligence benefiting community

**Characteristics**:
- Internal business case must justify investment independently
- Customer value creates additional strategic benefits
- Competitive differentiation potential
- Market influence and thought leadership opportunities

**Evaluation**: Internal benefit × customer multiplier + competitive advantage

**See Also**: [Platform Effects](platform-effects.md) for detailed guidance for platform companies

---

## Designing Security Capabilities That Compound

### The "Catch and Store Energy" Principle

The most sustainable security investments do more than solve immediate problems. They **capture organizational effort and store it in reusable capabilities** that serve future needs without additional manual work.

Like renewable energy systems that provide ongoing value after initial investment, effective scaling investments become self-sustaining:

**Paved Roads**: Secure templates and baselines that engineers reuse without security review
- **One-time effort**: Design secure baseline architecture, document patterns
- **Ongoing value**: Every team using the template saves 10-20 hours of security reviews
- **Compound effect**: As templates improve based on feedback, all users benefit automatically

**Self-Service Platforms**: Automated environments and policy-as-code eliminating recurring requests
- **One-time effort**: Build security environment provisioning automation
- **Ongoing value**: Teams provision secure infrastructure in minutes instead of days
- **Compound effect**: Platform improvements benefit all users without additional security team effort

**Automated Dependency Management**: Continuous monitoring without manual intervention
- **One-time effort**: Integrate automated dependency scanning and update tools
- **Ongoing value**: Vulnerabilities detected and remediated automatically
- **Compound effect**: Coverage expands automatically as new services are built

**Security-Quality Integration**: Process improvements serving both objectives simultaneously
- **One-time effort**: Integrate security checks into CI/CD quality gates
- **Ongoing value**: Security and quality issues detected together in development
- **Compound effect**: Quality improvements enhance security, security improvements enhance quality

---

### What to Avoid: Security Tools That Consume Energy

!!! warning "The Maintenance Burden Trap"
    Some security tools create ongoing maintenance costs that exceed their security value. Avoid investments that:

    - Require continuous manual tuning to remain effective
    - Generate high false-positive rates demanding constant triage
    - Need specialized expertise that creates key-person dependencies
    - Don't integrate with existing development workflows
    - Create new manual processes rather than automating existing ones

**Favor investments that**:
- Become more valuable and less demanding over time
- Store organizational knowledge in reusable form
- Enable self-service without security team involvement
- Integrate seamlessly into existing workflows
- Improve developer experience while improving security

---

## BAU Constraint Communication Strategy

Constraining BAU activities requires clear communication to maintain organizational support and developer relationships.

### Communication by Organizational Stage

**Pre-Crisis (Building Alternatives)**:

**Message**: "We're investing in improved capabilities that will provide faster, more consistent security support."

**Actions**:
- Maintain current service levels while building alternatives
- Gradual introduction of self-service options
- Measure baseline metrics for later comparison
- Build organizational confidence in new approaches

---

**Crisis Point (Implementing Constraints)**:

**Message**: "We've reached a scaling inflection point. To ensure sustainable security support, we're shifting from manual processes to self-service capabilities. Here's what's changing, here are the alternatives, and here's the timeline for improved capabilities."

**Actions**:
- Set explicit capacity limits with clear justification
- Provide immediate self-service alternatives (even if basic)
- Establish escalation paths for critical needs
- Regular updates on scaling investment progress

**Example Communication**:
> "Our security review process has reached capacity constraints. Starting next quarter, we're implementing a self-service security baseline that will enable most teams to deploy securely without security review wait times. For projects outside this baseline, we'll use a triage process prioritizing business-critical initiatives. We expect this transition to take 6 months, after which your experience will significantly improve."

---

**Post-Crisis (Systematic Operations)**:

**Message**: "Improved self-service capabilities are now available. Most teams can now [specific capability] without security team involvement, and we've measured [specific improvement metric]."

**Actions**:
- Demonstrate ROI realization from scaling investments
- Showcase developer experience improvements
- Adjust capacity constraints based on capability maturity
- Continuous improvement of self-service platforms

---

## Financial Model Considerations

Security leaders operate within inherited financial contexts that affect investment strategies:

### Cost Center Context

**Constraints**: Security viewed as overhead, budget scrutiny, ROI skepticism

**Strategy**:
- Focus on compliance cost avoidance (failed audits cost money)
- Emphasize operational efficiency (automation reduces labor costs)
- Use crisis events as opportunities for scaling investment approval
- Frame investments as risk reduction with quantifiable business impact

**Conversation Template**:
> "Our current security approach will become a business constraint as we scale. Rather than only adding capacity through hiring, which provides temporary relief at increasing cost, we recommend investing in capabilities that reduce manual effort requirements permanently. This approach improves both security outcomes and business velocity while managing cost growth."

---

### Shared Services Context

**Constraints**: Internal customer satisfaction, operational metrics, service level expectations

**Strategy**:
- Develop business cases emphasizing internal customer satisfaction
- Measure and communicate developer experience improvements
- Show operational improvements reducing business friction
- Position security as enabling faster, safer delivery

**Conversation Template**:
> "Our internal customers currently wait an average of 5 days for security reviews. By investing in self-service security baselines, we can reduce this to under 1 hour for 70% of projects while improving security consistency. This enables faster delivery without compromising security outcomes."

---

### R&D Integration Context

**Constraints**: Security competes with feature development for resources and attention

**Strategy**:
- Frame security investments as competitive advantages
- Measure success through business outcomes, not security metrics
- Demonstrate security capabilities enabling business opportunities
- Position security as accelerating time-to-market for secure products

**Conversation Template**:
> "Security automation does more than manage risk. It lets our engineers move faster with confidence. By investing in security platforms, we can support 3x growth without proportional security team expansion while improving both security posture and delivery velocity."

---

## Success Metrics for Investment Shifts

Track these metrics to validate your BAU constraint and scaling investment strategy:

### Leading Indicators (Early Signals)

- **Scaling investment velocity**: Projects started, adoption rates, developer feedback
- **Alternative capability usage**: Self-service adoption rates, platform utilization
- **Developer satisfaction trends**: Survey scores, friction reports, voluntary participation
- **Investment pipeline health**: Approved projects, executive support, resource allocation

### Lagging Indicators (Results)

- **Manual effort reduction**: Hours saved per activity type, capacity freed for strategic work
- **ROI realization**: Measurable benefits vs investment costs, compound return evidence
- **Security outcomes**: Vulnerability detection rates, incident response times, risk posture improvements
- **Business velocity**: Time-to-market improvements, deployment frequency increases, developer productivity gains

---

## Next Steps

1. **Assess Your Position**: Are you pre-crisis, at crisis point, or post-crisis in your scaling journey?
2. **Evaluate Current Portfolio**: Catalog BAU activities and identify scaling investment opportunities
3. **Review [Evaluation Criteria](evaluation-criteria.md)**: Systematic framework for prioritizing investments
4. **Understand [Platform Effects](platform-effects.md)**: Additional considerations for platform companies
5. **Develop Communication Strategy**: Prepare stakeholder messaging for investment shifts

---

[:octicons-arrow-left-24: Back to Portfolio Framework](portfolio-framework.md){ .md-button }
[:octicons-arrow-right-24: Continue to Platform Effects](platform-effects.md){ .md-button .md-button--primary }

[:octicons-arrow-right-24: Edit this page](https://gitlab.com/juliedavila/software-factory-security-framework/-/edit/master/docs/04-investment/bau-vs-scaling.md){ .md-button }
