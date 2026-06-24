# Investment Evaluation Criteria

## Systematic Framework for Prioritizing Security Investments

Security leaders face overwhelming numbers of potential investments: automation projects, tooling purchases, process improvements, platform capabilities. Without systematic evaluation criteria, investment decisions become reactive or driven by whoever shouts loudest.

This framework provides objective criteria for evaluating and prioritizing scaling investments.

---

## When to Use This Framework

**Appropriate for**:
- Scaling investments (automation, self-service, platform capabilities)
- Tool and technology selection decisions
- Process improvement prioritization
- Resource allocation across competing security initiatives

**Not designed for**:
- Emergency incident response (requires immediate action)
- Regulatory compliance requirements (non-discretionary)
- Executive-mandated initiatives (political reality)
- BAU activity triage (different evaluation model)

---

## The Six Evaluation Criteria

Use these criteria to score and compare potential security investments systematically:

### 1. Manual Effort Reduction

**The Question**: Will this eliminate repetitive work permanently?

**Why Primary**: Manual effort reduction is the fundamental driver of sustainable scaling. Investments that don't reduce manual work don't solve the scaling crisis. They may improve security outcomes but won't enable organizational growth without proportional security team expansion.

**Hours saved is a proxy for value, not value itself.** This criterion counts the work an investment displaces, never the work it creates downstream: the generated code someone still has to understand, the dependencies it adds, the authority it now holds, the maintenance it needs. Credit a high score here only net of that cost. The risk is structural, not careless. Once hours saved carries a 2x weight it becomes a target, and [a measure under target pressure stops tracking the value it once stood for](https://en.wikipedia.org/wiki/Goodhart%27s_law). An investment that saves hours while widening what can go wrong has not reduced effort. It has moved the effort somewhere this number cannot see.

**Assessment Framework**:

| Score | Manual Effort Reduction | Annual Hours Saved | Example |
|-------|------------------------|-------------------|---------|
| **5 - Exceptional** | Eliminates entire category of manual work | 2,000+ hours annually | Automated dependency scanning replacing manual reviews |
| **4 - High** | Reduces 70-90% of manual effort in domain | 1,000-2,000 hours | Self-service environment provisioning |
| **3 - Moderate** | Reduces 40-70% of manual effort | 500-1,000 hours | Automated security questionnaire responses |
| **2 - Low** | Reduces 10-40% of manual effort | 100-500 hours | Partial process automation |
| **1 - Minimal** | Reduces <10% of manual effort | <100 hours | Security tool with high manual overhead |

**Assessment Questions**:
- What manual security work does this eliminate completely?
- How many person-hours per month does this category consume currently?
- Will benefits compound as the organization scales?
- Does this create capacity for strategic work, or just shift manual effort?
- What new authority, attack surface, or maintenance burden does this automation create, and is that cost already netted in your Adversary Economics score?

**Red Flags**:
- "This tool will help us work more efficiently" (without specific hour reduction)
- Automation that requires extensive manual tuning or maintenance
- Solutions that create new categories of manual work

---

### 2. Developer Experience Impact

**The Question**: Does this reduce security friction or create new complexity?

**Why Critical**: Scaling investments require developer adoption to deliver value. Security capabilities that degrade developer experience face resistance, workarounds, or abandonment regardless of security benefits. Developer experience is not a "nice to have." It determines adoption success.

**Assessment Framework**:

| Score | Developer Experience | Time Impact | Adoption Likelihood |
|-------|---------------------|-------------|-------------------|
| **5 - Exceptional** | Dramatically improves developer workflow | Saves developers 5+ hours/week | Enthusiastic adoption, voluntary expansion |
| **4 - High** | Noticeably improves workflow | Saves 2-5 hours/week | Willing adoption, positive feedback |
| **3 - Neutral** | Minimal workflow change | ±30 minutes/week | Passive acceptance, follow guidelines |
| **2 - Moderate Friction** | Some workflow disruption | Costs 1-2 hours/week | Resistance, some workarounds |
| **1 - High Friction** | Significant workflow disruption | Costs 5+ hours/week | Active resistance, widespread workarounds |

**Assessment Questions**:
- Does this integrate seamlessly into existing development workflows?
- How much additional time or effort does this require from developers?
- Do developers see personal benefit, or only security team benefit?
- What happens when developers encounter edge cases or issues?
- Is this faster/easier than current alternatives (including workarounds)?

**Developer Experience Testing**:
- Pilot with friendly team before broad rollout
- Measure time-to-first-value (how long until developers see benefits)
- Track adoption voluntarily vs via mandate
- Monitor for workaround creation or process avoidance

---

### 3. Time to Value

**The Question**: How quickly will benefits become measurable?

**Why Important**: Time to value affects organizational confidence in scaling investment strategy. Long-running projects with delayed benefits create skepticism, while quick wins build momentum and executive support. This doesn't mean always choosing fastest options, but timeline awareness is critical for communication and sequencing.

**Assessment Framework**:

| Score | Time to Value | Measurable Benefits | Organizational Impact |
|-------|--------------|-------------------|---------------------|
| **5 - Immediate** | <3 months to measurable impact | Quick win visible to stakeholders | Builds confidence quickly, enables next investments |
| **4 - Fast** | 3-6 months to measurable impact | Benefits emerging, metrics improving | Sustains momentum, validates strategy |
| **3 - Moderate** | 6-12 months to measurable impact | Significant effort before payoff | Requires sustained commitment, regular updates |
| **2 - Slow** | 12-18 months to measurable impact | Long investment before returns | Requires strong executive support, milestone communication |
| **1 - Delayed** | 18+ months to measurable impact | Benefits uncertain or far future | High risk of abandonment, requires exceptional justification |

**Assessment Questions**:
- What is minimum viable implementation that delivers measurable value?
- Can we phase this to deliver incremental benefits?
- What metrics will demonstrate value, and when can we measure them?
- How do we communicate progress during implementation?

**Sequencing Strategy**:
- Start investment portfolio with high time-to-value projects (score 4-5)
- Build organizational confidence before tackling longer-term investments
- Mix quick wins with strategic long-term capabilities
- Communicate realistic timelines; don't over-promise to get approval

---

### 4. Cultural Alignment

**The Question**: Does this support learning culture and psychological safety?

**Why Critical**: Security investments succeed or fail based on organizational culture. Capabilities that punish developers, create blame dynamics, or undermine psychological safety will be resisted or circumvented regardless of security benefits. Cultural alignment isn't "soft." It's a hard requirement for adoption success.

**Assessment Framework**:

| Score | Cultural Alignment | Psychological Safety Impact | Learning Culture Support |
|-------|-------------------|---------------------------|-------------------------|
| **5 - Exceptional** | Actively builds learning culture | Enhances safety, enables experimentation | Facilitates continuous improvement, knowledge sharing |
| **4 - High** | Supports existing culture | Maintains safety, no blame creation | Enables learning opportunities |
| **3 - Neutral** | Culturally compatible | Doesn't affect safety dynamics | Neither helps nor hinders learning |
| **2 - Friction** | Cultural resistance likely | May create defensive behavior | Could limit experimentation |
| **1 - Damaging** | Undermines culture | Reduces safety, creates blame | Inhibits learning, creates fear |

**Assessment Questions**:
- Does this create opportunities for learning and improvement?
- Will this tool/process be used to blame individuals for security issues?
- Does this support experimentation and innovation, or constrain it?
- How does this affect trust between security and engineering teams?
- Does this enable self-service and autonomy, or create dependencies and gatekeeping?

**Cultural Red Flags**:
- Tools that "catch" developers making mistakes (blame framing)
- Processes that require security approval for experimentation
- Metrics that rank individuals or teams on security "scores"
- Automation that blocks without explanation or education
- Systems that feel like surveillance rather than enablement

---

### 5. Organizational Change Requirements

**The Question**: What adoption challenges should we anticipate?

**Why Important**: Even technically excellent capabilities fail if organizational change requirements exceed capacity. Understanding change burden helps with sequencing (tackle easier wins first), resource planning (what support is needed), and communication strategy (how to frame the change).

**Assessment Framework**:

| Score | Change Requirements | Adoption Difficulty | Success Requirements |
|-------|-------------------|-------------------|---------------------|
| **5 - Minimal** | Works with existing processes | Easy adoption, minimal training | Basic communication, standard rollout |
| **4 - Low** | Minor workflow adjustments | Some training required | Clear documentation, support availability |
| **3 - Moderate** | Significant workflow changes | Moderate training, practice needed | Change management, pilot programs, champions |
| **2 - High** | Major process transformation | Extensive training, culture shift | Sustained executive support, dedicated change resources |
| **1 - Extreme** | Organizational restructuring | Fundamental way-of-working change | Multi-year transformation, may require external help |

**Assessment Questions**:
- How much does this change existing ways of working?
- What training or skill development does this require?
- Do we have change management resources to support adoption?
- What is organizational appetite for change right now?
- Are there competing changes creating change saturation?

**Change Management Success Factors**:
- Start with willing early adopters, not mandates
- Provide hands-on support during initial adoption
- Celebrate early successes and share learnings
- Address failures constructively, iterate based on feedback
- Ensure executive visible support throughout adoption

---

### 6. Adversary Economics

**The Question**: Does this close the surface it claims, or only raise the cost on paths already covered?

**Why Important**: Adversary economics is real, but it is easy to measure the wrong part of it. An attacker does not pay the average cost of attacking you. They pay for the cheapest way in that still works. Harden nine of an attacker's ten ways in and leave the tenth open, and that tenth path still costs what it always did. Your average goes up. The real cost to breach you does not move. This is why the breaches that hurt so often trace back to one dull thing: a storage bucket left public behind a well-run security program, an aging server no one re-checked. The damage hides in the seams between the parts you hardened, not in the parts themselves. So the test is coverage, not price. Does this capability actually close the surface it claims, or does it just raise the toll on paths that were already covered? Cost-raising still earns its place, but on top of a boundary that contains the breach when one gets through, never in place of one. An expensive attack that slips through an open seam owns you just as completely as a cheap one.

One kind of cost-imposition earns full credit on its own: friction that comes with an alarm you can act on. Plant something that has no real use and watch who touches it. A fake admin login, a decoy database, a credential that should never be used. The moment anyone uses it, you know, because no legitimate person ever would. That is not raising the average toll. It is closing the blind spot where an intruder moves unseen. So the rule is simple: cost-imposition counts when it comes with a signal and a way to contain whatever trips it. Friction with nothing watching does not, because the attacker just reroutes to the next cheapest path and you never find out.

!!! note "Deception is the clearest case"
    Honeypots, canary tokens, and honeytokens are the standard tools (the discipline [MITRE Engage](https://engage.mitre.org/) organizes). A common real version: drop a fake cloud access key into a private repository. It does nothing, so the instant it shows up in your logs you have a true alarm and a rough location for the intruder, with almost no false positives. Deception works because of that signal, not the friction. It closes the detection surface while covering no prevention surface, which is also why [Bejtlich's Intruder's Dilemma](https://taosecurity.blogspot.com/2009/05/defenders-dilemma-and-intruders-dilemma.html) ("the defender only needs to detect one indicator") is really a detection argument, not a cost one.

**Assessment Framework**:

| Score | Adversary Impact | Attack Economics Change | Strategic Security Value |
|-------|-----------------|----------------------|------------------------|
| **5 - Exceptional** | Forces adversary pivot to different vector | Makes current attacks infeasible | Closes entire attack category |
| **4 - High** | Significantly increases attack cost/time | Requires sophisticated adversary capability | Substantially raises bar for successful attacks |
| **3 - Moderate** | Moderately increases attack difficulty | Deters opportunistic attackers | Reduces risk from common threat actors |
| **2 - Low** | Slightly increases attack effort | Minimal impact on determined adversaries | Limited practical security improvement |
| **1 - Minimal** | No meaningful adversary impact | Attacks remain economical | Compliance theater, negligible risk reduction |

**Assessment Questions**:
- Does this eliminate an attack vector completely, or just make it harder?
- Do attackers need to develop new capabilities to succeed?
- Does this protect against automated/scaled attacks, or only targeted efforts?
- Will adversaries simply move to easier targets or different techniques?
- Does this address current adversary capabilities, or historical threats?

**Adversary Evolution Context**:

Adversaries evolved from targeted reconnaissance to automated discovery at internet scale. Investments that address this capability gap have exceptional adversary economics impact:

- Automated asset discovery (defenders find assets before attackers)
- Continuous vulnerability management (close windows of exposure)
- Supply chain automation (detect unknown dependencies)
- Real-time threat detection (match adversary speed)

**Community-Level Success**: Once in a while a whole field closes a path for good, and attackers leave it because it stops paying. Software has done this once already, at the transport layer. The web moved to [encryption by default](https://letsencrypt.org/stats/), with free certificates and browsers warning on plain HTTP, and the old trick of sniffing someone's login over open wifi mostly died. Attackers did not keep trying it. They moved on.

At the level of the code itself, software has not done this yet. The best attempt so far is the shift to memory-safe languages. When you write in a language that makes an entire class of memory bugs impossible, those bugs stop appearing at all, instead of being found and patched one at a time. The early numbers are real: as Android moved new code to memory-safe languages, the share of its vulnerabilities that were memory-safety bugs [fell from about three-quarters to under a quarter in six years](https://security.googleblog.com/2024/09/eliminating-memory-safety-vulnerabilities-Android.html).

That is the shape of the highest form of security success. Not the average cost of attack going up, but one whole attack method deleted from every target at once. It is rare, it is slow, and at the code level it is still a direction more than a destination. And even when a field finishes the job, it never closes your own seams for you. The industry can retire a path for everyone, and one team with a forgotten gap still loses through it.

---

## Investment Scoring and Prioritization

### Scoring Method

For each potential investment, score across all six criteria (1-5 scale):

1. **Manual Effort Reduction** (weight: 2x)
2. **Developer Experience** (weight: 1.5x)
3. **Time to Value** (weight: 1x)
4. **Cultural Alignment** (weight: 1.5x)
5. **Organizational Change** (weight: 1x, reverse scored, lower is better)
6. **Adversary Economics** (weight: 2x)

**Total Score Calculation**:
```
Total = (Manual Effort × 2) + (Developer Experience × 1.5) + (Time to Value × 1) +
        (Cultural Alignment × 1.5) + ((6 - Organizational Change) × 1) + (Adversary Economics × 2)

Maximum Possible Score: 47
Minimum Possible Score: 13.5
```

---

### Priority Thresholds

| Total Score | Priority | Action |
|------------|----------|--------|
| **38-47** | Must Do | Implement immediately, highest resource priority |
| **30-37** | Should Do | Strong business case, sequence strategically |
| **22-29** | Consider | Evaluate context, may be valuable in specific situations |
| **13.5-21** | Avoid | Poor fit, likely low ROI or high failure risk |

---

### The Risk Override

One rule sits on top of the score. A high Manual Effort Reduction score cannot by itself lift an investment past **Should Do** when Adversary Economics is low. Effort saved is not risk retired, and the spine of this framework is risk, not activity. An investment that reduces real toil but closes no surface and contains no breach is a productivity buy, not a security one, and it should rank as the productivity buy it is.

The override has a second clause, for the failure the first cannot see. An automation can score high on effort saved and honestly high on Adversary Economics while still introducing a new credential, a new trust boundary, or a delegation path that nothing has accounted for. A score gates on a threshold. It never subtracts. So when the [assessment question above](#1-manual-effort-reduction) surfaces a new authority or surface that is not already netted in Adversary Economics, that investment does not clear **Should Do** on effort alone, whatever the total reads. The override keeps the arithmetic honest to the spine: risk-realization decides the tier, not toil-realization.

The spend-side companion to this override is [Defender cost economics](../10-coadaptive/04-boundary-enforcement.md#defender-cost-economics): once the cost of the next control exceeds the risk it retires, you accept and sign the residual rather than keep adding controls.

---

### Example Investment Evaluation

**Proposed Investment**: Automated dependency scanning with auto-remediation

**Scoring**:
- Manual Effort Reduction: 5 (eliminates 2,000+ hours of manual reviews annually)
- Developer Experience: 4 (automatic security fixes reduce developer toil)
- Time to Value: 5 (measurable benefits within 8 weeks of deployment)
- Cultural Alignment: 4 (enables learning, no blame dynamics)
- Organizational Change: 4 (low change requirement, integrates with existing CI/CD)
- Adversary Economics: 5 (addresses modern adversary capabilities, closes supply chain gaps)

**Total Score**: `(5×2) + (4×1.5) + (5×1) + (4×1.5) + ((6-4)×1) + (5×2) = 10 + 6 + 5 + 6 + 2 + 10 = 39`

**Priority**: Must Do (Score 39/47)

**Justification**: Exceptional score across all criteria. Addresses fundamental scaling challenge while improving developer experience and closing critical security gaps created by adversary evolution.

---

## Position-Specific Evaluation Adjustments

Your [strategic position](../03-positioning/strategic-positions.md) affects criteria weighting:

### Studio (Small reach + High Readiness)

**Adjust weights**:
- Increase Time to Value weight (rapid iteration preferred)
- Increase Developer Experience weight (preserve innovation culture)
- Decrease Organizational Change concern (high change capacity)

**Prioritize**: Quick-win automation, developer-centric tools, modern platform capabilities

---

### Lean (Large reach + High Readiness)

**Adjust weights**:
- Increase Adversary Economics weight (sophisticated threat model)
- Increase Cultural Alignment weight (learning culture critical at scale)
- Maintain balanced approach across all criteria

**Prioritize**: Platform capabilities, federated solutions, cultural scaling mechanisms

---

### Craft (Small reach + Lower Readiness)

**Adjust weights**:
- Increase Organizational Change sensitivity (limited change capacity)
- Prioritize readiness-building over automation breadth
- Focus on foundational capabilities enabling future investments

**Prioritize**: Readiness infrastructure, documentation, basic automation proving value

---

### Mass (Large reach + Lower Readiness)

**Adjust weights**:
- Dramatically increase Organizational Change sensitivity (change saturation risk)
- Increase Time to Value weight (need quick wins for credibility)
- Focus on hybrid solutions working with legacy constraints

**Prioritize**: Strategic debt reduction, hybrid architecture, visible quick wins building momentum

---

## Comparative Investment Analysis

Use this framework to compare competing investments:

**Example Scenario**: Choose between three automation investments with limited budget

| Investment | Manual Effort | Dev Experience | Time to Value | Cultural | Org Change | Adversary Econ | Total Score | Priority |
|-----------|--------------|----------------|--------------|----------|------------|---------------|-------------|----------|
| **Dependency Scanning** | 5 | 4 | 5 | 4 | 4 | 5 | 39 | Must Do |
| **Security Review Automation** | 4 | 3 | 3 | 3 | 3 | 3 | 28 | Consider |
| **Compliance Documentation** | 2 | 2 | 4 | 3 | 4 | 1 | 21 | Avoid |

**Decision**: Prioritize dependency scanning: highest total score, addresses adversary evolution, exceptional ROI.

---

## Common Evaluation Mistakes

### Mistake 1: Optimizing for Single Criterion

**Problem**: Choosing investments based solely on one factor (usually cost or vendor relationship)

**Consequence**: Miss investments with exceptional overall value but moderate cost

**Solution**: Systematic multi-criteria evaluation, weighted scoring

---

### Mistake 2: Ignoring Developer Experience

**Problem**: Selecting security tools security team loves but developers hate

**Consequence**: Poor adoption, workarounds, wasted investment

**Solution**: Pilot with developers first, weight developer experience appropriately

---

### Mistake 3: Underweighting Cultural Alignment

**Problem**: Treating culture as "soft" factor, prioritizing technical capabilities

**Consequence**: Technically excellent solutions that fail organizationally

**Solution**: Recognize cultural alignment as hard requirement, not nice-to-have

---

### Mistake 4: Chasing Vendor Hype

**Problem**: Investing based on vendor marketing rather than internal evaluation

**Consequence**: Tools solving problems you don't have, creating new maintenance burden

**Solution**: Start with your pain points, evaluate vendors against your criteria

---

## Next Steps

1. **Catalog Potential Investments**: List scaling investments under consideration
2. **Score Systematically**: Evaluate each using six criteria framework
3. **Prioritize by Position**: Apply position-specific weighting adjustments
4. **Sequence Strategically**: Consider [BAU vs Scaling](bau-vs-scaling.md) investment timing
5. **Review [Platform Effects](platform-effects.md)**: Additional considerations if you're a platform company

---

[:octicons-arrow-left-24: Back to Platform Effects](platform-effects.md){ .md-button }
[:octicons-arrow-right-24: Continue to Contextual Modifiers](../05-context/overview.md){ .md-button .md-button--primary }

[:octicons-arrow-right-24: Edit this page](https://gitlab.com/juliedavila/software-factory-security-framework/-/edit/master/docs/04-investment/evaluation-criteria.md){ .md-button }
