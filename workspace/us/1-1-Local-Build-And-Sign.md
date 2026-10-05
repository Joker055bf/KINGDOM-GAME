# US-1: Local APK Rebuild and Signing

- **ID**: `1-1-Local-Build-And-Sign`
- **Parent FEAT**: `1-APK-Automation`
- **Status**: Completed

---

## 1. Description
As a developer/modder, I want to assemble all Smali classes and game assets into an installable Android APK locally, so that I can test modifications directly on a device or emulator.

---

## 2. Technical Context
- Uses `apktool.jar` (located in parent folder or project directory).
- Allocates `-Xmx4g` to avoid OutOfMemory on multi-dex game builds.
- Generates/uses `debug.keystore` to produce a valid, signed APK (`Kingdom_Guard_Signed.apk`).

---

## 3. Acceptance Criteria Coverage
- Covers: `AC-1`, `AC-2`
- Outputs: `Kingdom_Guard_Unsigned.apk`, `Kingdom_Guard_Signed.apk`
