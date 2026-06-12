# KmpTestData

KmpTestData is a Kotlin Multiplatform test-data project for IntelliJ IDEA KMP UI and acceptance tests.

## Current Fixtures

### Swift Completion

The Swift completion fixtures cover existing symbols available on project opening and edit-time anchors for symbols added after project opening.
The consumer file intentionally keeps executable bodies empty; UI tests type code into these functions and assert completion lookup items.

| Case | Consumer anchor | Source file | Typed prefix/code | Expected lookup items |
| --- | --- | --- | --- | --- |
| Existing Swift type/enum | `consumeExistingSwiftCompletion()` | `iosApp/iosApp/swiftTestFixtures/SwiftCompletionSource.swift` | `ExistingSource` | `ExistingSourceType`, `ExistingSourceMode` |
| Existing Swift top-level value/function | `consumeExistingSwiftCompletion()` | `iosApp/iosApp/swiftTestFixtures/SwiftCompletionSource.swift` | `existingTopLevel` | `existingTopLevelValue`, `existingTopLevelFunction` |
| Existing Swift member | `consumeExistingSwiftCompletion()` | `iosApp/iosApp/swiftTestFixtures/SwiftCompletionSource.swift` | `let source = ExistingSourceType()`, `source.existingMember` | `existingMemberValue`, `existingMemberFunction()` |
| Existing Swift enum case | `consumeExistingSwiftCompletion()` | `iosApp/iosApp/swiftTestFixtures/SwiftCompletionSource.swift` | `let mode: ExistingSourceMode = .existing` | `existingReady`, `existingPaused` |
| Foundation type | `consumeExistingSwiftModuleCompletion()` | `Foundation` import in `SwiftCompletionConsumer.swift` | `DateForm` | `DateFormatter` |
| Swift stdlib type | `consumeExistingSwiftModuleCompletion()` | Swift standard library | `Dictio` | `Dictionary` |
| Swift keyword | `consumeExistingSwiftModuleCompletion()` | Swift language keywords | `fun` | `func` |
| Added Swift type/enum | `consumeAddedSwiftCompletion()` | Runtime-created `iosApp/iosApp/swiftTestFixtures/AddedSwiftCompletionSource.swift` | `AddedSource` | `AddedSourceType`, `AddedSourceMode` |
| Added Swift top-level value/function | `consumeAddedSwiftCompletion()` | Runtime-created `AddedSwiftCompletionSource.swift` | `addedTopLevel` | `addedTopLevelValue`, `addedTopLevelFunction` |
| Added Swift member | `consumeAddedSwiftCompletion()` | Runtime-created `AddedSwiftCompletionSource.swift` | `let source = AddedSourceType()`, `source.addedMember` | `addedMemberValue`, `addedMemberFunction()` |
| Added Swift enum case | `consumeAddedSwiftCompletion()` | Runtime-created `AddedSwiftCompletionSource.swift` | `let mode: AddedSourceMode = .added` | `addedReady`, `addedPaused` |

### Swift ↔ Kotlin Completion

The cross-language completion fixtures cover Kotlin declarations exported to Swift from the `Shared` framework.
Existing Kotlin declarations live under `iosMain` because these scenarios target Swift/iOS export behavior.

