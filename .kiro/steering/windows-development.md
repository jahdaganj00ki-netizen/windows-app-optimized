---
inclusion: always
---

# Windows-Entwicklung auf schwacher Hardware

## Hardware-Optimierungen
- **CPU**: Intel i3-2310M (2 Kerne, 4 Threads @ 2.1 GHz)
- **RAM**: 8 GB DDR3 - sparsam verwenden
- **GPU**: Intel HD Graphics 3000 - keine GPU-intensive Builds
- **Storage**: SSD - schnelle I/O, aber begrenzt

## Build-Strategien
1. **Online-Builds bevorzugen**: GitHub Actions, Vercel, Netlify
2. **Lokale Builds minimieren**: Nur für Testing/Debugging
3. **Incremental Builds**: Nur geänderte Dateien kompilieren
4. **Cache nutzen**: npm/yarn cache, build artifacts

## Empfohlene Tools
- **Node.js**: LTS Version (weniger RAM-Verbrauch)
- **Package Manager**: npm (weniger Overhead als yarn)
- **Build Tools**: Vite (schneller als Webpack)
- **Editor**: VS Code mit minimalen Extensions

## Ressourcen-Management
- Maximal 2-3 parallele Prozesse
- Build-Prozesse in Hintergrund
- Regelmäßige Garbage Collection
- Swap-Datei optimieren

## Windows-spezifische Optimierungen
- PowerShell Core statt Windows PowerShell
- Windows Defender Ausnahmen für Entwicklungsordner
- Superfetch/Prefetch deaktivieren für SSD
- Visual Studio Build Tools (minimal installation)