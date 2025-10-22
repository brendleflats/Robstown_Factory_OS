# 🏭 Robstown Factory OS

> Factory liquidation management system with AI-powered analysis, real-time dashboard, and interactive planning

[![Live Demo](https://img.shields.io/badge/🌐_Live_Demo-success?style=for-the-badge)](https://brendleflats.github.io/Robstown_Factory_OS/home.html)
[![GitHub](https://img.shields.io/badge/📦_GitHub-blue?style=for-the-badge)](https://github.com/brendleflats/Robstown_Factory_OS)

**📖 For detailed instructions, see [GUIDE.md](./GUIDE.md)**

---

## 🚀 Quick Start

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

## 📦 What's Inside

- **Live Website** - GitHub Pages deployment
- **React Dashboard** (`/app`) - Interactive inventory & building map  
- **Static Pages** (`/docs`) - Checklist, presentation, blank canvas story
- **Photo Assets** (`/docs/assets`) - 14 optimized images
- **Raw Photos** (`/Factory`) - 470MB archive (not deployed)

---

## 🎯 Key Features

**AI Item Analyzer** - Photo → specs → value in seconds  
**Real-Time Dashboard** - Interactive SVG map, search, filters  
**Strategic Presentation** - 7 slides for stakeholders  
**Project Checklist** - 5-phase workflow with auto-save  
**Mobile Responsive** - Works on all devices

---

## 📊 Status

✅ Live website deployed  
✅ 14 photos integrated  
✅ Navigation working  
✅ Mobile responsive  
🚧 Dashboard constants refinement  
🚧 Real inventory data (needs field capture)

**Physical Progress:** ~25% complete

---

## 🛠️ Tech Stack

React 18 • TypeScript • Vite • Tailwind CSS • GitHub Pages • Google Gemini API

---

## 👥 Team

**Project Lead:** Roy Hodge Jr. | **Vision:** Dane  
**Repo:** github.com/brendleflats/Robstown_Factory_OS

---

*Last Updated: Oct 21, 2025 | Status: ✅ Production Ready*
```bash
# Clone repository
git clone https://github.com/brendleflats/Robstown_Factory_OS.git
cd Robstown_Factory_OS

# Install app dependencies
cd app
npm install

# Run development server
npm run dev
```

### Building for Production
```bash
cd app
npm run build
# Output in app/dist/
```

### Docker Deployment
```bash
cd app
docker build -t robstown-os .
docker run -p 8080:80 robstown-os
```

---

## 📚 Documentation

**Getting Started:**
- [QUICKSTART.md](QUICKSTART.md) - 5-minute setup guide
- [START_HERE.md](START_HERE.md) - Project overview

**Deployment:**
- [GITHUB_DEPLOY.md](GITHUB_DEPLOY.md) - GitHub Pages setup
- [NAVIGATION_INTEGRATION.md](NAVIGATION_INTEGRATION.md) - How pages connect

**Project Management:**
- [PROJECT_ANALYSIS.md](PROJECT_ANALYSIS.md) - Technical details & roadmap
- [RESTRUCTURE_GUIDE.md](RESTRUCTURE_GUIDE.md) - Architecture decisions

---

## ✨ Features

### Dashboard
- 🎨 Modern React architecture
- 📱 Responsive design (mobile, tablet, desktop)
- 🏢 Building-based inventory filtering
- 🔍 Real-time search
- 💰 Asset value tracking
- 📊 Progress monitoring

### Checklist
- ✅ 5-phase liquidation workflow
- 💾 Auto-save with localStorage
- ➕ Custom task creation
- 📝 Integrated notes
- 🤖 AI document generators
- 📈 Real-time progress tracking

### Presentation
- 🎯 7 professional slides
- ⌨️ Keyboard shortcuts
- 🖼️ Live dashboard integration
- 📊 ROI metrics visualization
- 🎨 Executive-ready design

---

## 🚀 Deployment

### GitHub Pages (Automatic)
Push to `main` branch → GitHub Actions deploys to:
`https://brendleflats.github.io/Robstown_Factory_OS/`

### Manual Update
```bash
# Use the update script
./update_github.bat

# Or manually:
git add .
git commit -m "Your message"
git push
```

---

## 🎯 Next Steps

### Immediate (This Week)
- [ ] Complete Phase 1 tasks using checklist
- [ ] Share URLs with team
- [ ] Begin inventory data collection

### Short Term (2 Weeks)
- [ ] Replace sample data with real inventory
- [ ] Add actual building photos
- [ ] Export to Excel/CSV feature

### Long Term (1 Month)
- [ ] Supabase integration for real-time collaboration
- [ ] User authentication
- [ ] Mobile native apps
- [ ] QR code scanning

---

## 🤝 Team

**Project Lead:** Roy Hodge Jr.  
**Vision:** Dane's Strategic Directive  
**Repository:** [github.com/brendleflats/Robstown_Factory_OS](https://github.com/brendleflats/Robstown_Factory_OS)

---

## 📞 Support

- **Issues:** [GitHub Issues](https://github.com/brendleflats/Robstown_Factory_OS/issues)
- **Documentation:** See `/docs` folder
- **Quick Help:** [QUICKSTART.md](QUICKSTART.md)

---

## 📄 License

This project is proprietary software developed for Robstown Factory liquidation operations.

---

## 🎉 Achievements

✅ Full-stack application deployed  
✅ Professional UI/UX design  
✅ Integrated navigation system  
✅ Comprehensive documentation  
✅ Docker-ready deployment  
✅ GitHub Actions CI/CD  
✅ Mobile-responsive design  
✅ Real-time features ready  

---

**Built with ❤️ for efficient factory liquidation management**

*Last Updated: January 19, 2025*