| Case | Consumer anchor | Source file | Typed prefix/code | Expected lookup items |
| --- | --- | --- | --- | --- |
| Existing Kotlin file facade | `consumeExistingKotlinCompletion()` | `shared/src/iosMain/kotlin/org/jetbrains/kmptestdata/kotlinTestFixtures/KotlinCompletionSource.kt` | `KotlinCompletionSource` | `KotlinCompletionSourceKt` |
| Existing Kotlin type/interface/enum | `consumeExistingKotlinCompletion()` | `KotlinCompletionSource.kt` | `ExistingKotlinSource` | `ExistingKotlinSourceType`, `ExistingKotlinSourceContract`, `ExistingKotlinSourceMode` |
| Existing Kotlin class member | `consumeExistingKotlinCompletion()` | `KotlinCompletionSource.kt` | `let source = ExistingKotlinSourceType()`, `source.existingKotlinMember` | `existingKotlinMemberValue`, `existingKotlinMemberFunction()` |
| Existing Kotlin interface member | `consumeExistingKotlinCompletion()` | `KotlinCompletionSource.kt` | `let source: ExistingKotlinSourceContract`, `source.existingKotlinContract` | `existingKotlinContractFunction()` |
| Existing Kotlin enum case | `consumeExistingKotlinCompletion()` | `KotlinCompletionSource.kt` | `let mode: ExistingKotlinSourceMode = .existing` | `existingReady`, `existingPaused` |
| Existing Kotlin top-level function | `consumeExistingKotlinCompletion()` | `KotlinCompletionSource.kt` | `KotlinCompletionSourceKt.existingKotlinTopLevel` | `existingKotlinTopLevelFunction()` |
| Added Kotlin file facade | `consumeAddedKotlinCompletion()` | Runtime-created `shared/src/iosMain/kotlin/org/jetbrains/kmptestdata/kotlinTestFixtures/AddedKotlinCompletionSource.kt` | `AddedKotlinCompletionSource` | `AddedKotlinCompletionSourceKt` |
| Added Kotlin type/interface/enum | `consumeAddedKotlinCompletion()` | Runtime-created `AddedKotlinCompletionSource.kt` | `AddedKotlinSource` | `AddedKotlinSourceType`, `AddedKotlinSourceContract`, `AddedKotlinSourceMode` |
| Added Kotlin class member | `consumeAddedKotlinCompletion()` | Runtime-created `AddedKotlinCompletionSource.kt` | `let source = AddedKotlinSourceType()`, `source.addedKotlinMember` | `addedKotlinMemberValue`, `addedKotlinMemberFunction()` |
| Added Kotlin interface member | `consumeAddedKotlinCompletion()` | Runtime-created `AddedKotlinCompletionSource.kt` | `let source: AddedKotlinSourceContract`, `source.addedKotlinContract` | `addedKotlinContractFunction()` |
| Added Kotlin enum case | `consumeAddedKotlinCompletion()` | Runtime-created `AddedKotlinCompletionSource.kt` | `let mode: AddedKotlinSourceMode = .added` | `addedReady`, `addedPaused` |
| Added Kotlin top-level function | `consumeAddedKotlinCompletion()` | Runtime-created `AddedKotlinCompletionSource.kt` | `AddedKotlinCompletionSourceKt.addedKotlinTopLevel` | `addedKotlinTopLevelFunction()` |

### Swift Go To Declaration Navigation

The Swift Go To Declaration fixtures cover navigation from Swift usage sites to user-defined Swift declarations, Swift module declarations, Kotlin declarations exported to Swift, and edit-time anchors for symbols added after project opening.
For Swift module symbols, tests should assert the resolved declaration name instead of a physical SDK file path.

