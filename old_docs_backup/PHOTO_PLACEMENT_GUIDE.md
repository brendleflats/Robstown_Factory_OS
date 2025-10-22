# 📸 Photo Asset Checklist - What You Need & Where to Place It

## ✅ Already Have (In Factory/ folder)

These 14 assets have already been identified from your Google Drive:

### App Screenshots (3) ✅
| File in Factory/ | Copy To | Purpose |
|------------------|---------|---------|
| `Screenshot_20251019-174240.Chrome.png` | `docs/assets/app-screenshots/app-screenshot-1.png` | AI Analysis Demo |
| `Screenshot_20251019-154856.Chrome.png` | `docs/assets/app-screenshots/app-screenshot-2.png` | Value Estimate |
| `Screenshot_20251019-154901.Chrome.png` | `docs/assets/app-screenshots/app-screenshot-3.png` | Saved Items List |

### Hero Items (5) ✅
| File in Factory/ | Copy To | Purpose |
|------------------|---------|---------|
| `IMG_20251015_062433510_MP.jpg` | `docs/assets/hero-items/hero-item-1.jpg` | ACME Transformer (THE hero shot) |
| `IMG_20251019_171121572.jpg` | `docs/assets/hero-items/hero-item-2.jpg` | High-value equipment #2 |
| `IMG_20251019_171229155.jpg` | `docs/assets/hero-items/hero-item-3.jpg` | High-value equipment #3 |
| `IMG_20251019_171500142.jpg` | `docs/assets/hero-items/hero-item-4.jpg` | High-value equipment #4 |
| `IMG_20251019_171637838.jpg` | `docs/assets/hero-items/hero-item-5.jpg` | High-value equipment #5 |

### Site Overview (2) ✅
| File in Factory/ | Copy To | Purpose |
|------------------|---------|---------|
| `1760842636728.jpg` | `docs/assets/site/site-overview-1.jpg` | Strategic site map |
| `IMG_20251019_171809775.jpg` | `docs/assets/site/site-overview-2.jpg` | Wide exterior shot |

### Progress/Cleared Areas (3) ✅
| File in Factory/ | Copy To | Purpose |
|------------------|---------|---------|
| `IMG_20251019_172243983.jpg` | `docs/assets/progress/cleared-area-1.jpg` | Cleared floor space #1 |
| `IMG_20251019_172346550.jpg` | `docs/assets/progress/cleared-area-2.jpg` | Cleared floor space #2 |
| `IMG_20251019_172536415.jpg` | `docs/assets/progress/cleared-area-3.jpg` | Cleared floor space #3 |

### Dashboard Preview (1) ✅
| File in Root | Copy To | Purpose |
|--------------|---------|---------|
| `factory-os-preview.png` | `docs/assets/factory-os-preview.png` | Dashboard screenshot |

---

## 🎬 Still Need from Your Phone

### **Priority 1: Inventory App Demo Video** 🎥

**Filename**: `inventory-demo-30sec.mp4`  
**Where to save**: `docs/assets/inventory-demo-30sec.mp4`

**What to capture** (30 seconds total):
1. **0:00-0:05**: Open app, show home screen
2. **0:05-0:07**: Tap "Take Photo" button
3. **0:07-0:09**: Take clear photo of an item
4. **0:09-0:17**: Tap "Analyze Item", wait for AI (show loading)
5. **0:17-0:20**: AI populates Name, Description, Value
6. **0:20-0:23**: Select Condition (Good/Fair/Poor)
7. **0:23-0:25**: Select Disposition (Sell/Keep/Scrap)
8. **0:25-0:27**: Add optional note
9. **0:27-0:29**: Tap "Save Item"
10. **0:29-0:30**: Success message appears

**Pro Tip**: Do a practice run first, then record when smooth

---

## 🔄 How the integrate-photos.bat Script Works

When you run `integrate-photos.bat`, it will:

1. ✅ Create `docs/assets/` directory structure
2. ✅ Copy all 14 photos from `Factory/` to correct subdirectories
3. ✅ Rename them to semantic names (e.g., `hero-item-1.jpg`)
4. ✅ Copy `factory-os-preview.png` from root to assets
5. ✅ Display confirmation message

**You don't need to manually copy anything - the script does it all!**

---

## 📁 Final Directory Structure

After running `integrate-photos.bat`, you'll have:

