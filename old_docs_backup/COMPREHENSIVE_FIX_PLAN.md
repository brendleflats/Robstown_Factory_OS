# 🔧 Comprehensive Fix & Integration Plan

## Current Issues Identified

### 1. **404 Errors**
- ❌ `blank_canvas.html` returns 404
- ❌ Checklist link not working from some pages

### 2. **App Constants Error**
```
InventoryModal.tsx:5 Uncaught SyntaxError: The requested module '/constants.ts' 
does not provide an export named 'STATUS_COLORS'
```
**Root Cause**: The exports exist but may have import path issues or build cache

### 3. **CDN Warning**
```
cdn.tailwindcss.com should not be used in production
```
**Status**: Non-critical warning, doesn't affect functionality

### 4. **Photo Integration**
- ✅ 470MB of photos downloaded to `/Factory` folder
- ⏳ Need to cherry-pick strategic photos for presentation
- ⏳ Need to integrate into slideshow

### 5. **Documentation Bloat**
- 📄 40+ markdown files in root directory
- 🗂️ Need cleanup and consolidation

---

## 🎯 Action Plan (Priority Order)

### **PHASE 1: Fix Critical Navigation Issues** ⚡
1. Fix blank_canvas.html (rename or redirect)
2. Verify all internal links work
3. Test checklist page loading

### **PHASE 2: Cherry-Pick & Integrate Photos** 📸
Based on Gemini's analysis, select these 14 assets:
- 3 App Screenshots
- 5 High-Value Items ("Hero" shots)
- 2 Site Overviews
- 3 Cleared Area Progress shots
- 1 Video demo

### **PHASE 3: Update Presentation Slideshow** 🎬
- Add Google Maps iframe (already in code)
- Replace placeholder images with real photos
- Add app demo screenshots
- Integrate factory-os-preview.png

### **PHASE 4: Clean Up Repository** 🧹
- Archive redundant .md files to `/archive` folder
- Keep only: README.md, QUICKSTART.md, DEMO_GUIDE_FOR_DANE.md
- Update main README

### **PHASE 5: Fix App Build Issues** 🛠️
- Clear build cache
- Verify constants.ts exports
- Test inventory modal

---

## 📸 Photo Asset Map (From Gemini Analysis)

### App Screenshots (3)
1. `Screenshot_20251019-174240.Chrome.png` → `app-screenshot-1.png` (AI Analysis)
2. `Screenshot_20251019-154856.Chrome.png` → `app-screenshot-2.png` (Value Estimate)
3. `Screenshot_20251019-154901.Chrome.png` → `app-screenshot-3.png` (Saved Items)

### Hero Items (5)
1. `IMG_20251015_062433510_MP.jpg` → `hero-item-1.jpg` (ACME Transformer)
2. `IMG_20251019_171121572.jpg` → `hero-item-2.jpg`
3. `IMG_20251019_171229155.jpg` → `hero-item-3.jpg`
4. `IMG_20251019_171500142.jpg` → `hero-item-4.jpg`
5. `IMG_20251019_171637838.jpg` → `hero-item-5.jpg`

### Site Overview (2)
1. `1760842636728.jpg` → `site-overview-1.jpg` (Strategic Map)
2. `IMG_20251019_171809775.jpg` → `site-overview-2.jpg` (Exterior)

### Cleared Areas (3)
1. `IMG_20251019_172243983.jpg` → `cleared-area-1.jpg`
2. `IMG_20251019_172346550.jpg` → `cleared-area-2.jpg`
3. `IMG_20251019_172536415.jpg` → `cleared-area-3.jpg`

### Video
1. `VID_20251019_171316903.mp4` → `inventory-demo.mp4`

---

## 🎬 7-Minute Demo Flow

**Minute 0-1**: Land on home.html → Show navigation → Explain 3-part system
**Minute 1-3**: Presentation → Walk through 7 slides with real photos
**Minute 3-4**: Checklist → Show phase tracking and AI prompts
**Minute 4-5**: Dashboard → Show building map, filters, inventory items
**Minute 5-6**: Item Details → Click item, show modal with full specs
**Minute 6-7**: Wrap-up → Show GitHub repo, mobile responsiveness

---

## ✅ Success Criteria

- [ ] All pages load without 404s
- [ ] Navigation works between all sections
- [ ] Photos integrated into presentation
- [ ] App builds and runs without errors
- [ ] Repository is clean and organized
- [ ] 7-minute demo flows smoothly
- [ ] Ready for Dane's review

---

**Next Step**: Begin PHASE 1 fixes
