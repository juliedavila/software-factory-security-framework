# Crisis Events

## Strategic Opportunity Through Disruption

Crisis events create unique windows for organizational change. Security incidents, compliance failures, and business disruptions can rapidly accelerate quadrant movement by shifting organizational priorities and unlocking resources.

!!! tip "Crisis as Catalyst"
    A crisis dissolves the friction that normally slows reallocation: priorities clear, budget frees, approvals that took quarters take days. It funds none of that on its own; the freed resources flow to whoever already holds a ready roadmap. The work is to stay staged so the window finds you ready.

## Types of Crisis Events

### Security Incidents
- Data breaches
- Ransomware attacks
- Supply chain compromises
- System compromises
- Customer data exposure

### Compliance Failures
- Audit failures
- Regulatory violations
- Certification losses
- Customer security requirement failures

### Business Disruptions
- Service outages from security issues
- Customer impact from security gaps
- Revenue loss from security incidents
- Market reputation damage

## Impact on Transformation

### Pre-Crisis
**Normal state**: Gradual change, competing priorities, incremental budgets

**Security position**: Requested but not urgent

### During Crisis
**Heightened urgency**: Security becomes top priority, resources unlock, decisions accelerate

**Window of opportunity**: A finite stretch of elevated priority and funding. Practitioners often plan for one to two quarters; treat that as a rule of thumb, not a measured figure. Plan for it to close sooner than you expect.

### Post-Crisis
**Two possible outcomes**:

1. **Sustained Change**: Crisis leads to lasting organizational transformation and continued investment
2. **Return to Normal**: Initial momentum fades, priorities revert, limited lasting impact

## Strategic Response to Crisis

### Immediate Response (Days)
- Contain and resolve crisis
- Communicate transparently
- Document lessons learned
- Begin root cause analysis

### Short-Term Exploitation (Weeks-Months)
- Present strategic security roadmap
- Secure funding for scaling investments
- Fast-track approved initiatives
- Build momentum for transformation

### Long-Term Transformation (Months-Years)
- Implement sustained security improvements
- Build on crisis-driven approvals
- Maintain executive attention
- Demonstrate measurable progress

## Assessment Questions

| Question | Minor | Moderate | Major |
|----------|-------|----------|-------|
| Recent incidents? | Operational issues | Security incidents | Major breaches |
| Business impact? | Minimal | Significant | Existential |
| Organizational changes? | None | Some adjustments | Fundamental transformation |
| Lasting effects? | Temporary | Moderate duration | Permanent changes |

## Using Crisis Strategically

**Stay Staged**: A crisis arrives on its own schedule, and the window closes on its own schedule, so a roadmap written once and parked is stale by the time it is needed. Staying staged starts with knowing your top systemic risks as a software producer, named concretely enough to hold a plan against each. What sits at the top is yours, not a standard list: for one org it is workstation access into production, for another a missing artifact server or no hardened base-image service, for another a supply chain it cannot see into. Stage the highest-priority one or two, and add the rest as your [change capacity](change-capacity.md) allows. When one of those risks lands, the staged roadmap is most of the answer already. Contain the incident, run the retro, and let what it teaches sharpen the staged roadmap before you launch it inside the window. If the budget was not there before, use the now-visible risk to build the case the organization was not ready to hear.

- Keep a response plan for your highest-priority risks (one or two for a thin team)
- Rebaseline those plans on a cadence
- Refresh business cases against current numbers
- Know the organizational blockers, and which a crisis removes

**Act Quickly**:
- Present solutions during crisis
- Secure commitments while urgent
- Fast-track initiatives
- Build irreversible momentum

**Sustain Changes**:
- Deliver quick wins
- Demonstrate measurable improvement
- Maintain executive visibility
- Build lasting capabilities

## When No Window Ever Opens

Everything above assumes the crisis arrives. Some of the most consequential security work never gets a moment, and a reader who takes "stay staged so the window finds you ready" as universal will stage a roadmap for a window that never comes. Post-quantum exposure and comprehension debt build like a rising tide, not a lightning strike: no breach alert, no outage, no board email. What you get instead is a silent clock, running against a deadline you either set yourself or never see. These are chronic exposures, the kind that build with no triggering crisis, and [PQC exposure](pqc-exposure.md) and [AI saturation](ai-saturation.md) already score them as standing factors, which is the right way to size them. But sizing a risk does not fund the work to retire it. This chapter relies on one mechanism: a crisis that forces budget loose. For a chronic exposure it never fires, because no crisis arrives to trigger it.

Three moves fund the work anyway.