| Case | Consumer anchor | Source file | Usage anchor | Expected destination |
| --- | --- | --- | --- | --- |
| Existing Swift type | `consumeExistingSwiftGoToDeclaration()` | `iosApp/iosApp/swiftTestFixtures/SwiftGoToDeclarationSource.swift` | `GoToDeclarationSourceType` | `struct GoToDeclarationSourceType` |
| Existing Swift initializer | `consumeExistingSwiftGoToDeclaration()` | `SwiftGoToDeclarationSource.swift` | `GoToDeclarationSourceType(declarationMemberValue:)` | `init(declarationMemberValue:)` |
| Existing Swift member value | `consumeExistingSwiftGoToDeclaration()` | `SwiftGoToDeclarationSource.swift` | `source.declarationMemberValue` | `let declarationMemberValue` |
| Existing Swift member function | `consumeExistingSwiftGoToDeclaration()` | `SwiftGoToDeclarationSource.swift` | `source.declarationMemberFunction()` | `func declarationMemberFunction()` |
| Existing Swift enum case | `consumeExistingSwiftGoToDeclaration()` | `SwiftGoToDeclarationSource.swift` | `GoToDeclarationSourceMode.declarationReady` | `case declarationReady` |
| Existing Swift top-level value | `consumeExistingSwiftGoToDeclaration()` | `SwiftGoToDeclarationSource.swift` | `declarationTopLevelValue` | `let declarationTopLevelValue` |
| Existing Swift top-level function | `consumeExistingSwiftGoToDeclaration()` | `SwiftGoToDeclarationSource.swift` | `declarationTopLevelFunction()` | `func declarationTopLevelFunction()` |
| Foundation type | `consumeExistingSwiftModuleGoToDeclaration()` | `Foundation` import in `SwiftGoToDeclarationConsumer.swift` | `DateFormatter` | `DateFormatter` module declaration |
| Foundation property | `consumeExistingSwiftModuleGoToDeclaration()` | `Foundation` import in `SwiftGoToDeclarationConsumer.swift` | `formatter.dateFormat` | `dateFormat` module declaration |
| Foundation method | `consumeExistingSwiftModuleGoToDeclaration()` | `Foundation` import in `SwiftGoToDeclarationConsumer.swift` | `formatter.string(from:)` | `string(from:)` module declaration |
| Swift stdlib type | `consumeExistingSwiftModuleGoToDeclaration()` | Swift standard library | `Dictionary` | `Dictionary` stdlib declaration |
| Added Swift type | `consumeAddedSwiftGoToDeclaration()` | Runtime-created `iosApp/iosApp/swiftTestFixtures/AddedSwiftGoToDeclarationSource.swift` | `AddedGoToDeclarationSourceType` | `struct AddedGoToDeclarationSourceType` |
| Added Swift initializer | `consumeAddedSwiftGoToDeclaration()` | Runtime-created `AddedSwiftGoToDeclarationSource.swift` | `AddedGoToDeclarationSourceType(addedDeclarationMemberValue:)` | `init(addedDeclarationMemberValue:)` |
| Added Swift member value | `consumeAddedSwiftGoToDeclaration()` | Runtime-created `AddedSwiftGoToDeclarationSource.swift` | `source.addedDeclarationMemberValue` | `let addedDeclarationMemberValue` |
| Added Swift member function | `consumeAddedSwiftGoToDeclaration()` | Runtime-created `AddedSwiftGoToDeclarationSource.swift` | `source.addedDeclarationMemberFunction()` | `func addedDeclarationMemberFunction()` |
| Added Swift enum case | `consumeAddedSwiftGoToDeclaration()` | Runtime-created `AddedSwiftGoToDeclarationSource.swift` | `AddedGoToDeclarationSourceMode.addedDeclarationReady` | `case addedDeclarationReady` |
| Added Swift top-level value | `consumeAddedSwiftGoToDeclaration()` | Runtime-created `AddedSwiftGoToDeclarationSource.swift` | `addedDeclarationTopLevelValue` | `let addedDeclarationTopLevelValue` |
| Added Swift top-level function | `consumeAddedSwiftGoToDeclaration()` | Runtime-created `AddedSwiftGoToDeclarationSource.swift` | `addedDeclarationTopLevelFunction()` | `func addedDeclarationTopLevelFunction()` |
| Existing Kotlin file facade | `consumeExistingKotlinGoToDeclaration()` | `shared/src/iosMain/kotlin/org/jetbrains/kmptestdata/kotlinTestFixtures/KotlinGoToDeclarationSource.kt` | `KotlinGoToDeclarationSourceKt` | `KotlinGoToDeclarationSource.kt` |
| Existing Kotlin top-level function | `consumeExistingKotlinGoToDeclaration()` | `KotlinGoToDeclarationSource.kt` | `KotlinGoToDeclarationSourceKt.existingKotlinDeclarationTopLevelFunction()` | `fun existingKotlinDeclarationTopLevelFunction()` |
| Existing Kotlin class | `consumeExistingKotlinGoToDeclaration()` | `KotlinGoToDeclarationSource.kt` | `ExistingKotlinGoToDeclarationSourceType` | `class ExistingKotlinGoToDeclarationSourceType` |
| Existing Kotlin member value | `consumeExistingKotlinGoToDeclaration()` | `KotlinGoToDeclarationSource.kt` | `source.existingKotlinDeclarationMemberValue` | `val existingKotlinDeclarationMemberValue` |
| Existing Kotlin member function | `consumeExistingKotlinGoToDeclaration()` | `KotlinGoToDeclarationSource.kt` | `source.existingKotlinDeclarationMemberFunction()` | `fun existingKotlinDeclarationMemberFunction()` |
| Existing Kotlin interface | `consumeExistingKotlinGoToDeclaration()` | `KotlinGoToDeclarationSource.kt` | `ExistingKotlinGoToDeclarationSourceContract` | `interface ExistingKotlinGoToDeclarationSourceContract` |
| Existing Kotlin interface member | `consumeExistingKotlinGoToDeclaration()` | `KotlinGoToDeclarationSource.kt` | `contract.existingKotlinDeclarationContractFunction()` | `fun existingKotlinDeclarationContractFunction()` |
| Existing Kotlin enum type | `consumeExistingKotlinGoToDeclaration()` | `KotlinGoToDeclarationSource.kt` | `ExistingKotlinGoToDeclarationSourceMode` | `enum class ExistingKotlinGoToDeclarationSourceMode` |
| Existing Kotlin enum case | `consumeExistingKotlinGoToDeclaration()` | `KotlinGoToDeclarationSource.kt` | `ExistingKotlinGoToDeclarationSourceMode.existingReady` | `READY` |
| Added Kotlin file facade | `consumeAddedKotlinGoToDeclaration()` | Runtime-created `shared/src/iosMain/kotlin/org/jetbrains/kmptestdata/kotlinTestFixtures/AddedKotlinGoToDeclarationSource.kt` | `AddedKotlinGoToDeclarationSourceKt` | `AddedKotlinGoToDeclarationSource.kt` |
| Added Kotlin top-level function | `consumeAddedKotlinGoToDeclaration()` | Runtime-created `AddedKotlinGoToDeclarationSource.kt` | `AddedKotlinGoToDeclarationSourceKt.addedKotlinDeclarationTopLevelFunction()` | `fun addedKotlinDeclarationTopLevelFunction()` |
| Added Kotlin class | `consumeAddedKotlinGoToDeclaration()` | Runtime-created `AddedKotlinGoToDeclarationSource.kt` | `AddedKotlinGoToDeclarationSourceType` | `class AddedKotlinGoToDeclarationSourceType` |
| Added Kotlin member value | `consumeAddedKotlinGoToDeclaration()` | Runtime-created `AddedKotlinGoToDeclarationSource.kt` | `source.addedKotlinDeclarationMemberValue` | `val addedKotlinDeclarationMemberValue` |
| Added Kotlin member function | `consumeAddedKotlinGoToDeclaration()` | Runtime-created `AddedKotlinGoToDeclarationSource.kt` | `source.addedKotlinDeclarationMemberFunction()` | `fun addedKotlinDeclarationMemberFunction()` |
| Added Kotlin interface | `consumeAddedKotlinGoToDeclaration()` | Runtime-created `AddedKotlinGoToDeclarationSource.kt` | `AddedKotlinGoToDeclarationSourceContract` | `interface AddedKotlinGoToDeclarationSourceContract` |
| Added Kotlin interface member | `consumeAddedKotlinGoToDeclaration()` | Runtime-created `AddedKotlinGoToDeclarationSource.kt` | `contract.addedKotlinDeclarationContractFunction()` | `fun addedKotlinDeclarationContractFunction()` |
| Added Kotlin enum type | `consumeAddedKotlinGoToDeclaration()` | Runtime-created `AddedKotlinGoToDeclarationSource.kt` | `AddedKotlinGoToDeclarationSourceMode` | `enum class AddedKotlinGoToDeclarationSourceMode` |
| Added Kotlin enum case | `consumeAddedKotlinGoToDeclaration()` | Runtime-created `AddedKotlinGoToDeclarationSource.kt` | `AddedKotlinGoToDeclarationSourceMode.addedReady` | `READY` |

