//
// Created by Ernest Molczan on 21/01/2026.
// Copyright (c) 2026 orgName. All rights reserved.
//

import Foundation
import Shared

typealias SwiftKotlin = Repository & Codable

/// Swift protocol with signatures matching the Kotlin Repository interface.
/// Used to force a Swift/Kotlin "Go to Super" chooser in DualContractRepository.
protocol SwiftRepositoryContract {
    func fetchData(id: String) -> String
    func saveData(key: String, value: String) -> Bool
    func deleteData(id: String) -> Bool
}

/// Swift implementation of the Kotlin Repository interface.
class SwiftRepository: SwiftKotlin {

    private enum CodingKeys: String, CodingKey {
        case storage
    }

    private var storage: [String: String]

    init(storage: [String: String] = [:]) {
        self.storage = storage
    }

    required init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        storage = try container.decode([String: String].self, forKey: .storage)
    }

    // UI test anchor: navigate to Repository.fetchData in Kotlin.
    func fetchData(id: String) -> String {
        return storage[id] ?? ""
    }

    // UI test anchor: navigate to Repository.saveData in Kotlin.
    func saveData(key: String, value: String) -> Bool {
        storage[key] = value
        return true
    }

    // UI test anchor: navigate to Repository.deleteData in Kotlin.
    func deleteData(id: String) -> Bool {
        storage.removeValue(forKey: id) != nil
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(storage, forKey: .storage)
    }
}
