# US-2: GitHub Repository LFS Synchronization and Cloud Build

- **ID**: `1-2-GitHub-LFS-Sync`
- **Parent FEAT**: `1-APK-Automation`
- **Status**: Completed

---

## 1. Description
As a developer, I want to synchronize the decompiled game project with GitHub using Git LFS, so that GitHub Actions can automatically compile and distribute the signed APK artifact in the cloud.

---

## 2. Technical Context
- Uses `PUSH_TO_GITHUB.bat`.
- Git LFS tracks binary files: `*.so`, `*.apk`, `*.jar`, `*.ab`.
- Remote target: `https://github.com/Joker055bf/KINGDOM-GAME.git`.
- GitHub Action: `.github/workflows/build-apk.yml`.

---

## 3. Acceptance Criteria Coverage
- Covers: `AC-3`
- Output: Trigger GitHub Actions workflow `Build Kingdom Guard APK`.
