# Universal Security Conditions

## Conditions, not controls

A control is something you check off. It passes or it fails, it lives as a line in a spreadsheet, and half the energy around it goes into arguing the spirit of the control rather than the state of the system. A condition is a different kind of object. It is something you cultivate and keep alive, and it has no passing grade. The security posture of a software factory is a set of conditions you tend, not a register of controls that cleared an audit. Like anything living, they start to degrade the moment you stop tending them.

Your [strategic position](../03-positioning/two-axis-model.md) tells you *how* to tend them. A Craft shop and a Lean enterprise cultivate the same conditions with very different tools, budgets, and timelines. The conditions themselves do not move with size, stack, or industry. They are what every software factory has to keep alive regardless of where it sits on the map, which is why this section comes before the positioning work and not after it.

There are four conditions you can hand to a team, and one you cannot.

<figure>
  <svg viewBox="0 0 760 520" role="img" aria-labelledby="sf2-sc-title sf2-sc-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:760px;width:100%;height:auto;font-family:'Source Serif 4',Georgia,serif;">
    <title id="sf2-sc-title">The five universal security conditions</title>
    <desc id="sf2-sc-desc">Four conditions you can staff, drawn as four pillars: Supply Chain, marked number one and the loudest; Third-Party; Process; and Runtime. Each pillar names the question it asks and its lever. Supply Chain asks what is inside what I shipped, with the lever of comprehension. Third-Party asks what I handed off and who holds the bag, with the lever of containment. Process asks whether the way we build produces security or bolts it on, with the lever of feedback. Runtime asks whether we can sense what production is doing now, with the lever of observability. Beneath all four runs a foundation bar, Adaptive Capacity, the one condition you cannot staff: whether the system as a whole can absorb a surprise it was not designed for and keep working. It runs across the other four rather than beside them. You assess it; you cannot hand it to a team.</desc>
    <rect x="0" y="0" width="760" height="520" fill="#FAFAF7"/>
    <text x="380" y="36" font-size="17" font-weight="700" fill="#2C4A6B" text-anchor="middle">Conditions you cultivate, not controls you check off</text>
    <text x="380" y="58" font-size="12" fill="#2A2520" text-anchor="middle">Four you can staff. One you cannot.</text>
    <!-- four pillars -->
    <g>
      <!-- Supply Chain #1 -->
      <rect x="40" y="84" width="160" height="300" rx="6" fill="#2C4A6B" stroke="#21384F" stroke-width="2"/>
      <circle cx="176" cy="106" r="15" fill="#B8956A" stroke="#FAFAF7" stroke-width="1.5"/>
      <text x="176" y="111" font-size="13" font-weight="700" fill="#2A2520" text-anchor="middle">#1</text>
      <text x="120" y="132" font-size="15" font-weight="700" fill="#FFFFFF" text-anchor="middle">Supply Chain</text>
      <text x="120" y="170" font-size="10.5" fill="#EAF1F7" text-anchor="middle" font-style="italic">What is inside</text>
      <text x="120" y="184" font-size="10.5" fill="#EAF1F7" text-anchor="middle" font-style="italic">what I shipped?</text>
      <line x1="64" y1="206" x2="176" y2="206" stroke="#5E7894" stroke-width="1"/>
      <text x="120" y="230" font-size="11.5" font-weight="700" fill="#FFFFFF" text-anchor="middle">Comprehension</text>
      <text x="120" y="252" font-size="10" fill="#C9D8E6" text-anchor="middle">SBOM, provenance,</text>
      <text x="120" y="265" font-size="10" fill="#C9D8E6" text-anchor="middle">signing, pinning</text>
      <text x="120" y="360" font-size="9.5" fill="#9FB6CC" text-anchor="middle" font-style="italic">the loudest</text>
      <!-- Third-Party -->
      <rect x="220" y="84" width="160" height="300" rx="6" fill="#2C4A6B" stroke="#21384F" stroke-width="2"/>
      <text x="300" y="132" font-size="15" font-weight="700" fill="#FFFFFF" text-anchor="middle">Third-Party</text>
      <text x="300" y="170" font-size="10.5" fill="#EAF1F7" text-anchor="middle" font-style="italic">What did I hand off,</text>
      <text x="300" y="184" font-size="10.5" fill="#EAF1F7" text-anchor="middle" font-style="italic">who holds the bag?</text>
      <line x1="244" y1="206" x2="356" y2="206" stroke="#5E7894" stroke-width="1"/>
      <text x="300" y="230" font-size="11.5" font-weight="700" fill="#FFFFFF" text-anchor="middle">Containment</text>
      <text x="300" y="252" font-size="10" fill="#C9D8E6" text-anchor="middle">blast-radius limits,</text>
      <text x="300" y="265" font-size="10" fill="#C9D8E6" text-anchor="middle">shared responsibility</text>
      <!-- Process -->
      <rect x="400" y="84" width="160" height="300" rx="6" fill="#2C4A6B" stroke="#21384F" stroke-width="2"/>
      <text x="480" y="132" font-size="15" font-weight="700" fill="#FFFFFF" text-anchor="middle">Process</text>
      <text x="480" y="170" font-size="10.5" fill="#EAF1F7" text-anchor="middle" font-style="italic">Does the way we build</text>
      <text x="480" y="184" font-size="10.5" fill="#EAF1F7" text-anchor="middle" font-style="italic">produce security?</text>
      <line x1="424" y1="206" x2="536" y2="206" stroke="#5E7894" stroke-width="1"/>
      <text x="480" y="230" font-size="11.5" font-weight="700" fill="#FFFFFF" text-anchor="middle">Feedback</text>
      <text x="480" y="252" font-size="10" fill="#C9D8E6" text-anchor="middle">security arriving while</text>
      <text x="480" y="265" font-size="10" fill="#C9D8E6" text-anchor="middle">the work happens</text>
      <!-- Runtime -->
      <rect x="580" y="84" width="160" height="300" rx="6" fill="#2C4A6B" stroke="#21384F" stroke-width="2"/>
      <text x="660" y="132" font-size="15" font-weight="700" fill="#FFFFFF" text-anchor="middle">Runtime</text>
      <text x="660" y="170" font-size="10.5" fill="#EAF1F7" text-anchor="middle" font-style="italic">Can we sense what</text>
      <text x="660" y="184" font-size="10.5" fill="#EAF1F7" text-anchor="middle" font-style="italic">production does now?</text>
      <line x1="604" y1="206" x2="716" y2="206" stroke="#5E7894" stroke-width="1"/>
      <text x="660" y="230" font-size="11.5" font-weight="700" fill="#FFFFFF" text-anchor="middle">Observability</text>
      <text x="660" y="252" font-size="10" fill="#C9D8E6" text-anchor="middle">detection, response,</text>
      <text x="660" y="265" font-size="10" fill="#C9D8E6" text-anchor="middle">recovery</text>
    </g>
    <text x="380" y="398" font-size="10.5" font-style="italic" fill="#6B6456" text-anchor="middle">functions you can name, staff, and put on an org chart</text>
    <!-- foundation bar: Adaptive Capacity -->
    <rect x="40" y="404" width="700" height="86" rx="6" fill="#B8956A" stroke="#9A7A52" stroke-width="2"/>
    <text x="380" y="432" font-size="15" font-weight="700" fill="#2A2520" text-anchor="middle">Adaptive Capacity &#183; the fifth condition, the one you cannot staff</text>
    <text x="380" y="454" font-size="11.5" fill="#2A2520" text-anchor="middle">Can the system absorb a surprise it was not designed for and keep working?</text>
    <text x="380" y="474" font-size="11" font-style="italic" fill="#3A3026" text-anchor="middle">Runs across the other four, not beside them. You assess it; you cannot hand it to a team.</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Four conditions you can name, staff, and put on an org chart, plus Adaptive Capacity running underneath all four. You assess the fifth; you cannot hand it to a team.</figcaption>
