# DNS Configuration for sf2framework.com (GitHub Pages)

## Overview

`sf2framework.com` is being cut over from **GitLab Pages** to **GitHub Pages**. This
document describes the GitHub-Pages DNS configuration and the cutover from the old
GitLab records.

- **Domain Registrar**: Squarespace (no ALIAS support → apex uses A records)
- **New host**: GitHub Pages — repo `github.com/juliedavila/software-factory-security-framework`, served at `juliedavila.github.io/software-factory-security-framework/` until the custom domain resolves
- **Custom Domain**: `sf2framework.com`
- **Old host (rollback target)**: GitLab Pages (A → `35.185.44.232`)

> The GitHub side is configured by the repo's `CNAME` file (written by the Pages
> deploy workflow on `master`) plus the repo's Pages custom-domain setting. DNS is
> the last switch — flipping the records below moves live traffic from GitLab to GitHub.

---

## Target DNS Records (GitHub Pages)

### 1. A records — apex `@` → GitHub Pages (replaces the single GitLab A record)

GitHub serves apex domains from four anycast IPs. Add **all four**:

| Host | Type | Value | TTL |
|------|------|-------|-----|
| `@` | A | `185.199.108.153` | `300` (then raise to `3600` after cutover) |
| `@` | A | `185.199.109.153` | `300` |
| `@` | A | `185.199.110.153` | `300` |
| `@` | A | `185.199.111.153` | `300` |

> **Verify these IPs at cutover.** GitHub's published apex IPs are the source of truth:
> <https://docs.github.com/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain>.
> They have been stable for years but confirm before flipping.

### 2. AAAA records (IPv6, optional but recommended)

| Host | Type | Value |
|------|------|-------|
| `@` | AAAA | `2606:50c0:8000::153` |
| `@` | AAAA | `2606:50c0:8001::153` |
| `@` | AAAA | `2606:50c0:8002::153` |
| `@` | AAAA | `2606:50c0:8003::153` |

### 3. CNAME — `www` → GitHub (replaces the GitLab `www` CNAME)

| Host | Type | Value | TTL |
|------|------|-------|-----|
| `www` | CNAME | `juliedavila.github.io` | `3600` |

### 4. TXT — domain verification (OPTIONAL, anti-takeover hardening)

This is **not required** for the custom domain to serve. It is GitHub's
*account-level verified-domain* feature, which prevents anyone else from claiming
`sf2framework.com` on their own GitHub Pages site. The per-repo custom domain (A
records + the repo `CNAME` file) works without it.

| Host | Type | Value |
|------|------|-------|
| `_github-pages-challenge-juliedavila` | TXT | `<code from GitHub>` |

> **Where to get the code:** github.com → **Settings → Pages → "Add a domain"** (account
> level), enter `sf2framework.com`. GitHub displays the exact `_github-pages-challenge-juliedavila`
> TXT value to add. This value cannot be pre-generated outside that UI.

---

## Records being REMOVED at cutover (old GitLab config)

| Host | Type | Old Value | Action |
|------|------|-----------|--------|
| `@` | A | `35.185.44.232` | **Remove** (replaced by the 4 GitHub A records) |
| `_gitlab-pages-verification-code` | TXT | `gitlab-pages-verification-code=686d3072847eca82b037e736cb1c46bc` | **Remove** |
| `www` | CNAME | `juliedavila.gitlab.io` | **Repoint** to `juliedavila.github.io` |
| `@` | AAAA | `2600:1901:0:7b8a::` | **Remove** if present (replaced by GitHub AAAA) |

---

## Pre-flight checks (do these BEFORE the flip)

- **CAA record:** a CAA record that doesn't authorize `letsencrypt.org` will block GitHub's
  cert from ever issuing (hard failure, not a delay). Checked 2026-06-25: `dig CAA sf2framework.com`
  returns **nothing** — no CAA restriction, Let's Encrypt is free to issue. Re-check at cutover
  if anything changed.
- **Current TTL:** the apex A record is currently **TTL 3600s (1 hour)**. The lower-TTL step
  below only helps if done **at least one full hour ahead** of the record swap.
