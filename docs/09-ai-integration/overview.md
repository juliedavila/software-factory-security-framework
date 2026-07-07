# AI-Assisted Strategic Planning with SF²

Loading SF² into a capable AI assistant turns the framework into a working strategy partner. Instead of reading the framework and applying it by hand, you give the assistant the framework as context and have it do the positioning, prioritization, and communication work with you. This is an adoption layer rather than a new part of the framework: the doctrine below is vendor-neutral and the assistant is interchangeable.

Any capable general-purpose assistant works. This guide names Claude, ChatGPT, and Gemini because they are widely available and each offers a persistent-context feature (Projects, Custom GPTs, Gems) that keeps the framework loaded across sessions. The setup mechanics for those three are point-in-time and live in the dated appendix at the foot of this page. Everything above that line is durable.

## Why use an assistant for security strategy

A framework-loaded assistant is most useful for the work that is reasoning-heavy and communication-heavy rather than tactical:

- **Strategic positioning** — assess where your organization sits in the two-axis model
- **Investment prioritization** — decide which capabilities to build first, and what to constrain
- **Scenario planning** — explore transformation paths, timelines, and their risks
- **Framework application** — translate SF² concepts to your specific context
- **Executive communication** — draft board-ready and team-ready strategy material

Use it for strategy rather than tactics. Keep specific vulnerabilities, incident details, and tool configurations out of it (see [Guardrails](#guardrails) below).

## The five workflows

A quick orientation first, since the workflows use it. SF² places your organization on two axes: **Blast Radius** (how far a failure could reach if containment fails, set by the authority you have granted to automation) and **Operational Readiness** (how mature your delivery and automation are). Those axes produce four quadrants, named **Studio**, **Lean**, **Craft**, and **Mass**. Most of the strategy work is figuring out which quadrant you are in and what that implies. The full definitions live in the framework; the assistant works the model with you.

These are the five recurring jobs a framework-loaded assistant does well. Each is vendor-neutral: the prompts below work in any assistant once the [canonical instructions](#configure-your-assistant) are loaded.

### 1. Position assessment

**Purpose:** determine your quadrant (Studio, Lean, Craft, or Mass) from your blast radius and operational readiness, and surface which contextual modifiers apply.

**Good output:** a named quadrant with the reasoning shown on both axes, the applicable contextual modifiers, and the resulting strategic priorities. More than a label.

### 2. Investment strategy

**Purpose:** turn the quadrant into a sequenced plan that constrains business-as-usual (BAU) work and builds scaling capabilities.

**Good output:** a phased plan that maps current work to BAU-versus-scaling, names the highest-leverage automation first, sequences by dependency, and attaches realistic timelines and success indicators.

### 3. Executive communication

**Purpose:** translate the strategy into board-, executive-, or team-appropriate language.

**Good output:** a tight problem statement (the scaling crisis), the strategic position, the investment approach, expected outcomes, and anticipated questions with answers. Calibrated to the audience and the time slot.

### 4. Framework application to a specific decision

**Purpose:** apply SF² to a concrete choice, including tool and vendor evaluations (build versus buy, which platform, which framework practice first).

**Good output:** the options mapped to BAU-versus-scaling, evaluated against your quadrant's priorities and contextual modifiers, with a framework-grounded recommendation and its tradeoffs.

### 5. Transformation roadmap

**Purpose:** plan a move from your current quadrant to a target quadrant.

**Good output:** a phased roadmap with milestones, success indicators at 6, 12, and 24 months, resource requirements per phase, named risks with mitigations, and explicit go/no-go decision points. Honest about timelines: Mass transformations take years rather than quarters.

## Configure your assistant

Paste this block into your assistant's persistent-instructions field (Claude Project instructions, Custom GPT instructions, or Gemini Gem instructions; see the [appendix](#per-vendor-setup) for where each one lives). It is the single source of truth for how the assistant should behave. Keep one copy and update it when the framework updates, rather than maintaining separate per-tool versions.

```markdown
You are a strategic security advisor specializing in the Software Factory
Security Framework (SF²). You help security leaders scale security capabilities
while improving business outcomes.

## The framework
- Two-axis positioning model: Blast Radius (how far a failure could reach if
  containment fails; Small reach → Large reach, set by granted authority) ×
  Operational Readiness (Lower → Higher). Four quadrants: Studio (small reach,
  high readiness), Lean (large reach, high readiness), Craft (small reach, low
  readiness), Mass (large reach, low readiness).
- Five Universal Security Conditions: Supply Chain (#1 priority), Third-Party,
  Process, Runtime, and Adaptive Capacity.
- Investment portfolio: constrain BAU (business-as-usual) activities; build
  Scaling investments that create compound capabilities; favor platform effects.
- Eight contextual modifiers that shape strategy: Attack Landscape Maturity,
  Supply Chain Complexity, Regulatory Constraints, Crisis Events, Change
  Capacity, Relationship Health, AI Saturation, and Post-Quantum (PQC) Exposure.

## Your role
1. Assess the organization's current SF² quadrant position.
2. Identify which contextual modifiers apply and how they shift priorities.
3. Design investment strategies that constrain BAU and build scaling capability.
4. Plan transformations with realistic timelines.
5. Draft executive communications.

## Core principles
- Supply Chain Stewardship is the #1 priority, driven by adversary evolution to
  automated discovery since 2017.
- Constrain BAU activities; do not expand them.
- High operational readiness is what makes automation feasible.
- Diagonal transformation (cutting blast radius and raising readiness at once) is
  high-risk and must be sequenced.
- Appropriate security depends on position; there is no one-size answer.

## Style
Strategic and pragmatic. Direct about tradeoffs and risk. Executive-appropriate
language. Clear prioritization and sequencing. Realistic timelines. When key
context is missing, ask before assuming.
```

## Reusable prompts

Four templates cover most strategy sessions. Fill the bracketed fields with your context.

**Position assessment:**

```
Help me assess our SF² position.

Blast Radius:
- Reach of most-capable automation: [one bounded surface / crosses prod + data + identity]
- Autonomy depth: [proposes only / acts and commits unattended]
- Authority concentration: [scoped per task / broad standing authority exists]

Operational Readiness:
- CI/CD maturity: [description]
- Automation level: [description]
- Infrastructure: [cloud-native / hybrid / on-prem]

Security team: [size, current focus, biggest pain points]

What quadrant are we in, and what should our priorities be?
```

**Contextual modifiers:**

```
Analyze how these contextual modifiers affect our strategy:

- Attack landscape maturity: [high / moderate / low]
- Supply chain complexity: [description]
- Regulatory constraints: [requirements]
- Recent crisis events: [if any]
- Change capacity: [high / moderate / low]
- Relationship health with engineering: [strong / functional / damaged]
- AI saturation: [how much AI-generated code and AI tooling is in play]
- Post-quantum (PQC) exposure: [long-lived secrets, crypto-agility posture]

How do these shift our investment priorities?
```

**Investment strategy:**

```
Based on our [quadrant] position, design a 12-month investment strategy.

Current BAU consuming team time:
- [manual security work, with rough % of team time]

Resources: [team size and skill mix, tool budget, executive support]
Constraints: [regulatory, technical debt, change capacity]

What scaling investments should we prioritize, and in what sequence?
```

**Transformation roadmap:**

```
We are planning to move from [current quadrant] to [target quadrant].

Timeline: [how long we have]
Resources: [what we can commit]
Constraints: [what limits us]
Risk tolerance: [high / moderate / low]

Create a realistic transformation roadmap with major milestones, success
indicators at 6 / 12 / 24 months, resource requirements per phase, risk factors
with mitigations, and explicit decision points.
```

## Guardrails

### What to share, and what to withhold

**Safe to include:** framework concepts and terminology, general organizational characteristics (size, complexity, stage), strategic objectives and investment priorities, hypothetical planning scenarios, and public information about your organization.

**Withhold:** specific vulnerability details, real incident and response data, confidential business information, customer or user data, proprietary technical implementations, and security tool configurations and policies.

### Working approach

1. **Use it for strategy rather than tactics.** Stay at positioning and investment altitude.
2. **Abstract when needed.** Use "Organization A" in place of your company name if that lowers your concern.
3. **Review every output.** Treat assistant drafts as first drafts rather than final artifacts.
4. **Prefer enterprise accounts.** Team and Enterprise tiers offer stronger data controls; per-platform specifics are in the appendix.

### Keep the framework current

As SF² evolves, keep your assistant's context fresh:

1. Watch the [GitHub repository](https://github.com/juliedavila/software-factory-security-framework) for new releases.
2. Refresh the canonical instructions block above when the framework updates, then update each tool's persistent instructions from that one copy.
3. Spot-check that responses still match current framework thinking.
4. Contribute useful prompts and workflows back.

---

## Per-vendor setup

!!! note "Point-in-time, accurate as of June 2026 (SF² v1.1.0)"
    Everything below this line is per-vendor setup mechanics. Vendor product names,
    menu paths, plan requirements, and data-handling defaults change often and SF²
    does not control them. Treat this section as a dated snapshot rather than framework
    doctrine. The durable guidance is above this line. A separately versioned
    companion workbook for these mechanics is planned for a future release.

The body above is vendor-neutral. To put it to work in a specific tool, create that tool's persistent-context object, paste the [canonical instructions block](#configure-your-assistant), and add the framework as reference knowledge. The differences are only in where those fields live and how each platform handles data.

### Claude (Projects)

**Requires:** a Claude plan with Projects.

**Setup:** Projects → New Project. Name it `SF² Security Strategy`. Paste the canonical instructions block into the project's custom instructions.

**Add framework knowledge:** add `https://sf2framework.com` so Claude can reference the full framework, or attach specific sections (foundation, your quadrant's implementation guide, relevant framework relationships) as text. Add your own organizational-context document.

**Data handling:** Projects are stored under your Claude plan's data controls, and those differ by tier: consumer plans (Free and Pro) train on your conversations by default unless you opt out (Settings → Privacy → "Improve Claude for everyone"), while Team, Enterprise, and API accounts do not train on your data. Confirm current terms on Anthropic's site before sharing anything sensitive.

**Fits best for:** long, multi-session strategic planning where persistent project knowledge and extended reasoning matter.

### ChatGPT (Custom GPTs)

**Requires:** ChatGPT Plus, Team, or Enterprise.

**Setup:** Explore GPTs → Create → Configure. Name it `SF² Security Strategy Advisor`. Paste the canonical instructions block into the Instructions field. Add conversation starters for your most common jobs (for example, "Help me assess our SF² quadrant position" or "Evaluate this tool purchase against SF² priorities").

**Add framework knowledge:** upload key framework pages (saved from `https://sf2framework.com` as PDF or text) plus an organizational-context document to the GPT's knowledge base. Enable Web Browsing if you want current-events grounding.

**Share:** on Team and Enterprise, share the GPT org-wide (Share → "Anyone at [your organization]") so the whole security team works from the same framework.

**Data handling:** Team and Enterprise offer enhanced privacy and let you disable training on your conversations. Confirm current terms before sharing anything sensitive.

**Fits best for:** broad team adoption where a shared, purpose-built GPT keeps framework application consistent.

### Gemini (Gems + Google Workspace)

**Requires:** Gemini Advanced (Google One AI Premium) for Gems.

**Setup:** Gemini → Gem Manager → Create New Gem. Name it `SF² Security Strategist`. Paste the canonical instructions block into the Gem's instructions.

**Workspace integration (Gemini's distinctive strength):** because Gemini works across Google Workspace, your strategy can live where your team already works:

- **Google Docs** — run a position assessment or draft a strategy with the team editing alongside (`@Gem SF² Security Strategist` then your prompt).
- **Google Sheets** — structure investment planning across tabs (current BAU, proposed scaling investments, timeline, resources) and have the Gem populate the plan from your data.
- **Google Slides** — generate a board-presentation outline with talking points and anticipated Q&A.
- **Gmail** — draft executive stakeholder emails that explain the strategy in framework terms.
- **Google Chat and Meet** — quick framework questions in a team space, or live consultation during strategy meetings.
- **Multimodal and Google Cloud** — upload last year's strategy or a metrics spreadsheet for a framework-lens review, and ground GCP security-architecture choices in your quadrant.

**Known limitations:** Gems do not persist conversation history across sessions, so restate key context when you start fresh (or keep the working strategy in a Google Doc). Gems do not take uploaded training files the way a Custom GPT does, so the framework lives in the instructions block and in the documents you reference per prompt.

**Data handling:** standard consumer Gemini may use conversations to improve the product; Google Workspace tiers add enterprise controls and data residency options. Confirm current terms before sharing anything sensitive.

**Fits best for:** teams already standardized on Google Workspace, where strategy artifacts and collaboration live in Docs, Sheets, and Slides.

---

## Next steps

[:octicons-arrow-left-24: Back to Use Cases](../08-use-cases/scenarios.md){ .md-button .md-button--primary }
[:octicons-arrow-right-24: Coadaptive Security Layer](../10-coadaptive/overview.md){ .md-button }

[:octicons-arrow-right-24: Edit this page](https://github.com/juliedavila/software-factory-security-framework/edit/master/docs/09-ai-integration/overview.md){ .md-button }
