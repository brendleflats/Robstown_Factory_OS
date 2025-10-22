# 🗺️ Factory OS Roadmap - Oct 21, 2025

## 🎯 Priority 1 - TODAY (Oct 21, 2025)

### Goal: Inventory 8-12 Items Using App + Photo Protocol

- [ ] **1.1 - Understand Inventory App (`/app`) Logic & Workflow**
  - See **APP_TESTING_GUIDE.md** for complete walkthrough
  - Review how app reads from `constants.ts` (data source)
  - Understand `InventoryItem` type structure (types.ts)
  - Test filtering by building, search, status
  - Verify modal displays all item details correctly
  - Test locally: `cd app && npm install && npm run dev`
  - **Owner:** Roy | **Due:** Today AM | **Guide:** APP_TESTING_GUIDE.md

- [ ] **1.2 - Establish Photo Protocol (2-3 images per item)**
  - **Image 1:** Wide view shot of entire item
  - **Image 2:** Close-up of placard/label/model number
  - **Image 3:** Damage documentation or side view (if needed)
  - Create template folder structure: `Factory/ITEM_[ID]/`
  - **Owner:** Roy | **Due:** Today AM

- [ ] **1.3 - Field Work: Photograph 8-12 Items**
  - Select items from Building 1 (highest priority)
  - Take 2-3 photos per item following protocol
  - Record on paper: name, location, serial#, condition notes
  - **Owner:** Roy | **Due:** Today PM

- [ ] **1.4 - Data Entry: Add Items to constants.ts**
  - Format items following existing structure (see ITEM001/ITEM002)
  - Include: id, buildingId, name, description, specs, condition, value, location, serialNumber
  - Add photoUrl paths (or placeholder)
  - Test in app after each batch (3-4 items)
  - **Owner:** Roy | **Due:** Today PM

- [ ] **1.5 - Validation & Testing**
  - Verify all 8-12 items display in app
  - Test search functionality with new items
  - Test building filter
  - Verify value calculations update correctly
  - **Owner:** Roy | **Due:** Today EOD

---

## 📋 Priority 2 - This Week (Oct 21-25)

### Photo Management & Organization

- [ ] **2.1 - Organize Factory Photos**
  - Review 470MB Factory folder (80+ photos from Oct 13-19)
  - Categorize: equipment, wide shots, labels, damage
  - Move relevant photos to `docs/assets/inventory/`
  - **Due:** Oct 22

- [ ] **2.2 - Integrate New Oct 20+ Photos**
  - Check for any photos from Oct 20 onward not yet integrated
  - Add to appropriate asset folders
  - Update presentation.html if needed
  - **Due:** Oct 22

### App Enhancements

- [ ] **2.3 - Add Photo Upload Capability**
  - Research image upload component (React)
  - Store images in `public/inventory-photos/`
  - Update InventoryItem type to support multiple images
  - **Due:** Oct 24

- [ ] **2.4 - Multi-Image Support in Modal**
  - Add image gallery/carousel to InventoryModal
  - Support 2-3 images per item
  - Add prev/next navigation
  - **Due:** Oct 25

### UI/UX Cohesion & Branding

- [ ] **2.5 - Design System Creation**
  - Establish consistent color palette across all pages
  - Define typography standards (headings, body, labels)
  - Create reusable component styles
  - Document design tokens
  - **Due:** Oct 24

- [ ] **2.6 - Apply Cohesive Branding**
  - Update home.html, checklist, presentation with unified styles
  - Consistent navigation header/footer across pages
  - Match app dashboard aesthetics to static pages
  - Add Factory OS logo/branding elements
  - **Due:** Oct 25

---

## 🚀 Priority 3 - Next 2 Weeks (Oct 28 - Nov 8)

### Inventory Completion

- [ ] **3.1 - Building 1 Complete Inventory**
  - Target: 50-100 items documented
  - Daily sessions: 10-15 items/day
  - **Due:** Nov 1

- [ ] **3.2 - Building 2 Complete Inventory**
  - Target: 30-50 items documented
  - **Due:** Nov 5

- [ ] **3.3 - High-Value Item Focus**
  - Prioritize items >$10k
  - Get professional valuations if needed
  - Create separate "Featured Items" section
  - **Due:** Nov 8

### App Features

- [ ] **3.4 - Export Functionality**
  - Export to CSV for Excel
  - Export to PDF catalog
  - Print-friendly inventory list
  - **Due:** Nov 3

- [ ] **3.5 - AI Analysis Integration**
  - Connect Google Gemini API
  - Auto-generate descriptions from photos
  - Estimate values based on similar items
  - **Due:** Nov 7

---

## 📊 Priority 4 - Month 1 (Nov 2025)

### Backend & Collaboration

