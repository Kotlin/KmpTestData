# skill.md

## Purpose

This skill helps maintain `KmpTestData` for KMP Swift support E2E UI tests in IntelliJ IDEA and Android Studio.

The goal is NOT broad language coverage.

The goal is:
- minimal and stable test fixtures,
- high-signal IDE scenarios,
- deterministic E2E UI tests,
- explicit Swift and Swift ↔ Kotlin cross-language behavior.

This skill should help generate or modify test data used by UI tests for Swift support and Swift ↔ Kotlin cross-language IDE features.

Examples include, but are not limited to:
- completion,
- highlighting,
- gutters,
- go to declaration,
- find usages,
- create file,
- navigation,
- symbol resolution,
- refactorings,
- quick fixes,
- inspections,
- code generation,
- imports,
- rename,
- usages/search,
- project/module integration.

Feature lists in this skill are examples, not limitations.

If the requested IDE feature is not listed, still apply the same principles:
- minimal fixture,
- stable UI anchors,
- clear expected IDE behavior,
- Swift-only and Swift ↔ Kotlin evaluation,
- README update when test data changes.

---

# Core Principles

## 1. Optimize for E2E stability

All generated code must be optimized for:
- stable indexing,
- deterministic UI behavior,
- predictable symbol resolution,
- simple navigation targets,
- low ambiguity unless ambiguity is explicitly tested.

Avoid:
- unnecessary architecture,
- realistic app structure,
- large examples,
- unrelated declarations,
- generated noise.

---

## 2. Minimal fixture philosophy

Prefer:
- 1–3 tiny files,
- one focused scenario,
- one explicit IDE behavior,
- one stable assertion target.

Do NOT create:
- broad demo applications,
- many variants of the same feature,
- exhaustive language coverage.

The fixture should contain only code needed for the requested IDE behavior.

Examples of useful fixture elements:
- completion items,
- navigation targets,
- usages,
- gutter anchors,
- highlighting anchors,
- inspection/quick-fix anchors,
- refactoring anchors,
- generated-file targets,
- import/module-resolution anchors,
- cross-language declarations or usages.

Every symbol must exist for a reason.

---

## 3. Cross-language awareness

When a Swift-only scenario is requested, ALWAYS evaluate whether a Swift ↔ Kotlin cross-language variant should also be added.

Examples:
- Swift completion → also consider Kotlin declarations visible in Swift.
- Swift find usages → also consider usages crossing Swift/Kotlin boundary.
- Swift go to declaration → also consider navigation to Kotlin declarations.
- Swift gutters → also consider Swift → Kotlin inheritance/navigation gutters.
- Swift rename → also consider cross-language rename propagation.

Do NOT automatically generate cross-language fixtures if they add no IDE value.

But ALWAYS explicitly evaluate them.

---

# Workflow

Before generating code, ALWAYS produce a short plan.

Use this format:

```text
Feature under test:
IDE action under test:
Swift-only scenario:
Cross-language scenario:
Files to add/change:
Stable UI anchors:
Expected assertions:
Why this is minimal:
```

Only after the plan is accepted or logically complete should fixture code be generated.

---

# Naming Rules

Use:
- short,
- explicit,
- searchable,
- stable names.

Good:
- `CompletionSource`
- `CompletionConsumer`
- `CrossLanguageUsage`
- `SwiftNavigationTarget`
- `KotlinDeclarationTarget`

Bad:
- `Manager`
- `Helper`
- `MyClass`
- `DataProvider`
- `RepositoryImplFactory`

Symbol names should help UI tests locate targets reliably.

---

# File Organization Rules

Prefer:
- new focused files for new scenarios,
- isolated fixtures,
- minimal edits to existing fixtures.

Avoid:
- extending unrelated fixtures,
- mixing multiple IDE features in one file,
- large shared utility files.

Only modify existing fixtures if:
- the requested feature logically belongs there,
- or the fixture already represents the same IDE behavior.

---

# README Rules

When adding new fixtures:
- update README,
- document:
    - feature,
    - involved files,
    - IDE behavior,
    - important navigation anchors.

Keep README entries short and test-oriented.

---

# Stability Rules

Prefer:
- explicit imports,
- explicit type names,
- explicit inheritance.

Avoid:
- implicit inference if it affects IDE behavior,
- random ordering dependencies,
- unrelated symbols with similar names.

Do not rely on:
- flaky indexing order,
- unresolved references,
- accidental completion ranking.

---

# Existing Fixture Awareness

The repository already contains fixtures for:
- Swift cross-language super gutters UI tests in `iosApp/iosApp/swiftTestFixtures`.
- Swift completion UI tests in `iosApp/iosApp/swiftTestFixtures`.
- Kotlin declarations exported to Swift for completion UI tests in `shared/src/iosMain/kotlin/org/jetbrains/kmptestdata/kotlinTestFixtures`.

Do not duplicate existing super gutter scenarios unless:
- extending coverage meaningfully,
- or testing a different IDE behavior.

Prefer reusing patterns and naming conventions from existing fixtures.

For completion fixtures:
- keep consumer functions as stable edit anchors,
- describe probes with `Type:` and `Expect:` comments,
- do not pre-create symbols that are meant to test "added after project open" behavior,
- place Kotlin declarations that specifically test Swift/iOS export behavior under `iosMain`,
- verify lookup item presence, not ranking.

---

# Definition of Done

A generated fixture is complete only if:
- it is minimal,
- every symbol has a testing purpose,
- IDE behavior is obvious,
- navigation targets are stable,
- cross-language behavior was evaluated,
- README was updated,
- no unrelated complexity was added.

The ideal fixture is:
- tiny,
- explicit,
- deterministic,
- easy to debug in UI tests.
