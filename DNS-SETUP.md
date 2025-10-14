# DNS Configuration for sf2framework.com

## Overview

This document explains how to configure DNS for your custom domain `sf2framework.com` to point to GitLab Pages.

**Domain Registrar**: Squarespace
**Current GitLab Pages URL**: `software-factory-security-framework-33acb0.gitlab.io`
**Custom Domain**: `sf2framework.com`

## DNS Records Required for Squarespace

Squarespace does not support ALIAS records, so we use the standard A record method with TXT verification.

### Required Records

#### 1. A Record (Points domain to GitLab Pages)
- **Host**: `@` (represents apex domain sf2framework.com)
- **Type**: `A`
- **Value**: `35.185.44.232`
- **TTL**: `3600` or Auto

#### 2. TXT Record (GitLab domain verification - REQUIRED)
- **Host**: `_gitlab-pages-verification-code`
- **Type**: `TXT`
- **Value**: `gitlab-pages-verification-code=686d3072847eca82b037e736cb1c46bc`
- **TTL**: `3600` or Auto

**Note**: This TXT record is required for GitLab to verify you own the domain. Without it, GitLab will not enable your custom domain.

#### 3. CNAME Record for WWW (Optional but recommended)
- **Host**: `www`
- **Type**: `CNAME`
- **Value**: `juliedavila.gitlab.io`
- **TTL**: `3600` or Auto

### Optional: AAAA Record (IPv6)
- **Host**: `@`
- **Type**: `AAAA`
- **Value**: `2600:1901:0:7b8a::`
- **TTL**: `3600` or Auto

## Squarespace Configuration Steps

1. Log in to **Squarespace** → Go to your domains
2. Select **sf2framework.com**
3. Click **DNS Settings** or **Advanced DNS**
4. Click **Add Record** and add each record above:
   - Add **A record** with host `@` pointing to `35.185.44.232`
   - Add **TXT record** with host `_gitlab-pages-verification-code` and the verification value
   - Add **CNAME record** with host `www` pointing to `juliedavila.gitlab.io`
5. Save changes

## Why ALIAS vs A Records?

**GitLab Prefers ALIAS** (if supported):
- ALIAS record points to hostname: `sf2framework.com ALIAS juliedavila.gitlab.io`
- Automatically updates if GitLab changes IPs
- Supported by: Cloudflare, Route53, DNSimple, NS1

**Squarespace Uses A Records** (fallback):
- A record points to IP: `sf2framework.com A 35.185.44.232`
- Works on all DNS providers including Squarespace
- Requires manual update if GitLab changes IPs (rare)

## SSL Certificate

GitLab Pages automatically provides Let's Encrypt SSL certificates for custom domains. After DNS propagation:

1. Go to GitLab: Settings → Pages
2. Add custom domain: `sf2framework.com`
3. GitLab will automatically obtain SSL certificate (may take a few minutes to hours)

## DNS Propagation

- DNS changes can take **24-48 hours** to fully propagate worldwide
- Most updates are visible within **1-4 hours**
- Use https://dnschecker.org to verify propagation

## Verification Steps

### Step 1: Configure DNS in Squarespace
Add all three records (A, TXT, CNAME) as described above

### Step 2: Wait for DNS Propagation
- Squarespace DNS typically propagates in **15-60 minutes**
- Full global propagation can take up to 24-48 hours
- Check status: https://dnschecker.org (search for sf2framework.com)

