# Windows-Optimierungen für Entwicklung auf schwacher Hardware

Write-Host "Optimiere Windows für Entwicklung..." -ForegroundColor Green

# 1. Windows Defender Ausnahmen
Write-Host "Füge Windows Defender Ausnahmen hinzu..."
try {
    Add-MpPreference -ExclusionPath "$env:USERPROFILE\AppData\Local\npm-cache"
    Add-MpPreference -ExclusionPath "$env:USERPROFILE\.npm"
    Add-MpPreference -ExclusionPath "$(Get-Location)\node_modules"
    Add-MpPreference -ExclusionPath "$(Get-Location)\build"
    Add-MpPreference -ExclusionPath "$(Get-Location)\dist"
    Write-Host "✓ Windows Defender Ausnahmen hinzugefügt" -ForegroundColor Green
} catch {
    Write-Host "⚠ Defender Ausnahmen erfordern Admin-Rechte" -ForegroundColor Yellow
}

# 2. NPM Cache optimieren
Write-Host "Optimiere NPM Cache..."
npm config set cache "$env:USERPROFILE\.npm-cache" --global
npm config set registry "https://registry.npmjs.org/" --global
npm config set fund false --global
npm config set audit false --global

# 3. Git Optimierungen
Write-Host "Optimiere Git Konfiguration..."
git config --global core.preloadindex true
git config --global core.fscache true
git config --global gc.auto 256

# 4. Node.js Memory Optimierungen
Write-Host "Setze Node.js Memory Limits..."
$env:NODE_OPTIONS = "--max-old-space-size=4096 --optimize-for-size"

# 5. Erstelle .nvmrc für Node Version
Write-Host "Erstelle .nvmrc..."
"18.19.0" | Out-File -FilePath ".nvmrc" -Encoding utf8

Write-Host "✓ Windows-Optimierungen abgeschlossen!" -ForegroundColor Green
Write-Host "Starte PowerShell als Administrator neu für alle Änderungen." -ForegroundColor Yellow