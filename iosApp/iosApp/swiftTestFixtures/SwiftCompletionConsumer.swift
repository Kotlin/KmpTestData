//
// Created by Yulia.Nizienko on 27/5/26.
//

import Foundation
import Shared

func consumeExistingSwiftCompletion() {
    /*
        • Type completion: набрать ExistingSource → ожидать ExistingSourceType, ExistingSourceMode.
        • Top-level value/function: набрать existingTopLevel → ожидать existingTopLevelValue, existingTopLevelFunction.
        • Member completion: ввести let source = ExistingSourceType() затем source.existingMember → ожидать existingMemberValue, existingMemberFunction().
        • Enum case completion: ввести let mode: ExistingSourceMode = .existing → ожидать existingReady, existingPaused.
    */

}

func consumeExistingSwiftModuleCompletion() {

    /*
        • Foundation type completion: набрать DateForm → ожидать DateFormatter.
        • Swift stdlib type completion: набрать Dictio → ожидать Dictionary.
        • Swift keyword completion: набрать fun → ожидать func.
    */

}

func consumeExistingKotlinCompletion() {

    /*
        • File facade completion: набрать KotlinCompletionSource → ожидать KotlinCompletionSourceKt.
        • Type completion: набрать ExistingKotlinSource → ожидать ExistingKotlinSourceType, ExistingKotlinSourceContract, ExistingKotlinSourceMode.
        • Member completion: ввести let source = ExistingKotlinSourceType() затем source.existingKotlinMember → ожидать existingKotlinMemberValue, existingKotlinMemberFunction().
        • Interface member completion: ввести let source: ExistingKotlinSourceContract затем source.existingKotlinContract → ожидать existingKotlinContractFunction().
        • Enum case completion: ввести let mode: ExistingKotlinSourceMode = .existing → ожидать existingReady, existingPaused.
        • Top-level function completion: набрать KotlinCompletionSourceKt.existingKotlinTopLevel → ожидать existingKotlinTopLevelFunction().
    */

}
