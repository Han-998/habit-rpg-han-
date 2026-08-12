@echo off
cd /d D:\Projects\habit_levelup
flutter build web --base-href "/habit-rpg-han-/" --release --no-wasm-dry-run
if errorlevel 1 (
  echo BUILD GAGAL
  pause
  exit /b 1
)
cd /d D:\Projects\habit_levelup\build\web
if not exist .git (
  git init
  git branch -M main
  git remote add origin https://github.com/Han-998/habit-rpg-han-.git
)
git add .
git commit -m "Update web app"
git push origin main --force
echo DONE
pause