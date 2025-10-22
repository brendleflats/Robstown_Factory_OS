# 🧪 App Testing & Understanding Guide

## Quick Test - 5 Minutes

```bash
cd app
npm install
npm run dev
```

**Expected:** Browser opens to `http://localhost:5173`

---

## What You Should See

### 1. Dashboard Layout (3 columns)

**Left Column:**
- Interactive building map (SVG)
- 3 clickable buildings (different colors)
- Stats cards: Total Value, Progress %, Items Count

**Middle Column:**
- Search box
- Building filter dropdown
- List of inventory items (2 items currently)
- Status badges (green = For Sale, etc.)

**Right Column:**
- Click any item → Detail modal opens
- Shows: photos, description, specs, condition, value, location

---

## Testing Checklist

### ✅ Basic Functionality

Run through these tests:

1. **Page Loads**
   - [ ] No console errors
   - [ ] All components visible
   - [ ] Map displays 3 buildings

2. **Building Map Interaction**
   - [ ] Click Building 1 (Silver) → filters to 1 item
   - [ ] Click Building 2 (Green) → filters to 1 item
   - [ ] Click outside buildings → shows all items (2 total)
   - [ ] Hover shows building name tooltip

3. **Search Functionality**
   - [ ] Type "Cincinnati" → shows 1 item (press brake)
   - [ ] Type "Aronson" → shows 1 item (welding positioner)
   - [ ] Type "xyz" → shows "No items found"
   - [ ] Clear search → shows all items again

4. **Item Details Modal**
   - [ ] Click "Cincinnati 500-Ton Press Brake"
   - [ ] Modal opens with full details
   - [ ] Shows: name, description, specs, condition rating (4/5 stars)
   - [ ] Shows: value ($85,000), location, status
   - [ ] Click X or outside modal → closes

5. **Dashboard Metrics (KPI Cards)**
   - [ ] Total Value shows $89,000 (85k + 4k)
   - [ ] Liquidation Progress shows 0% (no items sold yet)
   - [ ] Items Inventoried shows 2

6. **Status Badges**
   - [ ] "For Sale" = Green badge
   - [ ] "Pending Review" = Yellow badge
   - [ ] Different statuses show different colors

---

## Understanding the Code

### Data Structure (constants.ts)

```typescript
INVENTORY_DATA = [
  {
    id: "ITEM001",                    // Unique identifier
    buildingId: "building-1",         // Links to BUILDINGS_DATA
    name: "Cincinnati 500-Ton Press Brake",
    description: "Large industrial press brake...",
    specifications: "500 ton capacity, 12ft bed...",
    condition: "Good",                // Excellent/Good/Fair/Poor
    conditionRating: 4,               // 1-5 scale
    status: "For Sale",               // For Sale/Sold/Scrap/Pending/Reserved
    reviewStatus: "Approved",         // Pending/Approved/Needs Info/Rejected
    value: 85000,                     // Dollar amount
    location: "Building 1, Main Floor, Bay 2",
    serialNumber: "CB-500-1234",
    imageUrl: "/placeholder-equipment.jpg",
    aiAnalysis: "AI identified as...",
    notes: "Needs minor hydraulic line repair..."
  }
]
```

### How Filtering Works

**Building Filter:**
```typescript
// When you click a building:
setSelectedBuildingId('building-1')

// App filters inventory:
filteredInventory = INVENTORY_DATA.filter(
  item => item.buildingId === 'building-1'
)
```

**Search Filter:**
```typescript
// When you type in search:
setSearchTerm('Cincinnati')

// App filters inventory:
filteredInventory = INVENTORY_DATA.filter(
  item => item.name.toLowerCase().includes('cincinnati')
)
```

**Combined Filters:**
```typescript
// Both work together:
filteredInventory = INVENTORY_DATA
  .filter(item => !selectedBuildingId || item.buildingId === selectedBuildingId)
  .filter(item => item.name.toLowerCase().includes(searchTerm.toLowerCase()))
```

### Dashboard Metrics Calculation

```typescript
// Total Value (only "For Sale" items):
totalValue = INVENTORY_DATA
  .filter(item => item.status === 'For Sale')
  .reduce((sum, item) => sum + item.value, 0)
// Result: $85,000 (ITEM001 only, ITEM002 is "Pending Review")

// Liquidation Progress:
soldCount = INVENTORY_DATA.filter(item => item.status === 'Sold').length  // 0
totalCount = INVENTORY_DATA.length  // 2
progress = (soldCount / totalCount) * 100  // 0%

// Items Inventoried:
itemsInventoried = INVENTORY_DATA.length  // 2
```

