//
// Created by Yulia.Nizienko on 27/5/26.
//

import Foundation

struct ExistingSourceType {
    let existingMemberValue: String

    init(existingMemberValue: String = "member") {
        self.existingMemberValue = existingMemberValue
    }

    func existingMemberFunction() -> String {
        existingMemberValue
    }
}

enum ExistingSourceMode {
    case ready
    case paused
}

let existingTopLevelValue = "topLevel"

func existingTopLevelFunction() -> String {
    existingTopLevelValue
}
