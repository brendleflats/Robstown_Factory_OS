# 🚀 GITHUB DEPLOYMENT GUIDE

## Quick Deploy

Just double-click **push_to_github.bat** and follow the prompts!

---

## If You Need GitHub Authentication

If the push fails asking for credentials, you'll need a Personal Access Token.

### Creating a Personal Access Token (2 minutes)

1. **Go to GitHub Settings**
   - Visit: https://github.com/settings/tokens
   - Or: GitHub.com → Your Profile (top right) → Settings → Developer settings → Personal access tokens → Tokens (classic)

2. **Generate New Token**
   - Click "Generate new token (classic)"
   - Give it a note: "Factory OS Deployment"
   - Select scopes: Check **repo** (this gives full control of private repositories)
   - Set expiration: 90 days (or longer if you prefer)
   - Click "Generate token"

3. **COPY THE TOKEN** 
   - ⚠️ You can only see it once! Copy it now!
   - It looks like: `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`

4. **Use Token Instead of Password**
   - Username: `brendleflats` (your GitHub username)
   - Password: Paste your token (not your actual password!)

---

## If Repository Already Exists

If you get an error about the repository already existing, you have two options:

### Option 1: Force Push (Replaces Everything)
```bash
git push -u origin main --force
```

### Option 2: Pull First, Then Push
```bash
git pull origin main --allow-unrelated-histories
git push -u origin main
```

---

## Enable GitHub Pages (After Successful Push)

1. Visit: https://github.com/brendleflats/Robstown_Factory_OS
2. Click **Settings** tab
3. Click **Pages** in left sidebar
4. Under **Source**, select **GitHub Actions**
5. Wait 2-3 minutes
6. Your checklist will be live at: https://brendleflats.github.io/Robstown_Factory_OS/

---

## Verify Everything Worked

### Check 1: Repository
Visit https://github.com/brendleflats/Robstown_Factory_OS
- You should see all your files
- app/ folder should exist
- docs/ folder should exist
- All documentation files visible

### Check 2: GitHub Actions
- Go to "Actions" tab in your repo
- You should see a workflow running
- Wait for green checkmark (✓)

### Check 3: Live Checklist
- Visit: https://brendleflats.github.io/Robstown_Factory_OS/
- Your interactive checklist should load
- Try checking a task
- Refresh page (it should remember)

---

## Troubleshooting

### "fatal: not a git repository"
Run: `git init` then try again

### "failed to push some refs"
The repo has content you don't have locally. Options:
1. Force push: `git push -u origin main --force`
2. Or pull first: `git pull origin main --allow-unrelated-histories`

### "Authentication failed"
Use Personal Access Token instead of password (see above)

### "remote: Repository not found"
- Check the repo exists: https://github.com/brendleflats/Robstown_Factory_OS
- Make sure you have access to it
- Verify the remote URL: `git remote -v`

### GitHub Pages shows 404
- Wait 2-3 minutes (it takes time to deploy)
- Check Settings → Pages shows "GitHub Actions" as source
- Check Actions tab for any errors

---

## Manual Commands (If Batch File Doesn't Work)

Run these one by one:

```bash
# Initialize
git init

# Add remote
git remote add origin https://github.com/brendleflats/Robstown_Factory_OS.git

# Add files
git add .

# Commit
git commit -m "Initial commit: Restructured Factory OS"

# Set branch
git branch -M main

# Push
git push -u origin main
```

---

## After Successful Deploy

Share these with Dane and John:

**Checklist URL:**
https://brendleflats.github.io/Robstown_Factory_OS/

**Repository:**
https://github.com/brendleflats/Robstown_Factory_OS

Tell them: "Check out the interactive project checklist. You can see all the phases and our progress!"

---

## Future Updates

After your first push, updating is easy:

```bash
git add .
git commit -m "Updated Phase 1 progress"
git push
```

Or create an `update.bat`:
```batch
git add .
git commit -m "Progress update"
git push
```

---

**You got this! 🚀**
