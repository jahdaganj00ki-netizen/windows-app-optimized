# Windows App Template

Optimierte Windows-Anwendung für schwache Hardware (Toshiba Satellite C660).

## Features
- ⚡ Vite-basiertes Build-System
- 🔧 Hardware-optimierte Konfiguration
- 🚀 Automatische Online-Builds via GitHub Actions
- 📦 Cross-Platform Windows Builds (x64/x86)
- 🧪 Integrierte Tests mit Vitest

## Hardware-Optimierungen
- Intel i3-2310M optimiert
- 8GB DDR3 RAM schonend
- SSD-optimierte Builds
- Minimale lokale Ressourcennutzung

## Entwicklung
```bash
npm install
npm run dev
```

## Build
Lokale Builds (nur für Testing):
```bash
npm run build:x64
npm run build:x86
```

Production Builds laufen automatisch über GitHub Actions bei Push zu `main`.

## System-Optimierung
Führe als Administrator aus:
```powershell
.\scripts\optimize-windows.ps1
```