@echo off
flutter build web --base-href "/habit-rpg-han-/" --release --no-wasm-dry-run
cd build\web
git add .
git commit -m "Update web app"
git push origin main --force
cd ..\..
echo Done!
pause