<figure>
  <svg viewBox="0 0 760 520" role="img" aria-labelledby="sf2-cw-title sf2-cw-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:760px;width:100%;height:auto;font-family:inherit;">
    <title id="sf2-cw-title">Acute crises open a finite funding window; chronic exposures never spike</title>
    <desc id="sf2-cw-desc">Two stacked panels plotting priority and funding over time. The top panel is an acute incident: the line sits low, then spikes sharply at the incident, opening a finite window of elevated priority and funding shaded across roughly one to two quarters as a rule of thumb, then decays back toward normal. A staged roadmap ships inside that window. The bottom panel is a chronic exposure, such as post-quantum risk or comprehension debt. The line rises slowly and steadily: no spike, no breach alert, no window ever opening. It is a silent clock running against a deadline you set yourself or never see. Because the crisis mechanism never fires for chronic work, three moves fund it anyway, drawn as branches off the chronic line: make the silent clock legible to budget-holders, piggyback the next real crisis window when the two share a root cause, and couple the work to an initiative that is already funded.</desc>
    <rect x="0" y="0" width="760" height="520" fill="#FAFAF7"/>
    <text x="380" y="30" font-size="16.5" font-weight="700" fill="#2C4A6B" text-anchor="middle">A crisis opens a window; a chronic exposure never spikes</text>
    <!-- Panel A: acute -->
    <text x="120" y="58" font-size="12.5" font-weight="700" fill="#A6450B">Acute incident</text>
    <line x1="110" y1="186" x2="710" y2="186" stroke="#2A2520" stroke-width="1.4"/>
    <text x="44" y="130" font-size="10.5" fill="#6B6456" text-anchor="middle" transform="rotate(-90 44 130)">priority + funding</text>
    <!-- window shading -->
    <rect x="250" y="72" width="150" height="114" fill="#009E73" opacity="0.13"/>
    <text x="325" y="81" font-size="10" font-weight="700" fill="#00553F" text-anchor="middle">window: 1 to 2 quarters</text>
    <text x="325" y="92" font-size="9" fill="#00553F" text-anchor="middle">(rule of thumb; closes sooner than you expect)</text>
    <!-- incident marker + funding line -->
    <line x1="250" y1="66" x2="250" y2="186" stroke="#A6450B" stroke-width="1.3" stroke-dasharray="3 3"/>
    <text x="250" y="62" font-size="9.5" font-weight="700" fill="#A6450B" text-anchor="middle">incident</text>
    <path d="M110 176 L250 176 L278 96 L400 96 L520 168 L710 176" fill="none" stroke="#D55E00" stroke-width="2.8"/>
    <text x="338" y="150" font-size="9.5" font-style="italic" fill="#00553F" text-anchor="middle">staged roadmap ships here</text>
    <!-- Panel B: chronic -->
    <text x="120" y="250" font-size="12.5" font-weight="700" fill="#00557F">Chronic exposure (PQC, comprehension debt)</text>
    <line x1="110" y1="350" x2="710" y2="350" stroke="#2A2520" stroke-width="1.4"/>
    <path d="M110 340 C 300 322, 500 300, 710 280" fill="none" stroke="#0072B2" stroke-width="2.8"/>
    <text x="500" y="270" font-size="10" fill="#00557F" text-anchor="middle">silent clock: no spike, no breach alert, no window opens</text>
    <!-- three moves -->
    <g font-size="10.5" font-weight="700" text-anchor="middle">
      <line x1="250" y1="312" x2="190" y2="392" stroke="#6B6456" stroke-width="1.1"/>
      <line x1="430" y1="304" x2="380" y2="392" stroke="#6B6456" stroke-width="1.1"/>
      <line x1="610" y1="290" x2="580" y2="392" stroke="#6B6456" stroke-width="1.1"/>
      <rect x="96" y="392" width="188" height="48" rx="5" fill="#F1EEE6" stroke="#2C4A6B" stroke-width="1.3"/>
      <text x="190" y="412" fill="#2C4A6B">Make the silent</text><text x="190" y="428" fill="#2C4A6B">clock legible</text>
      <rect x="286" y="392" width="188" height="48" rx="5" fill="#F1EEE6" stroke="#2C4A6B" stroke-width="1.3"/>
      <text x="380" y="412" fill="#2C4A6B">Piggyback the next</text><text x="380" y="428" fill="#2C4A6B">real window</text>
      <rect x="476" y="392" width="188" height="48" rx="5" fill="#F1EEE6" stroke="#2C4A6B" stroke-width="1.3"/>
      <text x="570" y="412" fill="#2C4A6B">Couple it to work</text><text x="570" y="428" fill="#2C4A6B">already funded</text>
    </g>
    <line x1="60" y1="466" x2="710" y2="466" stroke="#B8956A" stroke-width="1"/>
    <text x="60" y="488" font-size="12.5" font-weight="700" fill="#2C4A6B">Stay staged so the acute window finds you ready. For chronic work, no window ever comes, so fund it another way.</text>
    <text x="60" y="508" font-size="11.5" fill="#2A2520">All three moves get more urgent when money is tight, so build them before the squeeze arrives.</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">An acute incident spikes and opens a finite funding window a staged roadmap can ride. A chronic exposure runs as a silent clock that never spikes, so three moves fund it without a crisis: make it legible, piggyback a real window, or couple it to funded work.</figcaption>