</figure>

## The four you can staff

| Condition | The question it asks | The lever |
|-----------|----------------------|-----------|
| **[Supply Chain](supply-chain.md)** (#1) | Do I know what is *inside* what I shipped? | Comprehension: SBOM, provenance, signing, pinning |
| **[Third-Party](third-party.md)** | Do I know what I *handed off*, and who holds the bag when it fails? | Containment: blast-radius limits, shared-responsibility clarity, failover |
| **[Process](process.md)** | Does the way we build *produce* security, or bolt it on afterward? | Feedback: security arriving while the work happens, not in a review at the end |
| **[Runtime](runtime.md)** | Can we *sense* what production is doing right now and respond before a user does? | Observability: detection, response, recovery |

These four map to functions you can name, staff, and put on an org chart. That is deliberate. A condition you cannot assign to anyone is a condition nobody tends.

### Supply Chain and Third-Party are not the same condition

They look like one thing. They are not, and the line between them is where a lot of programs quietly fail.

**Supply Chain** is what you pull *in*: third-party libraries, base images, sidecars, the code you embed and then ship as if it were your own. Once you embed it, the liability is yours. You can also do something about it, because the artifact is in your hands. You can read it, generate an SBOM, sign it, pin it, rebuild it. Supply Chain is soil: you can amend it. The way it fails is that you did not look.

**Third-Party** is what you hand *off*: the payments processor, the data warehouse, the identity-verification provider, the cloud, the SIEM. Some of these are infrastructure; others are core to how your product delivers value at all. You delegate the function, and a shared-responsibility model splits the work. A contract can shift the legal liability to them; it cannot shift the responsibility, and no certificate hands it back. Compliance is a market-access key, not a security proof: a vendor earns FedRAMP to unlock the federal market, not to become safe to depend on, and its attestation retires none of your risk. You still have to do your part and trust they are doing theirs. You cannot directly inspect or observe what they run. Third-Party is weather: you cannot change it, you can only prepare for it. The way it fails is that they got breached and you inherited it anyway.

Lumping both under "supply chain" because the word has stretched to cover everything external is the move that hides the seam. The two conditions take different muscles. One is a comprehension problem: you embedded something and never read it. The other is an opacity problem: you delegated something you cannot directly inspect, and no contract or certificate changes that. Keep them apart on the page so they stay apart in the work.

<figure>
  <svg viewBox="0 0 760 500" role="img" aria-labelledby="sf2-st-title sf2-st-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:760px;width:100%;height:auto;font-family:'Source Serif 4',Georgia,serif;">
    <title id="sf2-st-title">Supply Chain versus Third-Party: embedded-in against handed-off</title>
    <desc id="sf2-st-desc">Two conditions side by side that look like one. Supply Chain, on the left, is what you pull in: libraries, base images, and sidecars you embed and then ship as your own. The artifact is in your hands, so you can read it, generate an SBOM, sign it, and pin it. It is like soil: you can amend it. It is a comprehension problem, and it fails when you did not look. Third-Party, on the right, is what you hand off: payments processors, data warehouses, identity providers, the cloud, the SIEM. You delegate the function under a shared-responsibility model and cannot directly inspect what they run. No contract or certificate hands the risk back. It is like weather: you cannot change it, only prepare for it. It is an opacity problem, and it fails when they get breached and you inherit it.</desc>
    <defs>
      <marker id="st-in" markerWidth="11" markerHeight="11" refX="7.5" refY="5" orient="auto"><path d="M1 1 L9 5 L1 9 Z" fill="#B8956A"/></marker>
      <marker id="st-out" markerWidth="11" markerHeight="11" refX="7.5" refY="5" orient="auto"><path d="M1 1 L9 5 L1 9 Z" fill="#2C4A6B"/></marker>
    </defs>
    <rect x="0" y="0" width="760" height="500" fill="#FAFAF7"/>
    <text x="380" y="32" font-size="16.5" font-weight="700" fill="#2C4A6B" text-anchor="middle">Two conditions, not one</text>
    <text x="380" y="52" font-size="11.5" fill="#2A2520" text-anchor="middle">The line between them is where a lot of programs quietly fail.</text>
    <!-- divider -->
    <line x1="380" y1="74" x2="380" y2="464" stroke="#B8956A" stroke-width="1.5" stroke-dasharray="4 4"/>
    <!-- LEFT: Supply Chain (soil = oro / earth) -->
    <rect x="40" y="74" width="312" height="390" rx="8" fill="#F7F1E5" stroke="#B8956A" stroke-width="2"/>
    <text x="196" y="104" font-size="16" font-weight="700" fill="#6E5226" text-anchor="middle">Supply Chain</text>
    <text x="196" y="126" font-size="12" font-weight="700" fill="#6E5226" text-anchor="middle">what you pull IN</text>
    <!-- inbound arrow -->
    <line x1="92" y1="154" x2="300" y2="154" stroke="#B8956A" stroke-width="2.4" marker-end="url(#st-in)"/>
    <text x="196" y="148" font-size="10" fill="#6E5226" text-anchor="middle">embed it, ship it as your own</text>
    <text x="64" y="192" font-size="11.5" fill="#2A2520">libraries &#183; base images &#183; sidecars</text>
    <text x="64" y="224" font-size="11.5" fill="#2A2520">The artifact is in your hands:</text>
    <text x="64" y="242" font-size="11.5" fill="#2A2520">read it, SBOM it, sign it, pin it.</text>
    <rect x="64" y="266" width="264" height="40" rx="5" fill="#EFE4CF" stroke="#B8956A" stroke-width="1.2"/>
    <text x="196" y="291" font-size="12.5" font-weight="700" fill="#6E5226" text-anchor="middle">Soil: you can amend it</text>
    <text x="64" y="348" font-size="12" font-weight="700" fill="#6E5226">Comprehension problem</text>
    <text x="64" y="372" font-size="11.5" font-style="italic" fill="#2A2520">Fails when you did not look.</text>
    <!-- RIGHT: Third-Party (weather = azul / sky) -->
    <rect x="408" y="74" width="312" height="390" rx="8" fill="#E7EDF4" stroke="#2C4A6B" stroke-width="2"/>
    <text x="564" y="104" font-size="16" font-weight="700" fill="#2C4A6B" text-anchor="middle">Third-Party</text>
    <text x="564" y="126" font-size="12" font-weight="700" fill="#2C4A6B" text-anchor="middle">what you hand OFF</text>
    <!-- outbound arrow -->
    <line x1="460" y1="154" x2="668" y2="154" stroke="#2C4A6B" stroke-width="2.4" marker-end="url(#st-out)"/>
    <text x="564" y="148" font-size="10" fill="#2C4A6B" text-anchor="middle">delegate it, depend on it</text>
    <text x="432" y="192" font-size="11.5" fill="#2A2520">payments &#183; warehouse &#183; cloud &#183; SIEM</text>
    <text x="432" y="224" font-size="11.5" fill="#2A2520">Shared responsibility splits the work.</text>
    <text x="432" y="242" font-size="11.5" fill="#2A2520">No certificate hands the risk back.</text>
    <rect x="432" y="266" width="264" height="40" rx="5" fill="#DCE4EE" stroke="#2C4A6B" stroke-width="1.2"/>
    <text x="564" y="291" font-size="12.5" font-weight="700" fill="#2C4A6B" text-anchor="middle">Weather: you prepare for it</text>
    <text x="432" y="348" font-size="12" font-weight="700" fill="#2C4A6B">Opacity problem</text>
    <text x="432" y="372" font-size="11.5" font-style="italic" fill="#2A2520">Fails when they are breached</text>
    <text x="432" y="388" font-size="11.5" font-style="italic" fill="#2A2520">and you inherit it anyway.</text>
    <!-- footer -->
    <text x="380" y="488" font-size="11" font-style="italic" fill="#2A2520" text-anchor="middle">Lump both under "supply chain" and you hide the seam. Different muscles: one you read, the other you cannot.</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Supply Chain is what you pull in and can amend, a comprehension problem. Third-Party is what you hand off and can only prepare for, an opacity problem. Lump them together and you hide the seam.</figcaption>
</figure>

### Supply Chain is still the loudest

Of the four, Supply Chain has been the one to watch for years, roughly since adversaries moved discovery to automation at internet scale and started finding vulnerable dependencies faster than defenders could inventory them. This is about tempo, not a ranking of which matters more. The supply-chain condition degrades faster and gets exploited sooner than the rest, so it earns first call on attention and budget. Treat it as the default #1 and argue yourself *down* from there if your context warrants.

## The one you cannot staff: Adaptive Capacity

The fifth condition does not get a team, and that is the point.

**Adaptive Capacity** is whether the system as a whole can absorb a surprise it was not designed for and keep working. It is the old Continuous Learning idea, finally named for what it actually is. The other four conditions each map to a function you can put on an org chart. This one does not. It is closer to the resilience of an ecosystem than to anything you could install or assign. The capacity of a living system to take a shock, a drought or a new predator, and reorganize without collapsing is spread across the whole web rather than held in any single species or place. It is never finished, because the system and the things stressing it keep changing against each other. You assess whether the system *has* this capacity. You cannot hand it to a team.

It runs across the other four rather than beside them. A healthy Adaptive Capacity shows up as blameless post-incident review that changes something, as feedback loops that shorten, as the organization sensing a shift in the threat landscape and adjusting before it gets hit rather than after. When it is missing, the other four can each look fine on a maturity chart while the system stays brittle, because nothing is teaching it to bend.

This is the condition that carries the framework's resilience thinking, and it is the seam where this base framework meets the [Coadaptive Security layer](../10-coadaptive/overview.md). The idea comes from ecology. A system survives shocks when it can reorganize as new ones arrive, and that capacity lives in the whole web rather than in any single part. Security works the same way. Certify a system once and trust it to hold, and it falls behind, because the things trying to break it keep changing while it stands still. Adaptive Capacity measures whether the whole system is still adapting faster than its adversaries. That is the question worth asking.

## How the conditions hold each other up

The conditions are coupled, not a checklist, and the coupling is where leverage hides:

- A weak **Supply Chain** condition rarely announces itself in Supply Chain. It surfaces at **Runtime**, as the incident you trace back to a dependency you never inventoried.
- **Process** is where the other conditions either get cultivated or get skipped. A build pipeline that produces provenance is tending Supply Chain for free.
- **Third-Party** failures are bounded by **Runtime** containment. The vendor breach you survive is the one whose blast radius you limited in advance.
- **Adaptive Capacity** is how all four improve at all. Without it, you are just repainting the same four walls on a fixed cadence.

Invest where a single move strengthens more than one condition at once. Those are the moves worth sequencing first.

## Implementation varies, the conditions don't

The conditions are universal. How you cultivate them is not.

A three-person Craft shop and a five-thousand-person Lean enterprise both have to tend Supply Chain, but one does it with a single well-chosen managed scanner and the other with a platform team and a paved road. The [Strategic Positioning](../03-positioning/two-axis-model.md) section is how you decide which version of "tending" your organization can actually sustain. Read the conditions here as the *what*. Read positioning as the *how*.

!!! info "Naming note (v0.5 → v0.6)"
    In v0.5 this section was "Universal Risk Stewardship Responsibilities," organized as five areas you steward. v0.6 reframes them as conditions you cultivate, splits the old Supply Chain area along the embedded/delegated line, and recasts Continuous Learning as the cross-cutting Adaptive Capacity condition. The [migration crosswalk](../appendix/quadrant-rename-v06.md) maps every old name to its v0.6 home.

## Next Steps

Start with the condition that degrades fastest:

[:octicons-arrow-right-24: Supply Chain (#1)](supply-chain.md){ .md-button .md-button--primary }
[:octicons-arrow-right-24: Third-Party](third-party.md){ .md-button }
[:octicons-arrow-right-24: Adaptive Capacity](adaptive-capacity.md){ .md-button }

---

[:octicons-arrow-left-24: Back to Foundation](../01-foundation/software-factory-definition.md){ .md-button }
