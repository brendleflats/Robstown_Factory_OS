# FACTORY OS - RESTRUCTURING GUIDE

## What We're Doing

We're reorganizing your Factory_OS project to separate concerns:
- `/app` = Your React dashboard application
- `/docs` = Your static checklist (for GitHub Pages)

## Manual Restructuring Steps

Since automated scripts might not work on all systems, here's the manual approach:

### Step 1: Create the New Folder Structure

Create these folders in your Factory_OS directory:
1. `app`
2. `app\components`
3. `app\utils`
4. `docs`
5. `.github`
6. `.github\workflows`

### Step 2: Move Application Files to app\

Move these files FROM root TO `app\`:
- App.tsx
- constants.ts
- index.html
- index.tsx
- metadata.json
- package.json
- tsconfig.json
- types.ts
- vite.config.ts

### Step 3: Move Component Files

Move all .tsx files FROM `components\` TO `app\components\`:
- Icons.tsx
- InventoryModal.tsx
- InventoryPanel.tsx
- KpiCard.tsx
- PropertyMap.tsx

Then DELETE the empty `components` folder.

### Step 4: Move Utility Files

Move all .ts files FROM `utils\` TO `app\utils\`:
- formatCurrency.ts

Then DELETE the empty `utils` folder.

### Step 5: Set Up the Checklist

COPY `roy.html` TO `docs\index.html`
(Keep the original roy.html if you want, or delete it)

### Step 6: Set Up GitHub Workflow

Create a new file: `.github\workflows\deploy-checklist.yml`

Copy this content:
```yaml
name: Deploy Checklist (from /docs)

on:
  push:
    branches: [ "main" ]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: "pages"
  cancel-in-progress: false

jobs:
  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
      - name: Setup Pages
        uses: actions/configure-pages@v5
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: './docs'
      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

### Step 7: Create Dockerfile in app\

Create `app\Dockerfile` with this content:
```dockerfile
# STAGE 1: Build the React App
FROM node:18-alpine AS builder
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's source code
COPY . .

# Build for production
RUN npm run build

# STAGE 2: Serve the App
FROM nginx:1.25-alpine
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```

### Step 8: Update README

Replace your current README.md with README_NEW.md (which has been created for you).

## Testing Your Setup

### Test the Dashboard App:
```bash
cd app
npm install
npm run dev
```
Visit: http://localhost:5173

### Test the Checklist:
Simply open `docs\index.html` in your browser.

### Test Docker Build:
```bash
cd app
docker build -t robstown-os .
docker run -p 8080:80 robstown-os
```
Visit: http://localhost:8080

## Final Git Commands

Once everything is working:

```bash
# Initialize git if not already done
git init

# Add all files
git add .

# Commit
git commit -m "Restructure: Separate app and docs for clean deployment"

# Add remote (only if not already added)
git remote add origin https://github.com/brendleflats/Robstown_Factory_OS.git

# Push to GitHub
git push -u origin main
```

## Your New Workflow

**For Dashboard Development:**
```bash
cd app
npm run dev
# Edit files in app/components/, app/utils/, etc.
```

**For Checklist Updates:**
- Edit `docs/index.html` directly
- Refresh in browser to see changes

**For Deployment:**
- Push to GitHub = Automatic checklist deployment via GitHub Pages
- Run `cd app && docker build -t robstown-os .` for app deployment

## What You Get

✅ Clean separation of concerns
✅ GitHub Pages for your checklist at: https://brendleflats.github.io/Robstown_Factory_OS/
✅ Docker-ready React app
✅ Professional project structure
✅ Ready for Supabase integration (real-time collaboration)

## Next Enhancement: Supabase (Optional but Powerful)

Want Dane and John to see your checklist progress in real-time?

1. Sign up at https://supabase.com (free)
2. Create a new project
3. In app folder: `npm install @supabase/supabase-js`
4. Replace localStorage with Supabase database calls
5. Now everyone sees the same data, live!

---

**Questions or Issues?**
Create an issue at: https://github.com/brendleflats/Robstown_Factory_OS/issues
