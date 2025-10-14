# DNS Configuration for sf2framework.com

## Overview

This document explains how to configure DNS for your custom domain `sf2framework.com` to point to GitLab Pages.

## GitLab Pages Domain

**Current GitLab Pages URL**: `software-factory-security-framework-33acb0.gitlab.io`
**Custom Domain**: `sf2framework.com`

## DNS Records Required

You need to configure these DNS records with your domain registrar:

### Option 1: Apex Domain (sf2framework.com)

**A Record** (IPv4 - Required):
```
35.185.44.232
```

**AAAA Record** (IPv6 - Optional but recommended):
```
2600:1901:0:7b8a::
```

**Note**: GitLab Pages uses a single IPv4 and single IPv6 address for all custom domains.

### Option 2: WWW Subdomain (www.sf2framework.com)

**CNAME Record**:
```
www.sf2framework.com → software-factory-security-framework-33acb0.gitlab.io
```

## Recommended Setup

For maximum compatibility, configure **both** apex and www:

1. **Apex domain** (sf2framework.com): Use A record above (single IP)
2. **WWW subdomain** (www.sf2framework.com): Use CNAME record above

This ensures visitors can access the site with or without "www".

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

After configuring DNS:

1. Wait 1-2 hours for initial propagation
2. Visit `http://sf2framework.com` (should redirect to GitLab Pages)
3. In GitLab project: Settings → Pages → New Domain
4. Enter `sf2framework.com` and verify
5. GitLab will provision SSL certificate
6. Visit `https://sf2framework.com` (with SSL)

## GitLab Pages Configuration

In your GitLab project:

1. Navigate to **Settings** → **Pages**
2. Click **New Domain**
3. Enter domain name: `sf2framework.com`
4. (Optional) Add www subdomain: `www.sf2framework.com`
5. GitLab will verify DNS records
6. Once verified, SSL certificate is automatically provisioned

## Troubleshooting

### DNS Not Resolving

Check DNS with:
```bash
dig sf2framework.com
nslookup sf2framework.com
```

Should return the GitLab Pages A record (35.185.44.232) listed above.

### SSL Certificate Issues

- Ensure DNS is fully propagated before adding domain in GitLab
- GitLab automatically renews Let's Encrypt certificates
- Can take up to 24 hours for initial certificate provisioning

### "Page Not Found"

- Verify CNAME file exists in `docs/CNAME` (✅ Created)
- Ensure MkDocs is building to `site/` directory
- Check GitLab CI/CD pipeline completed successfully

## Files Updated in This Repository

- ✅ `docs/CNAME` - Contains `sf2framework.com` for GitLab Pages
- ✅ `mkdocs.yml` - Updated `site_url: https://sf2framework.com`
- ✅ All documentation - Updated URLs from old GitLab Pages subdomain
- ✅ `docs/robots.txt` - Updated sitemap URL
- ✅ `docs/framework.json` - Updated website URL

## Next Steps

1. **Configure DNS** at your domain registrar with records above
2. **Wait for propagation** (1-4 hours typically)
3. **Add domain in GitLab**: Settings → Pages → New Domain
4. **Verify SSL** provisioning (automatic, may take 1-24 hours)
5. **Test access**: https://sf2framework.com

## References

- [GitLab Pages Custom Domains](https://docs.gitlab.com/ee/user/project/pages/custom_domains_ssl_tls_certification/)
- [GitLab Pages IP Addresses](https://docs.gitlab.com/ee/user/gitlab_com/#gitlab-pages)
