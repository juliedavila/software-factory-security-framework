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

What keeps a human in the cell is not the definition of the unit; it is the stakes. Above a certain criticality, organizations keep a human as the decision gate. Not because the cell needs supervising, but because some actions have a downside no one will delegate: moving money, dropping a production datastore, granting standing access. That gate is a narrow, deliberately placed authority point, the kind the substrate is built from, with a person standing in it rather than a policy. Below that line the cell runs on its own. The threshold moves as confidence grows. Where it sits, and how fast it falls, is the part this framework holds for a later version rather than dating now. The durable claim is the smaller one: the cell is the unit, whatever its composition, and the human in it is the decision gate by criticality, not by definition. Below the line the human is still in the cell, doing the work; what criticality earns is the gate, not the presence.

## Adaptive capacity as the property

The property that defends a paired-intelligence cell is the one resilience engineering has studied for decades. Adaptive capacity is the ability to keep functioning when conditions move outside what anyone planned for, and it sits above rule-following because rules only cover the situations someone anticipated. The same finding runs through Hollnagel, Woods, and Cook, whose full citations sit in the [references](../appendix/references.md#resilience-and-adaptive-capacity): resilient systems are the ones that adapt at the edge of their envelope, not the ones with the most rules.

This is continuity with the tradition, not a break from it. The base framework's [Adaptive Capacity](../02-stewardship/adaptive-capacity.md) condition carries the lineage; this chapter applies it to the new unit. A paired-intelligence cell defends itself by adapting, by sensing when the situation has left the map and adjusting, which is exactly the capacity the AI-era threat surface demands, because that surface generates situations faster than any rulebook can be written for them.

## The holobiont undercurrent

A deeper framing is worth keeping in view, even though it does not belong on the cover. In biology, a holobiont is a host and its resident organisms treated as a single entity, coupled tightly enough that some argue selection acts on the whole rather than the parts. Whether that holds for real host-microbe systems is a live debate among biologists, so the analogy is the only thing being borrowed here. The human and their agents are coupled in something like the same way, which suggests that defending the human and the agents separately may be the wrong cut and the pair is the right unit of analysis. The biology is suggestive, not load-bearing, and a framework that leads with "holobiont" spends credibility it should save for the argument, so the concept stays an undercurrent and earns its keep as vocabulary rather than as a name the layer flies under.

## See also

- [The AI-Era Threat Surface](02-ai-era-threat-surface.md): what this unit defends against
- [Boundary Enforcement](04-boundary-enforcement.md): substrate-level support for paired-intelligence operation
- [SF² Adaptive Capacity](../02-stewardship/adaptive-capacity.md): base framework chapter being extended
