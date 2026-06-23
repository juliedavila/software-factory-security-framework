# PQC Exposure

## How Exposed Is Your Cryptography to the Quantum Transition

PQC exposure measures how much of your cryptography the quantum transition puts at risk, and how hard that risk is to retire. It is not a measure of how close quantum computers are. It is a measure of your own footprint: how long your data has to stay secret, and how hard it is to swap the math protecting it. Two organizations in the same strategic position can sit at opposite ends of it. A fintech that signs firmware lasting a decade and holds records that must stay confidential for years carries deep exposure. A media startup whose secrets are stale in a week barely registers, from the same quadrant.

What makes this its own modifier, and not a crisis waiting to happen, is that the loss is silent and already underway. An adversary does not need a quantum computer today to take your data today. Harvest now, decrypt later: capture the ciphertext, store it, wait for the machine that reads it. There is no breach alert for data copied and shelved. So exposure has to be scored now, as a standing factor, instead of handled the week it becomes news. By the time it is news, the data is already gone.

!!! danger "The Clock Already Started"
    Harvest-now-decrypt-later means the attack does not wait for a quantum computer. Anything an adversary can record today and needs to read in ten years is exposed now, on today's encryption. NIST finalized the replacement algorithms ([FIPS 203/204/205](../appendix/references.md#post-quantum-cryptography-and-crypto-agility), August 2024) and set the deprecation clock: quantum-vulnerable public-key cryptography like RSA and ECC is deprecated by 2030 and disallowed in NIST standards by 2035 ([NIST IR 8547](../appendix/references.md#post-quantum-cryptography-and-crypto-agility)). The migration is years of work against a fixed deadline, which is why exposure belongs on your standing roadmap and not your incident plan.

<figure>
  <svg viewBox="0 0 760 440" role="img" aria-labelledby="sf2-pq-title sf2-pq-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:760px;width:100%;height:auto;font-family:'Source Serif 4',Georgia,serif;">
    <title id="sf2-pq-title">The post-quantum migration clock and harvest-now-decrypt-later</title>
    <desc id="sf2-pq-desc">A timeline with three NIST milestones: in August 2024 the replacement algorithms FIPS 203, 204, and 205 were finalized; by 2030 quantum-vulnerable public-key cryptography such as RSA and ECC is deprecated; by 2035 it is disallowed in NIST standards. Above the timeline, a separate arc shows the harvest-now-decrypt-later threat: an adversary captures ciphertext today, around 2026, stores it, and decrypts it later once a capable machine exists, well past 2035. The loss is silent and already underway; there is no breach alert for data copied and shelved. Anything that must stay confidential beyond 2035 is exposed now, on today's encryption.</desc>
    <defs>
      <marker id="pq-arrow" markerWidth="11" markerHeight="11" refX="7.5" refY="5" orient="auto"><path d="M1 1 L9 5 L1 9 Z" fill="#A6450B"/></marker>
    </defs>
    <rect x="0" y="0" width="760" height="440" fill="#FAFAF7"/>
    <text x="380" y="34" font-size="16.5" font-weight="700" fill="#2C4A6B" text-anchor="middle">The clock already started: harvest now, decrypt later</text>
    <!-- harvest-now arc (above timeline) -->
    <path d="M120 250 C 200 110, 600 110, 690 250" fill="none" stroke="#A6450B" stroke-width="2" stroke-dasharray="6 4" marker-end="url(#pq-arrow)"/>
    <rect x="60" y="232" width="130" height="44" rx="6" fill="#F6EBE3" stroke="#A6450B" stroke-width="1.4"/>
    <text x="125" y="252" font-size="11.5" font-weight="700" fill="#A6450B" text-anchor="middle">Capture today</text>
    <text x="125" y="268" font-size="10" fill="#2A2520" text-anchor="middle">record the ciphertext</text>
    <text x="405" y="132" font-size="11.5" font-style="italic" fill="#A6450B" text-anchor="middle">store it, wait for the machine that reads it. No breach alert fires.</text>
    <rect x="600" y="232" width="150" height="44" rx="6" fill="#F6EBE3" stroke="#A6450B" stroke-width="1.4"/>
    <text x="675" y="252" font-size="11.5" font-weight="700" fill="#A6450B" text-anchor="middle">Decrypt later</text>
    <text x="675" y="268" font-size="10" fill="#2A2520" text-anchor="middle">when the machine exists</text>
    <!-- timeline axis -->
    <line x1="90" y1="320" x2="700" y2="320" stroke="#2A2520" stroke-width="2"/>
    <!-- milestone 2024 -->
    <circle cx="150" cy="320" r="7" fill="#009E73" stroke="#00553F" stroke-width="1.5"/>
    <text x="150" y="350" font-size="13" font-weight="700" fill="#00553F" text-anchor="middle">Aug 2024</text>
    <text x="150" y="370" font-size="10.5" fill="#2A2520" text-anchor="middle">FIPS 203 / 204 / 205</text>
    <text x="150" y="384" font-size="10.5" fill="#2A2520" text-anchor="middle">replacements finalized</text>
    <!-- milestone 2030 -->
    <circle cx="420" cy="320" r="7" fill="#E69F00" stroke="#855A00" stroke-width="1.5"/>
    <text x="420" y="350" font-size="13" font-weight="700" fill="#855A00" text-anchor="middle">2030</text>
    <text x="420" y="370" font-size="10.5" fill="#2A2520" text-anchor="middle">RSA and ECC</text>
    <text x="420" y="384" font-size="10.5" fill="#2A2520" text-anchor="middle">deprecated</text>
    <!-- milestone 2035 -->
    <circle cx="660" cy="320" r="7" fill="#D55E00" stroke="#A6450B" stroke-width="1.5"/>
    <text x="660" y="350" font-size="13" font-weight="700" fill="#A6450B" text-anchor="middle">2035</text>
    <text x="660" y="370" font-size="10.5" fill="#2A2520" text-anchor="middle">disallowed in</text>
    <text x="660" y="384" font-size="10.5" fill="#2A2520" text-anchor="middle">NIST standards</text>
    <!-- today marker -->
    <line x1="230" y1="306" x2="230" y2="334" stroke="#2C4A6B" stroke-width="1.5" stroke-dasharray="3 3"/>
    <text x="230" y="302" font-size="10.5" font-weight="700" fill="#2C4A6B" text-anchor="middle">today</text>
    <!-- footer -->
    <text x="380" y="416" font-size="11.5" fill="#2A2520" text-anchor="middle">Anything that must stay confidential for a decade or more is exposed now. Score exposure today; build the swap path first.</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">NIST set the deprecation clock; harvest-now-decrypt-later runs above it. Data captured today is exposed now, on today's encryption, with no breach alert to announce it.</figcaption>