</figure>

**Make the silent clock legible.** A crisis frees budget by making a latent risk visible and urgent to every decision-maker at once. That shared sight ends the argument before the usual vetoes reassemble. You can produce the same shared sight without the harm, by turning a silent risk into one the budget-holders can read. Two instruments do that:

- a cryptographic bill of materials that puts your long-lived data, the primitives protecting it, and the deprecation deadline on a single page ([PQC exposure](pqc-exposure.md));
- a queryable model of how your systems behave, which surfaces the questions about your own estate that no one can currently answer ([AI saturation](ai-saturation.md)).

A peer's incident of the same class supplies the urgency the instruments cannot: organizations change course on a demonstrated exposure even when it lands on someone else ([vicarious and near-miss learning](../appendix/references.md#crisis-windows-and-staged-response)). Put the inventory, the deadline, and the precedent in front of the people who hold the budget, in their own terms of expected loss. The legitimacy line is firm. Show something real, and close with a specific ask and a date. Spend the move sparingly. A warning that does not pan out gets discounted by the third telling, and the credibility you spent is gone.

**Piggyback on the next real window.** When an acute incident does open a window, bundle the chronic work onto it, but only when the two share a root cause. Brittle key handling exposed by a breach is the moment to fund crypto-agility, because it is one problem fixed once. A post-quantum migration bolted onto an unrelated ransomware response is scope creep, and the executive who smells padding cuts the whole package back. A window holds only so much change at once ([change capacity](change-capacity.md)): spend it on the acute fix first, and let the chronic work ride the slipstream. Never let the added scope slow the containment the window was opened to fund.

**Couple it to work that is already funded.** Not every chronic fix needs its own budget line. When a broader product or engineering initiative is already moving, with money and a deadline behind it, make the security work a true dependency of it. The teams have to clear it to reach their own goal, so the shared objective carries it across the line. Each coupling also earns the standing that makes the next ask easier.

Coupling funds whatever the moving initiative happens to need, which will not always be your highest risk. Take it anyway, but keep the discipline where it counts. Spend your legibility and your crisis windows on the top risks, where the gain is largest. Use coupling for the lower-ranked work that would otherwise sit at zero. Coupling earns timing and cost on work that already deserves funding; it is never a reason to fund work you otherwise would not. The day momentum picks your roadmap instead of risk, the discipline has snapped. A ranked plan only retires the risks that actually get funded, so a lower one that ships beats a higher one that never does. What counts is realized risk reduction, not the order of the list.

All three moves get more urgent when money is tight. When the broader capital environment is already contracting, an acute incident stops freeing fresh budget: the purse was clamped before the crisis landed. The funded initiatives you might couple onto grow scarce too. The chronic clocks keep running regardless. So build these plays before the squeeze arrives ([funding under pressure](../04-investment/portfolio-framework.md)).

## Common Pitfalls

!!! warning "Crisis Anti-Patterns"
    **Reactive-Only**: Fixing immediate issue without strategic improvements
    
    **Over-Promising**: Commitments that can't be sustained post-crisis
    
    **Wasted Window**: Missing opportunity while crisis urgency exists
    
    **Return to Normal**: Allowing organizational attention to fade

## Is This Modifier Earning Its Place?

> Crisis Events is an accelerant rather than a standing exposure, so it falsifies in the accelerant shape. Score whether an organization has had a recent crisis before measuring strategic movement. Orgs with crisis events will show faster quadrant change than matched orgs without, at equal intent. Equal movement falsifies this modifier.
>
> The chronic case, an exposure that builds with no triggering crisis, carries its own test, because it claims you can move such an exposure without a crisis of its own: by making it legible to budget-holders, by piggybacking a real crisis window, or by coupling it to funded work. Chronic exposures worked through one of those moves should move measurably faster than matched exposures left alone. If the worked exposures move no faster than the untouched ones, the claim is false and the moves were theater.

## Next Steps

[:octicons-arrow-right-24: Continue to Change Capacity](change-capacity.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Regulatory Constraints](regulatory-constraints.md){ .md-button }