### Step 3: GitLab Will Auto-Verify
- GitLab automatically checks the TXT verification record
- Once DNS propagates, GitLab will verify ownership and enable the domain
- SSL certificate will be automatically provisioned (Let's Encrypt)
- This process is automatic - no action needed from you after DNS is configured

### Step 4: Test Access
1. Wait 1-2 hours after DNS configuration
2. Visit `http://sf2framework.com` (should show your site)
3. Visit `https://sf2framework.com` (SSL should work within a few hours)

## GitLab Pages Status

In your GitLab project (**Settings** → **Pages**), you should see:

1. Domain status: `sf2framework.com`
2. Verification status: Will show "Verified" once TXT record is found
3. SSL status: Will show "Certificate obtained" once Let's Encrypt provisions it
4. This can take 15 minutes to several hours after DNS propagation

## Troubleshooting

### Domain Not Verified in GitLab

**Check TXT record propagation:**
```bash
dig TXT _gitlab-pages-verification-code.sf2framework.com
nslookup -type=TXT _gitlab-pages-verification-code.sf2framework.com
```

Should return: `gitlab-pages-verification-code=686d3072847eca82b037e736cb1c46bc`

**If TXT record not found:**
- Double-check spelling in Squarespace: `_gitlab-pages-verification-code`
- Ensure you added it as TXT type, not CNAME
- Wait 15-30 minutes and try again (Squarespace DNS can be slow)

### DNS Not Resolving

**Check A record:**
```bash
dig sf2framework.com
nslookup sf2framework.com
```

Should return: `35.185.44.232`

**If A record not found:**
- Verify host is `@` (not blank, not "sf2framework.com")
- Check A record value is exactly `35.185.44.232`
- Wait for DNS propagation (15-60 minutes for Squarespace)

### SSL Certificate Issues

- **"Not Secure" warning**: DNS not propagated yet, or TXT record not verified
- **Certificate pending**: Can take 15 minutes to 24 hours after verification
- **Check GitLab Pages settings**: Look for SSL status under your domain

### "Page Not Found" or 404

**Repository checks:**
- ✅ CNAME file exists in `docs/CNAME`
- ✅ MkDocs building to `site/` directory
- Check GitLab CI/CD pipeline completed successfully
- Verify GitLab Pages is enabled in project settings

**DNS checks:**
- Domain verified in GitLab Pages settings
- A record pointing to correct IP
- Wait a few more hours for full propagation

## Files Updated in This Repository

- ✅ `docs/CNAME` - Contains `sf2framework.com` for GitLab Pages
- ✅ `mkdocs.yml` - Updated `site_url: https://sf2framework.com`
- ✅ All documentation - Updated URLs from old GitLab Pages subdomain
- ✅ `docs/robots.txt` - Updated sitemap URL
- ✅ `docs/framework.json` - Updated website URL

## Quick Setup Checklist

- [ ] **Add A record in Squarespace**: Host `@`, Value `35.185.44.232`
- [ ] **Add TXT record in Squarespace**: Host `_gitlab-pages-verification-code`, Value `gitlab-pages-verification-code=686d3072847eca82b037e736cb1c46bc`
- [ ] **Add CNAME record in Squarespace** (optional): Host `www`, Value `juliedavila.gitlab.io`
- [ ] **Wait 15-60 minutes** for DNS propagation
- [ ] **Check GitLab Pages Settings** → Domain should show "Verified"
- [ ] **Wait for SSL certificate** (automatic, can take up to 24 hours)
- [ ] **Test**: Visit https://sf2framework.com

## Summary: What to Configure in Squarespace

**Three DNS records total:**

1. **A Record**: `@` → `35.185.44.232`
2. **TXT Record**: `_gitlab-pages-verification-code` → `gitlab-pages-verification-code=686d3072847eca82b037e736cb1c46bc`
3. **CNAME Record** (optional): `www` → `juliedavila.gitlab.io`

After DNS propagates, GitLab will automatically verify and enable SSL. No additional configuration needed in GitLab beyond what you've already done (adding the domain in Pages settings).

## References

- [GitLab Pages Custom Domains](https://docs.gitlab.com/ee/user/project/pages/custom_domains_ssl_tls_certification/)
- [GitLab Pages IP Addresses](https://docs.gitlab.com/ee/user/gitlab_com/#gitlab-pages)