</figure>

## Exposure Levels

### Low Exposure: Short-Lived Secrets, Agile Crypto

**Characteristics**:
- Confidential data loses value in days or weeks; little or nothing needs decade-long secrecy
- Cryptography runs through managed, updatable libraries and services you can patch centrally
- Few or no long-lived signed artifacts (firmware, certificates, code-signing roots)
- Primitives can be rotated without touching products already in the field

**Implementation Impact**: Track the standards; no front-loading required. Inventory can wait behind higher-impact modifiers.

### Moderate Exposure: Mixed Lifetimes, Partial Agility

**Characteristics**:
- Some data carries multi-year confidentiality requirements
- Crypto-agility is uneven: some systems swap primitives easily, others are pinned to versions
- Dependence on TLS, managed key stores, and third parties whose PQC timelines you do not control
- A first cryptographic inventory exists but is incomplete

**Implementation Impact**: Begin a cryptographic bill of materials. Prioritize agility in the systems that protect the longest-lived data.

### High Exposure: Long Confidentiality, Pinned Primitives

**Characteristics**:
- Data that must stay confidential for a decade or more (health, financial, defense, intellectual property)
- Long-lived trust anchors: firmware signing, device certificates, code-signing roots with multi-year validity, living in products you cannot easily update
- Cryptography embedded where it is hard to rotate: hardware, IoT, key-management modules, protocol assumptions, vendor black boxes
- A binding migration deadline (for national-security systems, [CNSA 2.0](../appendix/references.md#post-quantum-cryptography-and-crypto-agility))

**Implementation Impact**: Front-load crypto-agility and migration sequencing now. This is the exposure the deadline turns into an emergency if deferred.

!!! warning "Crypto-Agility Is the Capability, Not the Algorithm"
    The investment that matters is not picking one approved algorithm over another. It is the ability to swap a primitive at all without re-architecting. An organization that rotates cryptography by configuration sits at low exposure almost regardless of its data. An organization with primitives welded into firmware sits at high exposure almost regardless of the algorithm. Build the swap path first.

## Assessment Questions

| Question | Low Exposure | Moderate Exposure | High Exposure |
|----------|--------------|-------------------|---------------|
| How long must your data stay confidential? | Days to weeks | Months to a few years | A decade or more |
| Can you rotate a cryptographic primitive? | By configuration | With effort, some systems | Welded into firmware or hardware |
| Long-lived signed artifacts in the field? | Few or none | Some, updatable | Many, hard to update |
| Do you have a cryptographic inventory? | Not yet needed | Partial | Required and in progress |
| Is a migration deadline binding on you? | No | Market-driven, soft | Regulatory and dated |
| Who controls your crypto timeline? | You, centrally | Mixed with vendors | Largely upstream or embedded |

## Impact on Strategy

**Studio**: Your footprint is small, which makes now the cheap moment to build the habit. Require primitive-rotation by configuration in every new system. Retrofit it after you scale and it costs you a rebuild.

**Lean**: Scale means the same primitive sits in many places, so agility is a scaling investment, not a one-time project. Bake primitive-rotation into the platform every team builds on and the migration becomes a config change. Leave it to each team and you inherit a hand-search.

**Craft**: Your risk concentrates where long-lived data sits behind cryptography you hand-rolled or pinned years ago. Inventory first. The high-craft trap is confidence that the crypto is fine because it has always been fine, which is the exact assumption the deadline retires.

**Mass**: Legacy and embedded primitives are where the deadline lands hardest, because rotation is hardest there. Firmware you cannot recall, devices in the field, vendor black boxes: sequence these first, since they take the longest and you control them least.

## Investment Priorities

**Low Exposure**:
- Track NIST and NSA guidance
- Require crypto-agility in new designs as a default

**Moderate Exposure**:
- Build the cryptographic bill of materials
- Pilot hybrid key establishment (classical plus post-quantum) on the longest-lived data path
- Pin vendor PQC roadmaps to contracts

**High Exposure**:
- Treat migration as a dated program: inventory, then prioritize by data lifetime, then hybrid deployment, then rotate trust anchors
- Sequence ahead of discretionary scaling work

## Real-World Indicators

**You're facing high exposure when**:

- ✅ You hold data whose confidentiality must outlive 2035
- ✅ You sign firmware or issue certificates with multi-year validity into devices you cannot recall
- ✅ You cannot answer "what algorithm protects this?" for a critical system without a code dig
- ✅ A regulator has handed you a dated migration mandate
- ✅ Your crypto lives in a vendor or hardware boundary you do not control

## Strategic Response

### Short-Term (0-12 months)

1. **Inventory your cryptography**: build a cryptographic bill of materials so you know what protects what
2. **Agility by default**: require new systems to rotate primitives by configuration
3. **Find the long tail**: identify your longest-confidentiality data and what protects it

### Medium-Term (1-3 years)

1. **Hybrid on the worst paths**: deploy classical-plus-post-quantum key establishment on the highest-exposure data first
2. **Contract the timeline**: pin vendor PQC commitments in writing
3. **Rotate the anchors**: begin replacing the trust anchors with the longest field life

### Long-Term (3+ years)

1. **Beat the disallow line**: complete migration of quantum-vulnerable public-key crypto ahead of 2035
2. **Keep the capability**: primitive-rotation outlives this migration; keep it standing for the next crypto transition, because there will be one

## How This Differs From the Modifiers Near It

This sits close to three modifiers without being any of them. Supply Chain Complexity measures what you pull in, not whether your own primitives can rotate. Crisis Events accelerate movement after an incident, and PQC's defining property is that there is no incident: the loss is silent. Regulatory Constraints can drive your urgency through a mandate like CNSA 2.0, but the mandate is not the exposure. An unregulated company sitting on a decade of confidential data has maximal exposure and no one telling it so. Different dial from each.

## Is This Modifier Earning Its Place?

> Score an organization's PQC exposure (data-confidentiality lifetime times primitive-rotation difficulty) before 2030. High-scorers who deferred crypto-agility will face materially costlier, deadline-compressed emergency migration than low-scorers who deferred. If high and low scorers face equal migration cost, this modifier is falsified.

## Next Steps

[:octicons-arrow-right-24: Continue to Implementation Guides](../06-implementation/studio.md){ .md-button .md-button--primary }
[:octicons-arrow-left-24: Back to Contextual Modifiers Overview](overview.md){ .md-button }
