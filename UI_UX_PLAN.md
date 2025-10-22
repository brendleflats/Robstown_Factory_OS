# 🎨 UI/UX Cohesion & Branding Plan

## Current Situation

**Problem:** Pages have inconsistent design language
- `home.html` - Dark gradient, teal/purple accents
- `presentation.html` - Different color scheme
- `index.html` (checklist) - Another style
- `/app` dashboard - React/Tailwind modern design
- No unified branding or logo

**Impact:** Looks unprofessional, feels like separate projects stitched together

---

## Design System Goals

Create a cohesive, professional brand identity across all pages that reflects the industrial/precision nature of factory liquidation.

### Brand Identity

**Name:** Factory OS  
**Tagline:** "Precision Liquidation Management"  
**Personality:** Professional, efficient, trustworthy, modern yet industrial

**Color Palette:**
```
Primary:   #0ea5e9 (Sky Blue) - Trust, clarity, tech
Secondary: #f59e0b (Amber) - Industrial, caution, value
Accent:    #10b981 (Emerald) - Success, progress, sale
Neutral:   #1e293b (Slate 800) - Background
Text:      #f1f5f9 (Slate 100) - High contrast
```

**Typography:**
- Headings: Inter Bold (modern, clean)
- Body: Inter Regular
- Monospace: JetBrains Mono (for data/specs)

---

## Component Library

### Navigation Header (All Pages)
```html
<nav class="bg-slate-900 border-b border-slate-700 px-6 py-4">
    <div class="max-w-7xl mx-auto flex justify-between items-center">
        <div class="flex items-center gap-3">
            <div class="text-2xl">🏭</div>
            <span class="text-xl font-bold text-sky-400">Factory OS</span>
        </div>
        <div class="flex gap-4">
            <a href="home.html">Home</a>
            <a href="index.html">Checklist</a>
            <a href="presentation.html">Presentation</a>
            <a href="/app">Dashboard</a>
        </div>
    </div>
</nav>
```

### Card Style (Consistent)
```css
.card {
    background: linear-gradient(135deg, #1e293b, #0f172a);
    border: 2px solid #334155;
    border-radius: 1rem;
    padding: 2rem;
    transition: transform 0.3s, border-color 0.3s;
}
.card:hover {
    transform: translateY(-4px);
    border-color: #0ea5e9;
}
```

### Button Styles
```css
/* Primary Action */
.btn-primary {
    background: #0ea5e9;
    color: #0f172a;
    padding: 0.75rem 1.5rem;
    border-radius: 0.5rem;
    font-weight: bold;
}

/* Secondary Action */
.btn-secondary {
    background: #334155;
    color: #f1f5f9;
}

/* Success/Complete */
.btn-success {
    background: #10b981;
    color: #0f172a;
}
```

---

## Page-by-Page Updates

### 1. home.html
- [x] Already has dark gradient background
- [ ] Update accent colors to sky blue/amber/emerald
- [ ] Add consistent navigation header
- [ ] Standardize card hover effects
- [ ] Add Factory OS logo/icon

### 2. index.html (Checklist)
- [ ] Match background gradient from home
- [ ] Update phase colors to brand palette
- [ ] Add navigation header
- [ ] Consistent button styles
- [ ] Match card styling

### 3. presentation.html
- [ ] Update slide backgrounds to match theme
- [ ] Use brand colors for highlights
- [ ] Add navigation (skip to home)
- [ ] Consistent typography

### 4. blank-canvas.html
- [ ] Match overall theme
- [ ] Use brand colors for act indicators
- [ ] Add navigation header
- [ ] Consistent transitions

### 5. /app Dashboard
- [ ] Update Tailwind theme in vite.config
- [ ] Match color scheme (sky/amber/emerald)
- [ ] Consistent card styles
- [ ] Navigation integration with static pages

---

## Implementation Plan

### Phase 1: Design Tokens (1-2 hours)
1. Create `shared-styles.css` with all variables
2. Define color palette, spacing, typography
3. Export as CSS variables for reuse

### Phase 2: Component Updates (2-3 hours)
1. Create navigation component template
2. Update all pages with new nav
3. Standardize card components
4. Unify button styles

### Phase 3: Color Harmonization (1-2 hours)
1. Replace all color references with brand colors
2. Update gradients to be consistent
3. Ensure accessibility (contrast ratios)

### Phase 4: Logo/Branding (1 hour)
1. Create simple Factory OS logo (text + icon)
2. Add to all pages
3. Update favicons

### Phase 5: Polish (1 hour)
1. Test all pages for visual consistency
2. Verify responsive behavior
3. Smooth transitions/animations
4. Final accessibility check

---

## Files to Create

1. **docs/assets/shared-styles.css** - Global design system
2. **docs/assets/nav-component.html** - Reusable navigation
3. **docs/assets/logo.svg** - Factory OS logo
4. **app/tailwind.config.js** - Updated theme for dashboard

---

## Success Metrics

✅ All pages use same color palette  
✅ Navigation appears identically on all pages  
✅ Cards have consistent hover effects  
✅ Buttons use same styles across site  
✅ Typography is uniform  
✅ Logo appears in same position on all pages  
✅ Pages feel like one cohesive application  

---

## Timeline

**This Week (Priority 2):**
- Design system creation: Oct 24
- Apply branding to all pages: Oct 25

**Estimated Time:** 6-9 hours total

---

*Created: Oct 21, 2025*
*Priority: Medium-High (affects professional appearance)*
