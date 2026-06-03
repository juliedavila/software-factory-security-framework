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

## MCP and the modern instantiation

The Model Context Protocol is the current canonical case, because it standardizes exactly the moment authority changes hands: an agent reaching a tool or data source through a server. MCP gets the plumbing right and the authority model is where the risk concentrates. A server that holds broad credentials and serves whatever an agent asks is a confused deputy by construction, and the agent asking may itself be acting on injected instructions from [the input surface](06-input-trust-is-a-category-error.md).

The design implication for anyone building agent platforms is to treat every server and every tool as a deputy that must be scoped, not trusted. Give it the narrowest capability that lets it do its job, make authority flow with the request so it cannot be reused for another, and assume the caller may be confused or compromised. The platforms that get this right in the design phase will not have to discover the confused deputy the expensive way, in an incident review.

## See also

- [Boundary Enforcement](04-boundary-enforcement.md): substrate-layer companion to authorization
- [Input Trust Is a Category Error](06-input-trust-is-a-category-error.md): the input-side companion to authorization
- [SF² Investment Portfolio · Platform Effects](../04-investment/platform-effects.md): base framework
