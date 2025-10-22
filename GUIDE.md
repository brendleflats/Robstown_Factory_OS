# 🏭 Robstown Factory OS - Complete Guide

> Factory liquidation management system with AI-powered analysis, real-time dashboard, and interactive planning

[![Live Demo](https://img.shields.io/badge/🌐_Live_Demo-success?style=for-the-badge)](https://brendleflats.github.io/Robstown_Factory_OS/home.html)

---

## 🎯 Quick Start

**View Live:** https://brendleflats.github.io/Robstown_Factory_OS/home.html

**Run Locally:**
```bash
cd app && npm install && npm run dev     # Dashboard
cd docs && python -m http.server 8000    # Static pages
```

**Deploy:**
```bash
quick_commit.bat    # Auto-commit with timestamp
```

---

## 📦 What You Have

1. **Live Website** - GitHub Pages deployment at URL above
2. **React Dashboard** (`/app`) - Interactive inventory & building map
3. **Static Pages** (`/docs`) - Checklist, presentation, blank canvas story
4. **Photo Assets** (`/docs/assets`) - 14 optimized images
5. **Raw Photos** (`/Factory`) - 470MB archive (not deployed)

---

## 🗂️ File Structure

```
Factory_OS/
├── app/                  # React dashboard (npm run dev)
│   ├── components/       # UI components
│   ├── constants.ts      # Building data & inventory
│   └── types.ts          # TypeScript definitions
│
├── docs/                 # GitHub Pages deployment
│   ├── home.html         # Main landing page
│   ├── index.html        # Checklist (5-phase tracker)
│   ├── presentation.html # 7-slide overview
│   ├── blank-canvas.html # Before/after story
│   └── assets/           # Photos organized by category
│
├── Factory/              # Raw photo archive (470MB)
├── GUIDE.md              # This file - your only doc needed
└── *.bat                 # Deployment scripts
```

---

## 🛠️ Key Commands

### Development
```bash
cd app
npm install              # First time only
npm run dev              # Start dashboard (localhost:5173)
npm run build            # Build for production
```

### Deployment
```bash
quick_commit.bat         # Quick commit with auto-message
git push                 # Deploy to GitHub Pages
```

### Utilities
```bash
check_git.bat            # Verify git status
test_git.bat             # Test connection
```

---

## 🎨 Features

**AI Item Analyzer** - Photo → specs → value in seconds  
**Real-Time Dashboard** - Interactive SVG map, search, filters  
**Strategic Presentation** - 7 slides for stakeholders  
**Project Checklist** - 5-phase workflow with auto-save  
**Mobile Responsive** - Works on all devices

---

## 📊 Current Status

- ✅ Live website deployed
- ✅ 14 photos integrated
- ✅ Navigation working
- ✅ Mobile responsive
- 🚧 Dashboard constants refinement
- 🚧 Real inventory data (2 samples, needs field capture)

**Physical Progress:** ~25% complete

---

## 🎯 Next Steps

**This Week:**
1. Run Tuesday city inspection
2. Capture inventory via phone
3. Update constants.ts with real data

**Next Week:**
- Complete Building 1 inventory
- Export high-value listings
- Create video demo

**Month 1:**
- 100% inventory complete
- Supabase backend integration
- QR code scanning

---

## 🔧 Tech Stack

- **Frontend:** React 18, TypeScript, Vite
- **Styling:** Tailwind CSS
- **State:** LocalStorage
- **Deployment:** GitHub Pages
- **AI:** Google Gemini API

---

## 👥 Team

**Project Lead:** Roy Hodge Jr.  
**Vision:** Dane  
**Repo:** github.com/brendleflats/Robstown_Factory_OS

---

## 📞 Quick Help

**Navigation broken?** Check file names (hyphen vs underscore)  
**Photos not showing?** Verify path in `docs/assets/`  
**Dashboard not loading?** Run `npm install` in `/app` first  
**Can't push to GitHub?** Run `check_git.bat` to verify setup

---

*Last Updated: Oct 21, 2025 | Status: ✅ Production Ready*
