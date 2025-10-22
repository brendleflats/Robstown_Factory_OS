@echo off
echo Analyzing Factory images for inventory candidates...
echo.

REM Create analysis directory
if not exist "image_analysis" mkdir image_analysis

echo Looking for images with equipment/machinery...
echo.

REM Images from Oct 19 (most recent equipment photos)
echo EQUIPMENT CANDIDATES (Oct 19):
echo.
echo Close-up/Detail shots (potential labels):
echo - IMG_20251019_171057531.jpg
echo - IMG_20251019_171106852.jpg
echo - IMG_20251019_171117157.jpg
echo - IMG_20251019_171121572.jpg
echo - IMG_20251019_171130427.jpg
echo - IMG_20251019_171143996.jpg
echo - IMG_20251019_171214827.jpg
echo - IMG_20251019_171229155.jpg
echo.
echo Wide shots (context):
echo - IMG_20251019_171245785.jpg
echo - IMG_20251019_171252070.jpg
echo - IMG_20251019_171303726.jpg
echo - IMG_20251019_171448583.jpg
echo.
echo Additional equipment:
echo - IMG_20251019_171455648.jpg through IMG_20251019_172618105.jpg
echo.

echo Creating reference list...
dir Factory\IMG_20251019_17*.jpg /b > image_analysis\oct19_equipment_list.txt

echo.
echo Analysis complete! Check image_analysis folder.
pause
