# The Unit of Defense

!!! info "Coadaptive Layer · Chapter 03"
    **This chapter extends:** SF² Adaptive Capacity (Section 02), SF² Implementation Guides (Section 06).
    **Scope:** what the operating unit becomes when AI joins, and what property defends it.

Security was historically organized around the person and their tools. The analyst ran the query, the engineer pushed the fix, the tool did what it was told and nothing more. The older frameworks could assume the unit was a person, because it was. That is the assumption that breaks. The unit is whatever cell holds the authority to act, and its composition is no longer fixed: a lone human, a lone agent running on its own initiative, a human and their agents paired, or several agents working as one system. The pair is the case that names the era, and the rest of this chapter dwells on it, but it is one shape of the unit, not the definition of it. Defending a cell is not the same as defending a person who holds tools. What every shape shares is that the cell can act on its own judgment, including the parts of it that decide for themselves, and what every shape has to defend is the same: adaptive capacity, not rule-compliance. The composition changes; the property does not.

## Paired intelligence, the characteristic shape

The useful mental model is augmentation, not subordination. Science fiction has been rehearsing it for years, most sharply in Martha Wells's *Murderbot*: a construct that is neither a tool waiting for a command nor a replacement for the humans it works beside, but a second intelligence sharing the work, with its own judgment and its own failure modes. That is the shape the era makes common: a human and one or more agents, paired, each covering what the other cannot.

This changes org design before it changes anything else. When the unit of work is a paired-intelligence cell, the org chart of individual contributors with tools is describing a world that no longer exists. The role that emerges is the strategic translator: the person who can hold the business intent, the technical reality, and the agent's behavior in one head, and steer the cell toward an outcome. The defensive question stops being "what can this person do" and becomes "what can this cell do, including the parts of it that decide for themselves."

## The earned human anchor

The pair carries a quiet assumption: that a human stays in the cell, anchoring it. Name it, because it does not always hold. As agents take on more, the human's share of the work trends down, and at the limit it reaches zero: a lone agent on its own schedule with no human in the cell, a coding agent wired into the pipeline that opens and merges its own changes, a triage bot that closes findings unattended. That is a real operating unit today, not a forecast.

What keeps a human in the cell is not the definition of the unit; it is the stakes. Above a certain criticality, organizations keep a human as the decision gate. Not because the cell needs supervising, but because some actions have a downside no one will delegate: moving money, dropping a production datastore, granting standing access. That gate is a narrow, deliberately placed authority point, the kind the substrate is built from, with a person standing in it rather than a policy. Below that line the cell runs on its own. The threshold moves as confidence grows, and the direction is down: each capability the cell earns lowers the criticality at which a human gate still pays for itself. How fast it falls depends on which gate you mean, because two different clocks run here.

