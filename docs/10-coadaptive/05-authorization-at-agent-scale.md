# Authorization at Agent Scale

!!! info "Coadaptive Layer · Chapter 05"
    **This chapter extends:** SF² Investment Portfolio (Section 04) · Platform Effects, SF² Process Stewardship (Section 02).
    **Scope:** the confused-deputy problem in MCP and agent-mediated workflows.

The authorization failures showing up in agent systems are not new; they are a forty-year-old problem wearing new clothes. The confused deputy, named by Norm Hardy in 1988, is the correct lens for almost everything going wrong in MCP and agent-mediated workflows, and the reason the usual fixes do not work is that OAuth and RBAC were built for a human delegating to a program, not a program delegating to another program three hops down a chain no human is watching.

## The confused deputy problem (Hardy, 1988)

Hardy's [original case](http://cap-lore.com/CapTheory/ConfusedDeputy.html) is a compiler with elevated permissions. A user asks it to write debugging output to a file they name, the compiler dutifully writes there using its own authority, and the user names a system file they should never have been able to touch. The compiler was not compromised; it was confused, holding authority for one purpose and getting tricked into wielding it for another. The deputy did exactly what it was told, with permissions that were never the caller's to spend.

The pattern generalizes to any system where one component acts with its own authority on behalf of a less-privileged caller. That is the exact shape of an agent calling a tool, a tool calling a service, a service reaching data. Each hop carries the authority of the actor, not the requester, and somewhere down the chain a request gets honored with privilege the original asker never had. Every agent that acts on behalf of a user is a deputy, and a deputy is one crafted request away from being a confused one.

## Why OAuth and RBAC don't address agent-to-agent

OAuth and RBAC both assume a human at the boundary. OAuth delegates a user's consent to an application; RBAC gates actions by the role of the person performing them. Both answer the question "is this human allowed to do this," and both fall apart when the actor is an agent acting for another agent acting for a user who has gone to lunch. Roles do not compose across hops, and consent granted once at the top of a chain says nothing about what the fourth agent down should be allowed to do with it.