- **GitHub side ready** (done in repo): the deploy workflow writes `site/CNAME = sf2framework.com`
  on `master`, and the repo's Pages custom domain is set to `sf2framework.com` (`gh api …/pages`
  shows `cname: sf2framework.com`). GitHub Pages settings currently show a **"DNS check
  unsuccessful / does not resolve to GitHub Pages server"** warning — this is **expected and
  cosmetic** until DNS points at GitHub. Do **not** "fix" it by un-setting the custom domain.

## Cutover Procedure (live site stays up until the final flip)

1. **T-minus ≥1h — lower TTL:** set the apex A record's TTL to `300`. Wait at least the old
   TTL (1h) so the short TTL has propagated before you swap. (If TTL can't be edited in place,
   set TTL `300` on the new GitHub A records when you add them — but that won't speed the
   *first* swap, only later changes/rollback.)
2. **Flip (one sitting):**
   - Replace the GitLab apex `A 35.185.44.232` with the four GitHub `A` records above.
   - Repoint `www` CNAME from `juliedavila.gitlab.io` → `juliedavila.github.io`.
   - Remove the `_gitlab-pages-verification-code` TXT.
   - (Optional) add the `_github-pages-challenge-juliedavila` TXT and remove the old AAAA.
3. **HTTPS — expect a gap:** GitHub provisions the Let's Encrypt cert **only after** DNS
   resolves to GitHub. Between propagation and issuance, `https://sf2framework.com` will throw
   a **TLS/cert warning for a few minutes to ~1h** — this is normal, not a failed cutover.
   - Leave **"Enforce HTTPS" OFF** until GitHub shows "Your site is published at https://… 🔒".
   - **If the cert is still stuck >1h** after `dig` clearly shows GitHub IPs: in repo
     Settings → Pages, **remove the custom domain, save, re-add it, save** — this re-triggers
     provisioning (documented GitHub gotcha).
4. **Verify:** `https://sf2framework.com` and `https://www.sf2framework.com` both serve the
   GitHub build; `dig +short sf2framework.com` returns the four GitHub IPs.
5. **Decommission/keep GitLab:** recommend leaving GitLab Pages live ~30 days as a passive
   fallback (it just won't receive traffic). Remove its custom domain later if desired.

> **Re-inspecting the raw GitHub build after cutover:** once the custom domain is set, the
> `*.github.io` URL 301-redirects to the apex. To view the raw GitHub build again (e.g. for
> debugging), temporarily remove the custom domain in Settings → Pages.

---

## Rollback (one step, returns to GitLab within one TTL)

Revert the apex `A` record to the single GitLab IP and restore the GitLab verification TXT:

| Host | Type | Value |
|------|------|-------|
| `@` | A | `35.185.44.232` (remove the four GitHub A records) |
| `_gitlab-pages-verification-code` | TXT | `gitlab-pages-verification-code=686d3072847eca82b037e736cb1c46bc` |
| `www` | CNAME | `juliedavila.gitlab.io` |

GitLab Pages still has the repo + custom domain configured, so traffic returns as soon as the
A record propagates. With TTL pre-lowered to `300`, rollback is **a few minutes, not instant**
(it's still TTL-bound in both directions). GitLab's cert and serving stay intact throughout, so
no GitHub change is needed to roll back.

---

## Verification Commands

```bash
# Apex should return the four GitHub IPs (185.199.108–111.153) after cutover
dig +short sf2framework.com

# www should CNAME to juliedavila.github.io
dig +short www.sf2framework.com

# Optional domain-verification TXT
dig +short TXT _github-pages-challenge-juliedavila.sf2framework.com

# End-to-end
curl -sI https://sf2framework.com | head -1   # expect HTTP/2 200
```

GitHub's own DNS health check (after the custom domain is set):

```bash
gh api repos/juliedavila/software-factory-security-framework/pages/health
```

---

## References

- [GitHub Pages — Managing a custom domain](https://docs.github.com/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site)
- [GitHub Pages — Verifying your custom domain](https://docs.github.com/pages/configuring-a-custom-domain-for-your-github-pages-site/verifying-your-custom-domain-for-github-pages)
- [GitHub Pages apex IP addresses](https://docs.github.com/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain)
