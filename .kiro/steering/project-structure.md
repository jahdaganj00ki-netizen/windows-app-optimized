---
inclusion: always
---

# Optimierte Projektstruktur für Windows-Programme

## Grundstruktur
```
project/
├── src/                    # Quellcode
├── build/                  # Lokale Build-Artefakte (gitignore)
├── dist/                   # Distribution (Online-Build)
├── tests/                  # Unit/Integration Tests
├── docs/                   # Dokumentation
├── .github/workflows/      # GitHub Actions (Online-Builds)
├── scripts/               # Build/Deploy Scripts
└── tools/                 # Entwicklungstools
```

## Windows-spezifische Dateien
- `app.manifest` - Windows-Berechtigungen
- `app.ico` - Anwendungsicon
- `version.rc` - Versionsinformationen
- `installer.nsi` - NSIS Installer Script

## Build-Konfiguration
- Lokale Builds nur für Development
- Production Builds über GitHub Actions
- Automatische Releases mit Semantic Versioning
- Cross-Platform Builds in der Cloud

## Performance-Optimierungen
- Lazy Loading für große Module
- Tree Shaking für kleinere Bundles
- Code Splitting für bessere Ladezeiten
- Minimale Dependencies