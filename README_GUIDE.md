# دليل تجميع ولعبة Kingdom Guard ورفعها إلى GitHub

مستودعك المستهدف على GitHub:
👉 **https://github.com/Joker055bf/KINGDOM-GAME**

---

## 🛠️ الخيار الأول: البناء والتجميع محلياً على جهازك بنقرة واحدة

1. اضغط مرتين على الملف: [`BUILD_FULL_GAME_LOCAL.bat`](file:///c:/Users/baslo/Desktop/KINGDOM%20GAME/66/%E2%80%8F%E2%80%8FKingdom_Guard0021/BUILD_FULL_GAME_LOCAL.bat).
2. سيقوم السكريبت تلقائياً بـ:
   - العثور على `apktool.jar` وتخصيص 4 جيجابايت من الذاكرة (RAM).
   - تجميع كافة ملفات الـ Smali (المجلدات من `smali` إلى `smali_classes7`).
   - إنشاء ملف الـ APK وتوقيعه تلقائياً بمفتاح تصحيح (`debug.keystore`).
   - إخراج ملف التثبيت النهائي: **`Kingdom_Guard_Signed.apk`**.

---

## 🚀 الخيار الثاني: الرفع التلقائي إلى GitHub والبناء السحابي

1. اضغط مرتين على الملف [`PUSH_TO_GITHUB.bat`](file:///c:/Users/baslo/Desktop/KINGDOM%20GAME/66/%E2%80%8F%E2%80%8FKingdom_Guard0021/PUSH_TO_GITHUB.bat).
2. سيقوم السكريبت برفع كافة الملفات وتتبع الملفات الكبيرة (Git LFS) تلقائياً إلى مستودعك: **`Joker055bf/KINGDOM-GAME`**.
3. ادخل على صفحة الـ Actions لتحميل ملف الـ APK الجاهز والموقع فور اكتمال البناء:
   👉 **https://github.com/Joker055bf/KINGDOM-GAME/actions**
