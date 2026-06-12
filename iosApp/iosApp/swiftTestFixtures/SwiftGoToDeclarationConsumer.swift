//
// Created by Yulia.Nizienko on 11/6/26.
//

import Foundation
import Shared

func consumeExistingSwiftGoToDeclaration() {

    /*
        • Type navigation:
          Go to declaration from: GoToDeclarationSourceType
          Expect: struct GoToDeclarationSourceType.
        • Initializer navigation:
          Go to declaration from: GoToDeclarationSourceType(declarationMemberValue:)
          Expect: init(declarationMemberValue:).
        • Member value navigation:
          Go to declaration from: source.declarationMemberValue
          Expect: let declarationMemberValue.
        • Member function navigation:
          Go to declaration from: source.declarationMemberFunction()
          Expect: func declarationMemberFunction().
        • Enum case navigation:
          Go to declaration from: GoToDeclarationSourceMode.declarationReady
          Expect: case declarationReady.
        • Top-level value navigation:
          Go to declaration from: declarationTopLevelValue
          Expect: let declarationTopLevelValue.
        • Top-level function navigation:
          Go to declaration from: declarationTopLevelFunction()
          Expect: func declarationTopLevelFunction().
    */

    let source = GoToDeclarationSourceType()
    let initializedSource = GoToDeclarationSourceType(declarationMemberValue: "initialized")
    _ = source.declarationMemberValue
    _ = source.declarationMemberFunction()
    _ = initializedSource

    let mode = GoToDeclarationSourceMode.declarationReady
    _ = mode

    _ = declarationTopLevelValue
    _ = declarationTopLevelFunction()
}

func consumeExistingSwiftModuleGoToDeclaration() {

    /*
        • Foundation type navigation:
          Go to declaration from: DateFormatter
          Expect: DateFormatter module declaration.
        • Foundation property navigation:
          Go to declaration from: formatter.dateFormat
          Expect: dateFormat module declaration.
        • Foundation method navigation:
          Go to declaration from: formatter.string(from:)
          Expect: string(from:) module declaration.
        • Swift stdlib type navigation:
          Go to declaration from: Dictionary
          Expect: Dictionary stdlib declaration.
    */

    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    _ = formatter.string(from: Date())

    let values: Dictionary<String, Int> = ["ready": 1]
    _ = values
}

func consumeAddedSwiftGoToDeclaration() {

    /*
        • Test setup:
          Create AddedSwiftGoToDeclarationSource.swift after project open.
        • Type navigation:
          Go to declaration from: AddedGoToDeclarationSourceType
          Expect: struct AddedGoToDeclarationSourceType.
        • Initializer navigation:
          Go to declaration from: AddedGoToDeclarationSourceType(addedDeclarationMemberValue:)
          Expect: init(addedDeclarationMemberValue:).
        • Member value navigation:
          Go to declaration from: source.addedDeclarationMemberValue
          Expect: let addedDeclarationMemberValue.
        • Member function navigation:
          Go to declaration from: source.addedDeclarationMemberFunction()
          Expect: func addedDeclarationMemberFunction().
        • Enum case navigation:
          Go to declaration from: AddedGoToDeclarationSourceMode.addedDeclarationReady
          Expect: case addedDeclarationReady.
        • Top-level value navigation:
          Go to declaration from: addedDeclarationTopLevelValue
          Expect: let addedDeclarationTopLevelValue.
        • Top-level function navigation:
          Go to declaration from: addedDeclarationTopLevelFunction()
          Expect: func addedDeclarationTopLevelFunction().
    */

}

func consumeExistingKotlinGoToDeclaration() {

    /*
        • File facade navigation:
          Go to declaration from: KotlinGoToDeclarationSourceKt
          Expect: KotlinGoToDeclarationSource.kt.
        • Top-level function navigation:
          Go to declaration from: existingKotlinDeclarationTopLevelFunction
          Expect: fun existingKotlinDeclarationTopLevelFunction().
        • Type navigation:
          Go to declaration from: ExistingKotlinGoToDeclarationSourceType
          Expect: class ExistingKotlinGoToDeclarationSourceType.
        • Member value navigation:
          Go to declaration from: source.existingKotlinDeclarationMemberValue
          Expect: val existingKotlinDeclarationMemberValue.
        • Member function navigation:
          Go to declaration from: source.existingKotlinDeclarationMemberFunction()
          Expect: fun existingKotlinDeclarationMemberFunction().
        • Interface type navigation:
          Go to declaration from: ExistingKotlinGoToDeclarationSourceContract
          Expect: interface ExistingKotlinGoToDeclarationSourceContract.
        • Interface member navigation:
          Go to declaration from: contract.existingKotlinDeclarationContractFunction()
          Expect: fun existingKotlinDeclarationContractFunction().
        • Enum type navigation:
          Go to declaration from: ExistingKotlinGoToDeclarationSourceMode
          Expect: enum class ExistingKotlinGoToDeclarationSourceMode.
        • Enum case navigation:
          Go to declaration from: ExistingKotlinGoToDeclarationSourceMode.existingReady
          Expect: READY.
    */

    _ = KotlinGoToDeclarationSourceKt.existingKotlinDeclarationTopLevelFunction()

    let source = ExistingKotlinGoToDeclarationSourceType()
    _ = source.existingKotlinDeclarationMemberValue
    _ = source.existingKotlinDeclarationMemberFunction()

    let contract: ExistingKotlinGoToDeclarationSourceContract = source
    _ = contract.existingKotlinDeclarationContractFunction()

    let mode = ExistingKotlinGoToDeclarationSourceMode.ready
    _ = mode
}

func consumeAddedKotlinGoToDeclaration() {

    /*
        • Test setup:
          Create AddedKotlinGoToDeclarationSource.kt after project open.
        • File facade navigation:
          Go to declaration from: AddedKotlinGoToDeclarationSourceKt
          Expect: AddedKotlinGoToDeclarationSource.kt.
        • Top-level function navigation:
          Go to declaration from: addedKotlinDeclarationTopLevelFunction
          Expect: fun addedKotlinDeclarationTopLevelFunction().
        • Type navigation:
          Go to declaration from: AddedKotlinGoToDeclarationSourceType
          Expect: class AddedKotlinGoToDeclarationSourceType.
        • Member value navigation:
          Go to declaration from: source.addedKotlinDeclarationMemberValue
          Expect: val addedKotlinDeclarationMemberValue.
        • Member function navigation:
          Go to declaration from: source.addedKotlinDeclarationMemberFunction()
          Expect: fun addedKotlinDeclarationMemberFunction().
        • Interface type navigation:
          Go to declaration from: AddedKotlinGoToDeclarationSourceContract
          Expect: interface AddedKotlinGoToDeclarationSourceContract.
        • Interface member navigation:
          Go to declaration from: contract.addedKotlinDeclarationContractFunction()
          Expect: fun addedKotlinDeclarationContractFunction().
        • Enum type navigation:
          Go to declaration from: AddedKotlinGoToDeclarationSourceMode
          Expect: enum class AddedKotlinGoToDeclarationSourceMode.
        • Enum case navigation:
          Go to declaration from: AddedKotlinGoToDeclarationSourceMode.addedReady
          Expect: READY.
    */

}
