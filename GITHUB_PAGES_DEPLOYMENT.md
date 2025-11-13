# GitHub Pages Deployment Guide

## Step 1: Create GitHub Repository

1. Go to https://github.com/code-universe-unit
2. Click **"New"** button to create a new repository
3. Repository name: `greencom-docs` (or any name you prefer)
4. Make it **Public** (required for GitHub Pages on free plan)
5. **Do NOT** initialize with README, .gitignore, or license
6. Click **"Create repository"**

## Step 2: Push Code to GitHub

After creating the repository, run these commands in terminal:

```powershell
cd Y:\GreenComMapping\website_docs

# Add remote origin (replace YOUR_REPO_NAME with actual name)
git remote add origin https://github.com/code-universe-unit/YOUR_REPO_NAME.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. In the left sidebar, click **Pages**
4. Under **Build and deployment**:
   - Source: Select **GitHub Actions**
5. The workflow will automatically run when you push to main branch

## Step 4: Configure Cloudflare DNS

1. Go to Cloudflare Dashboard
2. Select your domain `greencom-maps.com`
3. Go to **DNS** → **Records**
4. Add these records:

### Option A: Using CNAME (Recommended)
```
Type: CNAME
Name: docs
Target: code-universe-unit.github.io
Proxy status: DNS only (gray cloud) - IMPORTANT!
TTL: Auto
```

### Option B: Using A Records (Alternative)
```
Type: A
Name: docs
IPv4 address: 185.199.108.153
Proxy status: DNS only (gray cloud)
TTL: Auto
```

Add 3 more A records with same settings but different IPs:
- 185.199.109.153
- 185.199.110.153
- 185.199.111.153

**IMPORTANT**: Set Proxy status to **DNS only** (gray cloud), not proxied!

## Step 5: Configure Custom Domain in GitHub

1. Go to repository **Settings** → **Pages**
2. Under **Custom domain**:
   - Enter: `docs.greencom-maps.com`
   - Click **Save**
3. Wait a few minutes for DNS to propagate
4. Check **Enforce HTTPS** once available

## Step 6: Verify Deployment

1. Wait for GitHub Actions workflow to complete (check **Actions** tab)
2. Once done, visit: `https://docs.greencom-maps.com`
3. Site should be live with your custom domain!

## Troubleshooting

### If site doesn't load:
1. Check GitHub Actions workflow completed successfully
2. Verify DNS records in Cloudflare (use `nslookup docs.greencom-maps.com`)
3. Wait up to 24 hours for DNS propagation
4. Make sure Cloudflare proxy is **disabled** (gray cloud)

### To update site:
```powershell
cd Y:\GreenComMapping\website_docs
git add .
git commit -m "Update documentation"
git push
```

GitHub Actions will automatically rebuild and deploy!

## Files Created/Modified:

- ✅ `.github/workflows/deploy.yml` - GitHub Actions workflow
- ✅ `docs/public/CNAME` - Custom domain configuration
- ✅ `docs/.vitepress/config.ts` - Added base: '/' for GitHub Pages
- ✅ `.gitignore` - Git ignore rules

## Current Status:
- [x] Git repository initialized
- [x] Initial commit created
- [ ] Push to GitHub (waiting for repository creation)
- [ ] Enable GitHub Pages
- [ ] Configure Cloudflare DNS
- [ ] Test deployment