The correction is to attach authority to the request rather than to the actor. A capability travels with the request, names exactly what may be done with it, and narrows at every hop so each deputy can pass along less than it holds but never more. This is not hypothetical: it is how [macaroons](../appendix/references.md#capability-and-least-privilege) work, where any holder can append a caveat that further restricts a token and none can broaden it, and it is how Fly.io and AWS STS already scope delegated credentials in production. It is the same capability model [Boundary Enforcement](04-boundary-enforcement.md) argues for at the substrate, applied to the delegation chain: authority that flows with the work and shrinks as it moves, instead of roles that sit still while requests move past them.

This does not make the actor's identity irrelevant. You still have to know which agent is which, and scoped machine identity, the way [SPIFFE and SPIRE](https://spiffe.io) hand each workload a short-lived cryptographic credential, is how a deputy proves it is the one it claims to be. Identity is necessary and not sufficient: it says who the actor is, never how much it should be able to spend three hops down the chain. That bound is what attenuation provides and identity structurally cannot, which is why the CSA's [agent identity framework](https://labs.cloudsecurityalliance.org/agentic/agentic-identity-governance-framework-v1/) pairs a verifiable identity for the durable agent with scope-limited, time-bound grants for what it may do. Scope the actor and attenuate the capability: the first names the deputy, the second holds the line. Attenuation can only narrow because the layer that checks the caveat sits outside the deputies passing the token, and that invariant holds for as long as no holder can reach the verifier itself, the same reachability condition that dates the substrate guarantee in [the three-layer model](01-three-layer-model.md#substrate).

<figure>
  <svg viewBox="0 0 760 500" role="img" aria-labelledby="sf2-cd-title sf2-cd-desc" xmlns="http://www.w3.org/2000/svg" style="max-width:760px;width:100%;height:auto;font-family:inherit;">
    <title id="sf2-cd-title">The confused deputy and authority attenuation along a delegation chain</title>
    <desc id="sf2-cd-desc">A delegation chain runs left to right: caller, agent, tool or MCP server, service, data. The top band shows actor authority under OAuth or RBAC, which sits still: each deputy acts with its own broad standing authority, not the caller's, so somewhere down the chain a request is honored with privilege the original asker never had. That is the confused deputy. The bottom band shows the correction: a capability attached to the request, which narrows at every hop. Each deputy can pass along less than it holds but never more, drawn as a wedge that tapers from left to right. Attenuation can only narrow because the layer that checks the caveat sits outside the deputies passing the token.</desc>
    <defs>
      <marker id="cd-arrow" markerWidth="11" markerHeight="11" refX="7.5" refY="5" orient="auto"><path d="M1 1 L9 5 L1 9 Z" fill="#5A6470"/></marker>
    </defs>
    <rect x="0" y="0" width="760" height="500" fill="#FAFAF7"/>
    <!-- chain nodes -->
    <g font-size="12.5" font-weight="700" fill="#1F3850" text-anchor="middle">
      <rect x="22" y="150" width="116" height="52" rx="6" fill="#E6F0F8" stroke="#2C4A6B" stroke-width="1.5"/>
      <text x="80" y="172">Caller</text><text x="80" y="190" font-size="10" font-weight="400" fill="#2A2520">less privileged</text>
      <rect x="174" y="150" width="116" height="52" rx="6" fill="#E6F0F8" stroke="#2C4A6B" stroke-width="1.5"/>
      <text x="232" y="172">Agent</text><text x="232" y="190" font-size="10" font-weight="400" fill="#2A2520">deputy</text>
      <rect x="326" y="150" width="116" height="52" rx="6" fill="#E6F0F8" stroke="#2C4A6B" stroke-width="1.5"/>
      <text x="384" y="168">Tool /</text><text x="384" y="184">MCP server</text>
      <rect x="478" y="150" width="116" height="52" rx="6" fill="#E6F0F8" stroke="#2C4A6B" stroke-width="1.5"/>
      <text x="536" y="172">Service</text><text x="536" y="190" font-size="10" font-weight="400" fill="#2A2520">deputy</text>
      <rect x="630" y="150" width="108" height="52" rx="6" fill="#2C4A6B" stroke="#21384F" stroke-width="1.5"/>
      <text x="684" y="172" fill="#FFFFFF">Data</text>
    </g>
    <g stroke="#5A6470" stroke-width="1.8" marker-end="url(#cd-arrow)">
      <line x1="140" y1="176" x2="170" y2="176"/>
      <line x1="292" y1="176" x2="322" y2="176"/>
      <line x1="444" y1="176" x2="474" y2="176"/>
      <line x1="596" y1="176" x2="626" y2="176"/>
    </g>
    <!-- top band: actor authority sits still -->
    <text x="24" y="58" font-size="13" font-weight="700" fill="#A6450B">The confused deputy: actor authority sits still</text>
    <text x="24" y="76" font-size="11.5" fill="#2A2520">OAuth and RBAC ask "is this human allowed?" Each hop carries the authority of the actor, not the requester.</text>
    <g fill="#FBE6DA" stroke="#D55E00" stroke-width="1.2">
      <rect x="174" y="96" width="116" height="16" rx="3"/>
      <rect x="326" y="96" width="116" height="16" rx="3"/>
      <rect x="478" y="96" width="116" height="16" rx="3"/>
    </g>
    <text x="384" y="132" font-size="10.5" font-style="italic" fill="#A6450B" text-anchor="middle">broad standing authority, unchanged at every hop &#8594; one crafted request is honored with privilege the caller never had</text>
    <!-- bottom band: attenuation wedge -->
    <text x="24" y="252" font-size="13" font-weight="700" fill="#00553F">The correction: capability attached to the request, narrowing per hop</text>
    <text x="24" y="270" font-size="10.5" fill="#2A2520">A capability travels with the request, names exactly what may be done, and shrinks at every hop. Each deputy passes along less, never more.</text>
    <!-- wedge tapering left (wide) to right (narrow); aligned under the chain, ticked at each hop -->
    <polygon points="80,290 684,324 684,352 80,348" fill="#E2F3EC" stroke="#009E73" stroke-width="1.5"/>
    <g stroke="#009E73" stroke-width="1" opacity="0.55">
      <line x1="155" y1="294" x2="155" y2="348"/>
      <line x1="308" y1="303" x2="308" y2="349"/>
      <line x1="460" y1="311" x2="460" y2="350"/>
      <line x1="612" y1="320" x2="612" y2="352"/>
    </g>
    <text x="110" y="324" font-size="10.5" fill="#00553F" text-anchor="middle">full grant</text>
    <text x="650" y="342" font-size="10.5" fill="#00553F" text-anchor="middle">least</text>
    <text x="384" y="378" font-size="11" font-style="italic" fill="#00553F" text-anchor="middle">narrows at each hop; macaroon-style caveats let any holder narrow the token, none broaden it</text>
    <!-- verifier outside the chain -->
    <rect x="174" y="410" width="420" height="56" rx="6" fill="#FCF4E6" stroke="#B8956A" stroke-width="1.4"/>
    <text x="384" y="432" font-size="11.5" font-weight="700" fill="#855A00" text-anchor="middle">Why attenuation can only narrow</text>
    <text x="384" y="451" font-size="11" fill="#2A2520" text-anchor="middle">The layer that checks the caveat sits outside the deputies passing the token.</text>
    <text x="384" y="464" font-size="10.5" font-style="italic" fill="#2A2520" text-anchor="middle">The invariant holds for as long as no holder can reach the verifier itself.</text>
  </svg>
  <figcaption style="font-size:0.85rem;color:#555;margin-top:0.4rem;">Under OAuth and RBAC the actor's authority sits still at every hop, which is the confused deputy. The correction attaches a capability to the request that can only narrow as it travels down the chain.</figcaption>
</figure>

## MCP and the modern instantiation

The Model Context Protocol is the current canonical case, because it standardizes exactly the moment authority changes hands: an agent reaching a tool or data source through a server. MCP gets the plumbing right and the authority model is where the risk concentrates. A server that holds broad credentials and serves whatever an agent asks is a confused deputy by construction, and the agent asking may itself be acting on injected instructions from [the input surface](06-input-trust-is-a-category-error.md).

The design implication for anyone building agent platforms is to treat every server and every tool as a deputy that must be scoped, not trusted. Give it the narrowest capability that lets it do its job, make authority flow with the request so it cannot be reused for another, and assume the caller may be confused or compromised. Scoping a deputy at design time costs little; discovering the confused deputy unscoped in an incident review costs a great deal.

## See also

- [Boundary Enforcement](04-boundary-enforcement.md): substrate-layer companion to authorization
- [Input Trust Is a Category Error](06-input-trust-is-a-category-error.md): the input-side companion to authorization
- [SF² Investment Portfolio · Platform Effects](../04-investment/platform-effects.md): base framework