The routine gates run on a competence clock. For a low-stakes call, the only thing ever in the way was whether an agent could finish the work unsupervised, and that is now a measured, moving quantity. [METR's task horizon](../appendix/references.md#the-autonomous-task-horizon), the length of task a frontier model completes unsupervised, doubled about every seven months from 2019 to 2025, and roughly every four months across 2024 and 2025. The lowest gates have already gone on that clock, the unattended agents named above among them: the pipeline agent that merges its own changes, the triage bot that closes findings while no one watches. At that doubling, the next five to ten years move most of the routine decision-gates into the cell itself.

The high-criticality gates are not on that clock. A human stays on the wire transfer because when it goes wrong, someone has to answer for it, and [the accountability does not transfer to the agent; it concentrates on the people who deployed it](../appendix/references.md#accountability-and-liability-for-autonomous-action). What moves a gate like that is a shift in who is liable. When the card networks pushed counterfeit-fraud liability onto whichever party had not adopted chip cards in [October 2015](../appendix/references.md#accountability-and-liability-for-autonomous-action), chip terminals were at checkout counters across the country within about two years, and none of them read a card more intelligently than the magnetic stripe they replaced. That is the governance clock: it runs on liability and trust, which the competence curve does not produce. Its floor is governance, not competence, and that is the more durable result and the more interesting one.

<figure>
  <svg viewBox="0 0 760 480" role="img" aria-labelledby="sf2-gc-title sf2-gc-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:760px;width:100%;height:auto;font-family:inherit;">
    <title id="sf2-gc-title">Two clocks lower the human decision gate at different rates</title>
    <desc id="sf2-gc-desc">A chart of the criticality at which a human gate still pays for itself, plotted high to low against time. Two lines fall at different rates. The competence clock governs routine, low-stakes gates: it descends steeply and continuously, because the only thing ever in the way was whether an agent could finish the work unsupervised, and that is now a measured, moving quantity. METR's task horizon, the length of task a frontier model completes unsupervised, doubled about every seven months from 2019 to 2025, and about every four months across 2024 and 2025. At that rate, the next five to ten years move most routine decision gates into the cell itself. The governance clock governs high-criticality gates: it stays high and drops only in steps, when liability moves rather than when capability arrives. When the card networks shifted counterfeit-fraud liability in October 2015, chip terminals were at checkout counters across the country within about two years, none reading a card more intelligently than the stripe they replaced. The governance gates hold longest because someone has to own the irreversible call, and that floor is governance, not competence.</desc>
    <rect x="0" y="0" width="760" height="480" fill="#FAFAF7"/>
    <text x="380" y="32" font-size="16.5" font-weight="700" fill="#2C4A6B" text-anchor="middle">Two clocks lower the human gate at different rates</text>
    <line x1="110" y1="78" x2="110" y2="368" stroke="#2A2520" stroke-width="1.6"/>
    <line x1="110" y1="368" x2="710" y2="368" stroke="#2A2520" stroke-width="1.6"/>
    <text x="44" y="223" font-size="11" fill="#6B6456" text-anchor="middle" transform="rotate(-90 44 223)">criticality a human gate still pays for</text>
    <text x="124" y="92" font-size="9.5" fill="#6B6456">high</text>
    <text x="124" y="362" font-size="9.5" fill="#6B6456">low</text>
    <text x="410" y="394" font-size="11.5" fill="#6B6456" text-anchor="middle">time</text>
    <!-- governance clock: high, holds, steps down only on liability shift -->
    <polyline points="110,118 360,118 360,150 560,150 560,180 710,180" fill="none" stroke="#D55E00" stroke-width="2.8"/>
    <circle cx="360" cy="118" r="4.5" fill="#D55E00"/>
    <circle cx="560" cy="150" r="4.5" fill="#D55E00"/>
    <text x="360" y="110" font-size="9" fill="#A6450B" text-anchor="middle">liability shift</text>
    <text x="700" y="172" font-size="12.5" font-weight="700" fill="#A6450B" text-anchor="end">high-criticality gates</text>
    <text x="700" y="196" font-size="10.5" fill="#A6450B" text-anchor="end">governance clock: moves on liability, not competence</text>
    <!-- competence clock: steep continuous descent -->
    <path d="M110 132 C 320 176, 470 300, 710 348" fill="none" stroke="#0072B2" stroke-width="2.8"/>
    <text x="300" y="250" font-size="12.5" font-weight="700" fill="#00557F">routine gates</text>
    <text x="300" y="268" font-size="10.5" fill="#00557F">competence clock</text>
    <!-- annotation boxes -->
    <rect x="150" y="300" width="270" height="56" rx="5" fill="#DCEBF6" stroke="#0072B2" stroke-width="1.2"/>
    <text x="160" y="318" font-size="9.5" fill="#00557F">METR task horizon doubles about every 7 months</text>
    <text x="160" y="332" font-size="9.5" fill="#00557F">(2019 to 2025), about every 4 months (2024 to 2025):</text>
    <text x="160" y="346" font-size="9.5" fill="#00557F">5 to 10 years moves most routine gates into the cell.</text>
    <rect x="440" y="92" width="262" height="40" rx="5" fill="#FBE6DA" stroke="#D55E00" stroke-width="1.2"/>
    <text x="450" y="110" font-size="9.5" fill="#A6450B">EMV chip-card liability shift, October 2015:</text>
    <text x="450" y="124" font-size="9.5" fill="#A6450B">chip terminals nationwide in about 2 years.</text>
    <line x1="60" y1="416" x2="710" y2="416" stroke="#B8956A" stroke-width="1"/>
    <text x="60" y="438" font-size="12.5" font-weight="700" fill="#2C4A6B">Routine gates fall on competence; high-criticality gates hold until liability moves.</text>
    <text x="60" y="452" font-size="11.5" fill="#2A2520">The gates that hold longest hold because someone has to own the irreversible call.</text>
    <text x="60" y="470" font-size="11.5" fill="#2A2520">Build that ownership now, at the gates capability will never hand you.</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Two clocks. The competence clock drops routine gates steeply and continuously as the task horizon doubles; the governance clock holds high-criticality gates and lowers them only in steps, when liability moves. The governance floor is the durable one.</figcaption>
</figure>

The gates that hold longest hold because someone has to own the irreversible call. The human-factors literature is blunt about the trap that floor sets. A person kept at the gate without real control does not anchor responsibility; they become the crumple zone for the system that failed around them. So the gate worth keeping is not a name on the form; it is meaningful control, where the consequential call still traces back to a human who held the reasons for it. The move this points to is to build that ownership and judgment now, at the gates that will outlive the competence argument, because it is the part capability will never hand you.

Three things would falsify the timing. If the doubling stalls, the plateau the [investment chapter](../04-investment/bau-vs-scaling.md) hedges against, the competence clock slows and the routine-gate window stretches past ten years. If the routine gates stay manned anyway as the horizon keeps growing, then competence was never the binding constraint and this framework mistook a governance fact for a capability forecast. And if the high-criticality gates fall fast, because the liability moves rather than because the capability arrives, the way it moved for chip cards, then "the governance gates hold longest" is wrong at the top end; [insurers are already drafting coverage for autonomous action and underwriting it by the level of authority the agent holds](../appendix/references.md#accountability-and-liability-for-autonomous-action), and a market like that could empty a high gate without a single new model. The durable claim holds across all three: the cell is the unit, whatever its composition, and the human in it is the decision gate by criticality, not by definition. Below the line the human is still in the cell, doing the work; what criticality earns is the gate, not the presence.

## Adaptive capacity as the property

The property that defends a paired-intelligence cell is the one resilience engineering has studied for decades. Adaptive capacity is the ability to keep functioning when conditions move outside what anyone planned for, and it sits above rule-following because rules only cover the situations someone anticipated. The same finding runs through Hollnagel, Woods, and Cook, whose full citations sit in the [references](../appendix/references.md#resilience-and-adaptive-capacity): resilient systems are the ones that adapt at the edge of their envelope, not the ones with the most rules.

This is continuity with the tradition, not a break from it. The base framework's [Adaptive Capacity](../02-stewardship/adaptive-capacity.md) condition carries the lineage; this chapter applies it to the new unit. A paired-intelligence cell defends itself by adapting, by sensing when the situation has left the map and adjusting, which is exactly the capacity the AI-era threat surface demands, because that surface generates situations faster than any rulebook can be written for them.

## The holobiont undercurrent

A deeper framing is worth keeping in view, even though it does not belong on the cover. In biology, a holobiont is a host and its resident organisms treated as a single entity, coupled tightly enough that some argue selection acts on the whole rather than the parts. Whether that holds for real host-microbe systems is a live debate among biologists, so the analogy is the only thing being borrowed here. The human and their agents are coupled in something like the same way, which suggests that defending the human and the agents separately may be the wrong cut and the pair is the right unit of analysis. The biology is suggestive, not load-bearing, and a framework that leads with "holobiont" spends credibility it should save for the argument, so the concept stays an undercurrent and earns its keep as vocabulary rather than as a name the layer flies under.

## See also

- [The AI-Era Threat Surface](02-ai-era-threat-surface.md): what this unit defends against
- [Boundary Enforcement](04-boundary-enforcement.md): substrate-level support for paired-intelligence operation
- [SF² Adaptive Capacity](../02-stewardship/adaptive-capacity.md): base framework chapter being extended
