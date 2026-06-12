//
// Created by Yulia.Nizienko on 11/6/26.
//

import Foundation

struct GoToDeclarationSourceType {
    let declarationMemberValue: String

    init(declarationMemberValue: String = "member") {
        self.declarationMemberValue = declarationMemberValue
    }

    func declarationMemberFunction() -> String {
        declarationMemberValue
    }
}

enum GoToDeclarationSourceMode {
    case declarationReady
    case declarationPaused
}

let declarationTopLevelValue = "topLevel"

func declarationTopLevelFunction() -> String {
    declarationTopLevelValue
}
