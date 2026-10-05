# SDD_Pro — Specification-Driven Development (Antigravity Governance)

> Framework SDD v7.0.0 : FEAT → User Stories → Technical Plans → Code
> Multi-Harness Native Support: Antigravity / Gemini / Claude Code / Codex

---

## 1. مسار العمل والمنهجية (Workflow & Methodology)

يتبع إطار عمل **SDD_Pro** مساراً صارماً لمنع الانجراف البرمجي (Anti-Drift):
```
1. FEAT (مواصفات المتطلبات والأعمال) : workspace/feats/{n}-{FeatName}.md
   └─ 2. User Stories (قصص المستخدم بمعرفات ثابتة) : workspace/us/{n}-{m}-{Name}.md
        └─ 3. Plans (الخطط الفنية والتصميم المعماري) : workspace/plans/{n}-{m}-{Name}.{back|front}.md
             └─ 4. Code (تنفيذ الكود الملتزم بالمعايير) : workspace/src/ أو ملفات المشروع
                  └─ 5. Review & QA (مراجعة الجودة والحماية والأمان عبر 5 مراجعين)
```

---

## 2. اتفاقية التسمية الصارمة (Naming Conventions)

| النوع | المسار | الشرح |
|---|---|---|
| **FEAT** | `workspace/feats/{n}-{FeatName}.md` | ملف ميزات الأعمال (مثال: `1-Authentication.md`) |
| **User Story** | `workspace/us/{n}-{m}-{Name}.md` | قصة مستخدم بمعرف فريد (مثال: `1-1-User-Login.md`) |
| **Technical Plan** | `workspace/plans/{n}-{m}-{Name}.{back\|front}.md` | خطة فنية تنفيذية لكل قصة |
| **UI Mockup** | `workspace/ui/{n}-{m}-{Name}.html` | واجهات العرض الأولية (اختياري) |
| **Stack Config** | `workspace/stack/stack.md` | تعريف تقنيات وبيئة المشروع |

> **قاعدة نقدية:** لا يجوز تكرار اسم `{FeatName}` في `{Name}` الخاص بالقصص. يجب أن يكون اسم القصة يعبر عن وظيفة مميزة (Action + Object) مثل `1-1-User-Login.md` وليس `1-1-Authentication.md`.

---

## 3. المعرفات الثابتة في ملف الميزات (Stable IDs)

تحتوي كل FEAT على معرفات ثابتة لا يجوز إعادة ترتيبها تلقائياً:
* `SFD-N` : تفاصيل الوظائف العامة (System Functional Details)
* `FD-N` : المخرجات الوظيفية (Functional Deliverables)
* `BR-N` : قواعد الأعمال المحددة (Business Rules)
* `AC-N` : معايير القبول الصارمة (Acceptance Criteria)

---

## 4. قائمة الأوامر المتاحة (SDD Commands)

عند استدعاء أي من هذه الأوامر من قبل المستخدم، يتم تطبيق بروتوكول SDD_Pro فوراً:

### أوامر التخطيط والتوليد (Phase 1 & 2):
* `/feat-generate [FeatName]` : بدء جلسة استنباط وتوليد ملف FEAT جديد وسؤال المستخدم الأسئلة اللازمة.
* `/feat-validate {n}` : فحص توافق وصحة ملف FEAT والقصص وتغطية المعايير (Readiness Gate).
* `/us-generate {n}` : توليد قصص المستخدم من ملف FEAT محدد مع ربط معايير القبول AC.

### أوامر التنفيذ والتطوير (Phase 3 & 4):
* `/sdd-full {n}` : تشغيل دورة العمل الكاملة من FEAT وحتى الكود والمراجعة.
* `/sdd-poc {n}` : تشغيل مسار مبسط وسريع (POC) لتجربة الحل.
* `/dev-plan {n}` : إعداد الخطط الفنية لكل قصة مستخدم.
* `/dev-run {n}` : تنفيذ التعديلات البرمجية وفق الخطط المعتمدة.

### أوامر الجودة والمراجعة (Phase 5 & Audit):
* `/qa-generate {n}` : توليد وإجراء اختبارات الجودة والتغطية.
* `/sdd-review {n}` : إخضاع التغييرات لخمسة مراجعين افتراضيين:
  1. **Code Reviewer** (نظافة الكود والأداء)
  2. **Security Reviewer** (الأمان والثغرات)
  3. **Spec Compliance Reviewer** (مطابقة معايير AC-N)
  4. **Architecture Reviewer** (الالتزام بالبنية والمعايير)
  5. **Adversarial Reviewer** (اختبار السيناريوهات المعاكسة وحالات الخطأ)

### أوامر المراقبة والمساعدة (Status & Guidance):
* `/sdd-status [{n}]` : عرض حالة شجرة المشروع والميزات والقصص المنجزة.
* `/sdd-help ["question"]` : توجيه وإرشاد حول الخطوة التالية في التطوير.
* `/sdd-discover-stack` : فحص مستودع المشروع الحالي وتوليد `stack.md`.