```
docs/
├── assets/
│   ├── app-screenshots/
│   │   ├── app-screenshot-1.png    ← AI Analysis
│   │   ├── app-screenshot-2.png    ← Value Estimate
│   │   └── app-screenshot-3.png    ← Saved Items
│   │
│   ├── hero-items/
│   │   ├── hero-item-1.jpg         ← ACME Transformer ⭐
│   │   ├── hero-item-2.jpg
│   │   ├── hero-item-3.jpg
│   │   ├── hero-item-4.jpg
│   │   └── hero-item-5.jpg
│   │
│   ├── site/
│   │   ├── site-overview-1.jpg     ← Strategic map
│   │   └── site-overview-2.jpg     ← Wide exterior
│   │
│   ├── progress/
│   │   ├── cleared-area-1.jpg
│   │   ├── cleared-area-2.jpg
│   │   └── cleared-area-3.jpg
│   │
│   ├── factory-os-preview.png      ← Dashboard screenshot
│   └── inventory-demo-30sec.mp4    ← (YOU NEED TO ADD THIS)
│
├── home.html
├── presentation.html
├── checklist.html
└── blank-canvas.html
```

---

## 🎯 Where Photos Appear

### Presentation Slideshow (presentation.html)
- **Slide 1**: `assets/site/site-overview-1.jpg` (Opportunity)
- **Slide 2**: Google Maps iframe (Location)
- **Slide 3**: `assets/app-screenshots/app-screenshot-1.png` (AI Tool)
- **Slide 4**: `assets/hero-items/hero-item-1.jpg` (ACME Transformer)
- **Slide 5**: `assets/factory-os-preview.png` (Dashboard)
- **Slide 6**: `assets/progress/cleared-area-1.jpg` (Progress)
- **Slide 7**: `assets/site/site-overview-2.jpg` (Next Steps)

### Blank Canvas Story (blank-canvas.html)
- Currently uses photos from root (1000007705.jpg, etc.)
- **Future enhancement**: Update to use assets/ folder

### Checklist (checklist.html)
- No photos currently
- Pure functional interface

### Home Page (home.html)
- No photos currently
- Card-based navigation

---

## 📱 Optional: Additional Photos for Enhancement

**If you want to make it even better**, capture these with your phone:

### Action Shots (Team at Work)
- **Filename**: `team-working-1.jpg` through `team-working-3.jpg`
- **Purpose**: Show human element, activity
- **Where**: Add to `docs/assets/team/`

### Before/After Comparisons
- **Filename**: `before-after-building1.jpg`
- **Purpose**: Visual proof of progress
- **Where**: Add to `docs/assets/progress/`

### Equipment Close-ups
- **Filename**: `equipment-detail-1.jpg` through `equipment-detail-5.jpg`
- **Purpose**: Data plate close-ups for OCR
- **Where**: Add to `docs/assets/equipment/`

---

## ✅ Your Action Checklist

For today's demo prep:

- [ ] **Step 1**: Double-click `integrate-photos.bat`
- [ ] **Step 2**: Verify `docs/assets/` folder populated
- [ ] **Step 3**: Open `docs/presentation.html` in browser
- [ ] **Step 4**: Click through all 7 slides - verify photos load
- [ ] **Step 5**: Open `docs/home.html` - test all navigation links
- [ ] **Step 6**: Charge your phone to capture video demo
- [ ] **Step 7**: Record 30-second inventory app workflow
- [ ] **Step 8**: Save video as `inventory-demo-30sec.mp4`
- [ ] **Step 9**: Copy video to `docs/assets/`
- [ ] **Step 10**: Run `quick_commit.bat` to push everything

---

## 🚀 Deployment & Testing

### After Pushing to GitHub:

1. **Wait 2-3 minutes** for GitHub Actions to deploy
2. **Visit live site**: https://brendleflats.github.io/Robstown_Factory_OS/home.html
3. **Test on desktop**: Click through all pages
4. **Test on mobile**: Pull up on your phone
5. **Test presentation**: Navigate all 7 slides

### What to Verify:

✅ All photos display (no broken image icons)  
✅ Google Maps iframe loads in Slide 2  
✅ Navigation links work between pages  
✅ Site is mobile-responsive  
✅ No console errors (F12 → Console tab)

---

## 🐛 Troubleshooting

### Photos don't show after running script?
- Check if `docs/assets/` folder was created
- Verify Factory/ folder exists with source photos
- Re-run `integrate-photos.bat`

### Photos show locally but not on GitHub Pages?
- Wait 5 minutes for cache to clear
- Hard refresh: Ctrl+F5
- Check Assets are committed: `git status`

### Presentation loads but photos are broken?
- Verify filenames match exactly (case-sensitive)
- Check browser console (F12) for 404 errors
- Ensure `assets/` folder committed to git

---

## 💡 Pro Tips

1. **Test Locally First**: Always open `docs/presentation.html` in browser BEFORE pushing to GitHub
2. **Hard Refresh**: After deploying, use Ctrl+F5 to clear browser cache
3. **Use Mobile View**: In Chrome, press F12 → Toggle Device Toolbar to test mobile
4. **Check Git Status**: Run `git status` to verify all assets are staged before committing

---

**You have everything you need. The photos are in Factory/, the script is ready, and the pages are configured to use them. Just run that bat file and you're golden! 🎯**
