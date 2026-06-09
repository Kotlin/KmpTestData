//
// Created by Yulia.Nizienko on 27/5/26.
//

import Foundation
import Shared

func consumeExistingSwiftCompletion() {

    /*
        • Type completion:
          Type: ExistingSource
          Expect: ExistingSourceType, ExistingSourceMode.
        • Top-level value/function completion:
          Type: existingTopLevel
          Expect: existingTopLevelValue, existingTopLevelFunction.
        • Member completion:
          Type:
            let source = ExistingSourceType()
            source.existingMember
          Expect: existingMemberValue, existingMemberFunction().
        • Enum case completion:
          Type: let mode: ExistingSourceMode = .existing
          Expect: existingReady, existingPaused.
    */

}

func consumeExistingSwiftModuleCompletion() {

    /*
        • Foundation type completion:
          Type: DateForm
          Expect: DateFormatter.
        • Swift stdlib type completion:
          Type: Dictio
          Expect: Dictionary.
        • Swift keyword completion:
          Type: fun
          Expect: func.
    */

}

func consumeExistingKotlinCompletion() {

    /*
        • File facade completion:
          Type: KotlinCompletionSource
          Expect: KotlinCompletionSourceKt.
        • Type completion:
          Type: ExistingKotlinSource
          Expect: ExistingKotlinSourceType, ExistingKotlinSourceContract, ExistingKotlinSourceMode.
        • Member completion:
          Type:
            let source = ExistingKotlinSourceType()
            source.existingKotlinMember
          Expect: existingKotlinMemberValue, existingKotlinMemberFunction().
        • Interface member completion:
          Type:
            let source: ExistingKotlinSourceContract
            source.existingKotlinContract
          Expect: existingKotlinContractFunction().
        • Enum case completion:
          Type: let mode: ExistingKotlinSourceMode = .existing
          Expect: existingReady, existingPaused.
        • Top-level function completion:
          Type: KotlinCompletionSourceKt.existingKotlinTopLevel
          Expect: existingKotlinTopLevelFunction().
    */

}

func consumeAddedSwiftCompletion() {

    /*
        • Test setup:
          Create AddedSwiftCompletionSource.swift after project open.
        • Type completion:
          Type: AddedSource
          Expect: AddedSourceType, AddedSourceMode.
        • Top-level value/function completion:
          Type: addedTopLevel
          Expect: addedTopLevelValue, addedTopLevelFunction.
        • Member completion:
          Type:
            let source = AddedSourceType()
            source.addedMember
          Expect: addedMemberValue, addedMemberFunction().
        • Enum case completion:
          Type: let mode: AddedSourceMode = .added
          Expect: addedReady, addedPaused.
    */

}

func consumeAddedKotlinCompletion() {

    /*
        • Test setup:
          Create AddedKotlinCompletionSource.kt after project open.
        • File facade completion:
          Type: AddedKotlinCompletionSource
          Expect: AddedKotlinCompletionSourceKt.
        • Type completion:
          Type: AddedKotlinSource
          Expect: AddedKotlinSourceType, AddedKotlinSourceContract, AddedKotlinSourceMode.
        • Member completion:
          Type:
            let source = AddedKotlinSourceType()
            source.addedKotlinMember
          Expect: addedKotlinMemberValue, addedKotlinMemberFunction().
        • Interface member completion:
          Type:
            let source: AddedKotlinSourceContract
            source.addedKotlinContract
          Expect: addedKotlinContractFunction().
        • Enum case completion:
          Type: let mode: AddedKotlinSourceMode = .added
          Expect: addedReady, addedPaused.
        • Top-level function completion:
          Type: AddedKotlinCompletionSourceKt.addedKotlinTopLevel
          Expect: addedKotlinTopLevelFunction().
    */

}
