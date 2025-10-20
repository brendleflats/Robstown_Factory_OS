# 📸 Photo Integration Checklist

## What You Need to Do

You have 14 files in your Google Drive that need to be added to the project.

### Step 1: Download Photos from Google Drive
Go to: https://drive.google.com/drive/folders/17AG2i-gD2kpeXqr-HshcnU-_mLWPZ8nW?usp=sharing

### Step 2: Save & Rename Files
Download each file and save it to:
```
C:\Users\Administrator\Desktop\Factory_OS\docs\
```

Rename them as follows:

| New Filename | Original File Name |
|--------------|-------------------|
| `app-screenshot-1.png` | Screenshot_20251019-174240.Chrome.png |
| `app-screenshot-2.png` | Screenshot_20251019-154856.Chrome.png |
| `app-screenshot-3.png` | Screenshot_20251019-154901.Chrome.png |
| `hero-item-1.jpg` | IMG_20251015_062433510_MP.jpg |
| `hero-item-2.jpg` | IMG_20251019_171121572.jpg |
| `hero-item-3.jpg` | IMG_20251019_171229155.jpg |
| `hero-item-4.jpg` | IMG_20251019_171500142.jpg |
| `hero-item-5.jpg` | IMG_20251019_171637838.jpg |
| `site-overview-1.jpg` | 1760842636728.jpg |
| `site-overview-2.jpg` | IMG_20251019_171809775.jpg |
| `cleared-area-1.jpg` | IMG_20251019_172243983.jpg |
| `cleared-area-2.jpg` | IMG_20251019_172346550.jpg |
| `cleared-area-3.jpg` | IMG_20251019_172536415.jpg |
| `inventory-demo.mp4` | VID_20251019_171316903.mp4 |

### Step 3: Verify They're in Place
After downloading and renaming, you should have these files in the `docs` folder:
- 3 app screenshots (PNG files)
- 5 hero item photos (JPG files)
- 2 site overview photos (JPG files)
- 3 cleared area photos (JPG files)
- 1 demo video (MP4 file)

### Step 4: Tell Me When Done
Once all 14 files are in the `docs` folder with the correct names, let me know and I'll:
1. Update presentation.html to use these images
2. Update blank-canvas.html to use these images
3. Create a video showcase page for the demo
4. Commit everything to GitHub

---

## Quick Check Command
After you've downloaded and renamed the files, run this in PowerShell to verify:

```powershell
cd C:\Users\Administrator\Desktop\Factory_OS\docs
dir *.png, *.jpg, *.mp4 | Select-Object Name
```

You should see 14 files listed.

---

## Why These Specific Names?

These standardized names make it easy to:
1. Update HTML files programmatically
2. Keep the codebase organized
3. Scale the system as more photos are added
4. Quickly identify what each file shows

Once these photos are in place, your presentation will go from placeholders to **real, impressive factory documentation**.
