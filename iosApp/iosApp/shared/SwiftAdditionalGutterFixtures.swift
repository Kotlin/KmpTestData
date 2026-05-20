//
// Created by Ernest Molczan on 20/05/2026.
//

import Foundation
import Shared

/// Exercises mutable Kotlin protocol properties.
class SwiftMutableRepository: MutableRepository {
    var repositoryLabel: String

    private var storage: [String: String] = [:]

    init(repositoryLabel: String = "Mutable repository") {
        self.repositoryLabel = repositoryLabel
    }

    // Should navigate to Repository.fetchData in Kotlin.
    func fetchData(id: String) -> String {
        storage[id] ?? ""
    }

    // Should navigate to Repository.saveData in Kotlin.
    func saveData(key: String, value: String) -> Bool {
        storage[key] = value
        return true
    }

    // Should navigate to Repository.deleteData in Kotlin.
    func deleteData(id: String) -> Bool {
        storage.removeValue(forKey: id) != nil
    }

    // Should navigate to MutableRepository.resetStorage in Kotlin.
    func resetStorage() {
        storage.removeAll()
    }
}

/// Exercises Kotlin suspend export as a Swift completion-handler requirement.
class SwiftDataService: DataService {
    let serviceName: String = "Swift data service"

    // Should navigate to DataService.loadItems in Kotlin.
    func loadItems(completionHandler: @escaping ([String]?, Error?) -> Void) {
        completionHandler(["alpha", "beta"], nil)
    }
}

/// Exercises a delegate-style Kotlin interface implemented in Swift.
class SwiftViewDelegate: ViewDelegate {
    private(set) var didLoad = false
    private(set) var willAppear = false
    private(set) var didDisappear = false

    // Should navigate to ViewDelegate.viewDidLoad in Kotlin.
    func viewDidLoad() {
        didLoad = true
    }

    // Should navigate to ViewDelegate.viewWillAppear in Kotlin.
    func viewWillAppear() {
        willAppear = true
    }

    // Should navigate to ViewDelegate.viewDidDisappear in Kotlin.
    func viewDidDisappear() {
        didDisappear = true
    }
}

/// Exercises Swift protocol composition over Kotlin-exported protocols.
class SwiftComposedKotlinFixture: KotlinComposeA, KotlinLabelled {
    let label: String = "Composed Kotlin fixture"

    // Should navigate to KotlinComposeA.compose in Kotlin.
    func compose(id: String) -> String {
        "\(label): \(id)"
    }
}
