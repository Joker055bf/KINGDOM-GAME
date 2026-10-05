# Project Stack Configuration — Kingdom_Guard0021

## 1. General Project Information
- **AppName**: Kingdom_Guard0021
- **Domain**: Android Game Modding / Smali Reverse Engineering & Build Automation
- **Target Repository**: https://github.com/Joker055bf/KINGDOM-GAME
- **SDD Framework Version**: v7.0.0 GA
- **Active Harness**: Google Antigravity

---

## 2. Technical Stack & Environment
- **Platform**: Android (APK decompiled via Apktool)
- **Core Languages**: Smali (Dalvik bytecode), Kotlin/Java libraries, Batch scripts
- **Classes**: `smali`, `smali_classes2`, `smali_classes3`, `smali_classes4`, `smali_classes5`, `smali_classes6`, `smali_classes7`
- **Assets & Resources**: `assets/AssetBundles`, `res/`, `AndroidManifest.xml`
- **Build Pipeline**:
  - Rebuild: `1_REBUILD_APK.bat`
  - Sign: `2_SIGN_APK.bat`
  - Automated Local Build: `BUILD_FULL_GAME_LOCAL.bat`
  - GitHub Sync: `PUSH_TO_GITHUB.bat`

---

## 3. Governance & Quality Gates
- **Traceability**: All features and modifications must have a corresponding FEAT in `workspace/feats/`
- **Anti-Drift**: Modifications must stay within the scope defined in `AC-N` criteria
- **Reviewers**: Mandatory 5-perspective review for critical Smali changes