- [ ] **4.1 - Supabase Database Setup**
  - Replace constants.ts with real database
  - Enable real-time updates
  - Multi-user collaboration
  - **Due:** Nov 15

- [ ] **4.2 - User Authentication**
  - Login system for team members
  - Role-based permissions (admin, viewer, editor)
  - **Due:** Nov 18

- [ ] **4.3 - QR Code System**
  - Generate QR codes for each item
  - Print labels
  - Scan-to-view functionality
  - **Due:** Nov 22

### Marketing & Sales

- [ ] **4.4 - Create Sales Listings**
  - Export top 20 items to eBay/Craigslist format
  - Professional item descriptions
  - Photo galleries
  - **Due:** Nov 20

- [ ] **4.5 - Video Walkthroughs**
  - 30-second inventory demo
  - 5-minute factory tour
  - Individual item videos for high-value equipment
  - **Due:** Nov 25

---

## 🎓 Understanding the Inventory App (`/app`)

### How It Works

```
1. DATA SOURCE (constants.ts)
   ├── BUILDINGS_DATA: Array of buildings with SVG paths for map
   └── INVENTORY_DATA: Array of inventory items
   
2. APP LOGIC (App.tsx)
   ├── State Management
   │   ├── selectedBuildingId: Filter by building
   │   ├── selectedItem: Show detail modal
   │   └── searchTerm: Text search
   │
   ├── Computed Metrics (useMemo)
   │   ├── totalValue: Sum of "For Sale" items
   │   ├── liquidationProgress: % of items sold
   │   └── itemsInventoried: Total count
   │
   └── Filtered Inventory (useMemo)
       ├── Filter by building (if selected)
       └── Filter by search term
       
3. UI COMPONENTS
   ├── PropertyMap: SVG building visualization (clickable)
   ├── KpiCard: Displays metrics (value, progress, count)
   ├── InventoryPanel: List of items with status badges
   └── InventoryModal: Detailed item view
```

### Data Flow

```
User clicks building on map
  ↓
setSelectedBuildingId('building-1')
  ↓
filteredInventory recalculates (only Building 1 items)
  ↓
InventoryPanel re-renders with filtered items
  ↓
User clicks item
  ↓
setSelectedItem(item)
  ↓
InventoryModal opens with full details
```

### Key Files

- **types.ts** - TypeScript definitions (InventoryItem, Building, statuses)
- **constants.ts** - Your data source (edit here to add items)
- **App.tsx** - Main logic and state management
- **components/** - Reusable UI pieces

---

## 📝 Notes & Improvements

### Your Photo Protocol is Excellent ✅

**3-photo system is ideal:**
1. Wide view = context & size estimation
2. Label close-up = identification & specs
3. Damage/side view = condition assessment

**Suggested Enhancement:**
- Add a 4th optional photo for "action shot" (machine running, if safe)
- Helps buyers visualize functionality

### Workflow Optimization Tips

**For faster data entry:**
1. Use voice-to-text on phone for descriptions
2. Create a spreadsheet template first (easier editing)
3. Batch convert spreadsheet to JSON → constants.ts
4. Add script to auto-generate ITEM IDs

**For photo management:**
1. Name photos: `[ITEM_ID]_wide.jpg`, `[ITEM_ID]_label.jpg`, `[ITEM_ID]_damage.jpg`
2. Store in: `docs/assets/inventory/[ITEM_ID]/`
3. Update constants.ts with proper paths

### App Testing Checklist

When you run `npm run dev`:
- [ ] Does it start without errors?
- [ ] Do all 2 sample items display?
- [ ] Can you click buildings on the map?
- [ ] Does search filter correctly?
- [ ] Do modals open with full details?
- [ ] Are values formatted correctly ($XX,XXX)?
- [ ] Do status badges show proper colors?

---

## 🔄 Update Process

**After completing each task:**
1. Check the box in ROADMAP.md
2. Add entry to CHANGELOG.md under appropriate date
3. Test changes locally
4. Commit: `quick_commit.bat`

**End of day:**
1. Review completed tasks
2. Update tomorrow's priorities
3. Document any blockers or questions

---

## 📞 Questions to Address

1. **Image Storage:** Where do you want final photos stored?
   - Option A: `docs/assets/inventory/` (deployed to GitHub Pages)
   - Option B: Google Drive (link from constants.ts)
   - Option C: Both (Drive backup, local for app)

2. **Value Estimation:** How are you determining item values?
   - Market research?
   - Professional appraisal?
   - AI estimation?

3. **Building Priority:** Which building to inventory first?
   - Building 1 (Silver)?
   - Building 2 (Green)?
   - Building 3 (Red)?

---

*Roadmap created: Oct 21, 2025*
*Last updated: Oct 21, 2025*