### Swift Super-Gutter Navigation

The current fixture set covers Swift super-gutter navigation from Swift implementations to Kotlin and Swift super declarations.
The multiple-choice fixture uses one Swift method that satisfies both a Kotlin-exported protocol (`Repository`) and a native Swift protocol (`SwiftRepositoryContract`), so the gutter opens a dropdown where the test chooses the target declaration.

| Case | Source file | Gutter anchor | Expected destination | Chooser item |
| --- | --- | --- | --- | --- |
| Kotlin interface implementation | `iosApp/iosApp/swiftTestFixtures/SwiftRepository.swift` | `func fetchData(id: String) -> String` | `shared/src/commonMain/kotlin/org/jetbrains/kmptestdata/shared/Repository.kt`, `fun fetchData(id: String): String` | none |
| Dropdown to Kotlin protocol declaration | `iosApp/iosApp/swiftTestFixtures/SwiftRepositoryMultipleChoice.swift` | `func fetchData(id: String) -> String` | `shared/src/commonMain/kotlin/org/jetbrains/kmptestdata/shared/Repository.kt`, `fun fetchData(id: String): String` | `fetchData(String)` |
| Dropdown to Swift protocol declaration | `iosApp/iosApp/swiftTestFixtures/SwiftRepositoryMultipleChoice.swift` | `func fetchData(id: String) -> String` | `iosApp/iosApp/swiftTestFixtures/SwiftRepository.swift`, `func fetchData(id: String) -> String` | `SwiftRepositoryContract` |

The Kotlin fixture declaration is in `shared/src/commonMain/kotlin/org/jetbrains/kmptestdata/shared/Repository.kt`.
The Swift super-gutter fixtures are in `iosApp/iosApp/swiftTestFixtures/SwiftRepository.swift` and `iosApp/iosApp/swiftTestFixtures/SwiftRepositoryMultipleChoice.swift`.

## Maintenance Rules

- Keep fixture files small and explicit. Add only declarations that are covered by UI tests or planned near-term tests.
- When a fixture changes, update the corresponding UI test data and this README in the same change.
- Prefer adding new focused files for new scenario groups over expanding existing files with unrelated declarations.

## Running

- Android app: `./gradlew :androidApp:assembleDebug`
- Shared Android host tests: `./gradlew :shared:testAndroidHostTest`
- iOS framework compilation: `./gradlew :shared:compileKotlinIosSimulatorArm64`
- iOS app: open `iosApp` in Xcode and run the `iosApp` scheme.
