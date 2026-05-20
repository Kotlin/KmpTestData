# KmpTestData

KmpTestData is a Kotlin Multiplatform test-data project for IntelliJ IDEA KMP UI and acceptance tests.

## Current Fixtures

The current fixture set covers Swift super-gutter navigation from Swift implementations to Kotlin and Swift super declarations.
The multiple-choice fixture uses one Swift method that satisfies both a Kotlin-exported protocol (`Repository`) and a native Swift protocol (`SwiftRepositoryContract`), so the gutter opens a dropdown where the test chooses the target declaration.

| Case | Source file | Gutter anchor | Expected destination | Chooser item |
| --- | --- | --- | --- | --- |
| Kotlin interface implementation | `iosApp/iosApp/shared/SwiftRepository.swift` | `func fetchData(id: String) -> String` | `shared/src/commonMain/kotlin/org/jetbrains/kmptestdata/shared/Repository.kt`, `fun fetchData(id: String): String` | none |
| Dropdown to Kotlin protocol declaration | `iosApp/iosApp/shared/SwiftRepositoryMultipleChoice.swift` | `func fetchData(id: String) -> String` | `shared/src/commonMain/kotlin/org/jetbrains/kmptestdata/shared/Repository.kt`, `fun fetchData(id: String): String` | `fetchData(String)` |
| Dropdown to Swift protocol declaration | `iosApp/iosApp/shared/SwiftRepositoryMultipleChoice.swift` | `func fetchData(id: String) -> String` | `iosApp/iosApp/shared/SwiftRepository.swift`, `func fetchData(id: String) -> String` | `SwiftRepositoryContract` |

The Kotlin fixture declaration is in `shared/src/commonMain/kotlin/org/jetbrains/kmptestdata/shared/Repository.kt`.
The Swift fixtures are in `iosApp/iosApp/shared/SwiftRepository.swift` and `iosApp/iosApp/shared/SwiftRepositoryMultipleChoice.swift`.

## Maintenance Rules

- Keep fixture files small and explicit. Add only declarations that are covered by UI tests or planned near-term tests.
- When a fixture changes, update the corresponding UI test data and this README in the same change.
- Prefer adding new focused files for new scenario groups over expanding existing files with unrelated declarations.

## Running

- Android app: `./gradlew :androidApp:assembleDebug`
- Shared Android host tests: `./gradlew :shared:testAndroidHostTest`
- iOS framework compilation: `./gradlew :shared:compileKotlinIosSimulatorArm64`
- iOS app: open `iosApp` in Xcode and run the `iosApp` scheme.
