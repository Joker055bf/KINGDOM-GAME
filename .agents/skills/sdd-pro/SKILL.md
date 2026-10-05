---
name: sdd-pro
description: Specification-Driven Development (SDD_Pro) framework for managing features, User Stories, deterministic quality gates, and code generation. Use this skill when the user runs /sdd-*, /feat-*, /us-*, /dev-*, /qa-*, or requests specification-driven engineering workflows.
---

# SDD_Pro Skill for Antigravity

This skill implements the **Specification-Driven Development (SDD_Pro)** framework inside Google Antigravity. It enforces deterministic gates, strict requirements traceability, and structured execution.

## Core Directives

1. **Never generate code directly from unstructured prompts.**
   Always follow the lineage:
   `FEAT -> User Stories -> Technical Plans -> Code -> 5 Reviewers`

2. **File Structure**:
   - Specifications: `workspace/feats/{n}-{FeatName}.md`
   - User Stories: `workspace/us/{n}-{m}-{Name}.md`
   - Plans: `workspace/plans/{n}-{m}-{Name}.{back|front}.md`
   - UI Mockups: `workspace/ui/{n}-{m}-{Name}.html`
   - Stack Config: `workspace/stack/stack.md`
   - Source Code: Workspace / Project directory

3. **Stable Identifiers**:
   Ensure all FEAT files declare stable IDs:
   - `SFD-N`: System Functional Details
   - `FD-N`: Functional Deliverables
   - `BR-N`: Business Rules
   - `AC-N`: Acceptance Criteria

## Commands & Workflows

### 1. `/feat-generate <Name>`
When the user asks to generate a feature:
1. Ask 3 to 5 elicitation questions (goals, inputs, business rules, edge cases).
2. Generate `workspace/feats/{n}-{Name}.md` using the standard SDD template.
3. Include sections: Objectives, Out of Scope, Dependencies, Functional Needs, Acceptance Criteria (`AC-1`, `AC-2`, ...).

### 2. `/us-generate <n>`
For a given feature `{n}`:
1. Parse `workspace/feats/{n}-{FeatName}.md`.
2. Break it down into independent, testable User Stories: `workspace/us/{n}-{m}-{Name}.md`.
3. Explicitly link each US to the corresponding acceptance criteria (`AC-N`).

### 3. `/feat-validate <n>`
Perform the readiness check:
- Check that all `AC-N` are covered by at least one User Story.
- Ensure naming conventions are strictly adhered to.
- Return a clear GO / NO-GO report.

### 4. `/dev-plan <n>`
Generate the technical plan for each US:
- Specify modified files, added methods, data schemas, and API contracts.
- Save to `workspace/plans/{n}-{m}-{Name}.{back|front}.md`.

### 5. `/dev-run <n>` or `/sdd-full <n>`
Execute the implementation:
1. Validate specifications and plans.
2. Modify or write code conforming strictly to the plan.
3. Do not introduce extraneous features outside the `AC-N` criteria.
4. Run review audit.

### 6. `/sdd-review <n>`
Audit the resulting changes through 5 specialized review perspectives:
1. **Code Reviewer**: Quality, readability, performance, style.
2. **Security Reviewer**: Vulnerabilities, input validation, permission checks.
3. **Spec Compliance**: Verification against each acceptance criteria `AC-N`.
4. **Architecture Reviewer**: Adherence to project architecture and layering.
5. **Adversarial Reviewer**: Edge cases, failure modes, race conditions.

### 7. `/sdd-status`
Display the current state of features, stories, and completion status across `workspace/`.
