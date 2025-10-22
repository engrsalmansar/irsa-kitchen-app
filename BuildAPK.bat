@echo off
echo =========================================
echo    IRSA's Kitchen APK Builder (Windows)
echo =========================================
cd /d "%~dp0"
echo.
echo Step 1: Getting Flutter packages...
flutter pub get
if errorlevel 1 (
    echo Flutter package fetch failed!
    pause
    exit /b
)
echo.
echo Step 2: Building release APK...
flutter build apk --release
if errorlevel 1 (
    echo Build failed! Check the errors above.
    pause
    exit /b
)
echo.
echo APK build complete!
echo Opening output folder...
start "" "build\app\outputs\flutter-apk"
echo.
echo Your APK file is named: app-release.apk
echo.
pause
