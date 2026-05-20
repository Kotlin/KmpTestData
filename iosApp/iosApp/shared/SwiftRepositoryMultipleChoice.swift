//
// Created by Ernest Molczan on 31/03/2026.
//

import Foundation
import Shared

/// One class conforms to both the Kotlin Repository protocol and a matching Swift protocol.
/// "Go to Super" on fetchData should show a chooser with Kotlin and Swift destinations.
class DualContractRepository: Repository, SwiftRepositoryContract {

    private var storage: [String: String] = [:]

    // UI test anchor: chooser item fetchData(String) navigates to Repository.fetchData in Kotlin.
    func fetchData(id: String) -> String {
        storage[id] ?? ""
    }

    // Go to Super should navigate to Repository.saveData in Kotlin.
    func saveData(key: String, value: String) -> Bool {
        storage[key] = value
        return true
    }

    // Go to Super should navigate to Repository.deleteData in Kotlin.
    func deleteData(id: String) -> Bool {
        storage.removeValue(forKey: id) != nil
    }
}