---

## Adding Your 8-12 Items Today

### Step 1: Prepare Your Data

**On paper/phone, record:**
- Item name
- Building location (Building 1, 2, or 3)
- Condition (Excellent, Good, Fair, Poor)
- Estimated value
- Serial number (if visible)
- Notes about condition

### Step 2: Take Photos

**For each item:**
1. Wide shot - full item in frame
2. Close-up - label/placard/model number
3. Damage/side - any issues or alternate angle

**Save as:** `ITEM_XXX_wide.jpg`, `ITEM_XXX_label.jpg`, `ITEM_XXX_side.jpg`

### Step 3: Edit constants.ts

**Open:** `app/constants.ts`

**Add new items to INVENTORY_DATA array:**

```typescript
export const INVENTORY_DATA: InventoryItem[] = [
    // ... existing ITEM001 and ITEM002 ...
    
    {
        "id": "ITEM003",
        "buildingId": "building-1",  // or building-2, building-3
        "buildingName": "Building 1 - Silver",
        "name": "Your Item Name Here",
        "description": "Detailed description of item, what it does, condition notes",
        "specifications": "Dimensions, capacity, power requirements, etc.",
        "condition": "Good",  // Excellent/Good/Fair/Poor
        "conditionRating": 4,  // 1-5 (5 = excellent, 1 = poor)
        "status": "For Sale",  // For Sale/Sold/Scrap/Pending Review/Reserved
        "reviewStatus": "Pending",
        "reviewedBy": "",
        "reviewDate": "",
        "reviewNotes": "",
        "value": 5000,  // Your estimated value
        "location": "Building 1, South Wall, Bay 3",
        "serialNumber": "SN12345",
        "imageUrl": "/assets/inventory/ITEM003/ITEM003_wide.jpg",
        "photoUrl": "",
        "aiAnalysis": "",
        "notes": "Any additional notes about the item"
    },
    // Repeat for ITEM004, ITEM005, etc.
];
```

### Step 4: Test After Each Batch

**After adding 3-4 items:**
1. Save constants.ts
2. Check browser (should auto-reload with Vite)
3. Verify new items appear in list
4. Click to test modal
5. Check if values update correctly

### Step 5: Move Photos to App

**Create folder structure:**
```
app/public/assets/inventory/
  ├── ITEM003/
  │   ├── ITEM003_wide.jpg
  │   ├── ITEM003_label.jpg
  │   └── ITEM003_side.jpg
  ├── ITEM004/
  └── ...
```

**Update imageUrl in constants.ts:**
```typescript
"imageUrl": "/assets/inventory/ITEM003/ITEM003_wide.jpg"
```

---

## Common Issues & Solutions

### Issue: App won't start
**Solution:** 
```bash
cd app
rm -rf node_modules package-lock.json
npm install
npm run dev
```

### Issue: Images don't load
**Check:**
- Images are in `app/public/` (not `app/src/`)
- Path starts with `/` not `./`
- File names match exactly (case-sensitive)

### Issue: New items don't appear
**Check:**
- Comma after previous item in array
- All required fields present
- Valid JSON syntax (use VS Code to check)
- Browser console for errors (F12)

### Issue: Values not calculating correctly
**Check:**
- `value` is a number, not string (no quotes)
- `status` is exactly "For Sale" (case-sensitive)
- Comma-separated numbers: `85000` not `"85,000"`

---

## Tips for Efficiency

**Batch Entry:**
- Add 3-4 items at once
- Test batch before continuing
- Easier to fix errors in small batches

**Use Templates:**
- Copy ITEM001 as template
- Find/replace ITEM001 → ITEM003
- Update specific fields

**Photo Organization:**
- Name consistently before adding
- Create folder structure first
- Move all photos at once at end

**Validation:**
- Test each building filter works
- Search for each new item by name
- Check totals update correctly

---

## Success Criteria

By end of today, you should have:

✅ App running locally (`npm run dev` works)  
✅ 8-12 new items added to constants.ts  
✅ All items display in app correctly  
✅ Photos organized and loading  
✅ Search works for all new items  
✅ Building filters work correctly  
✅ Dashboard metrics accurate  
✅ Modals show all item details  

---

*Testing Guide - Oct 21, 2025*
