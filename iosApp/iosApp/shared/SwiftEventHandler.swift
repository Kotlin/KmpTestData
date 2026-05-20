//
// Created by Ernest Molczan on 28/03/2026.
//

import Foundation
import Shared

class SwiftEventHandler: EventHandler {
    private(set) var lastEventName: String?
    private(set) var lastPayload: [String: Any]?
    private(set) var lastError: KotlinThrowable?

    // Should navigate to EventHandler.onError in Kotlin
    func onError(error: KotlinThrowable) {
        lastError = error
    }

    // Should navigate to EventHandler.onEvent in Kotlin
    func onEvent(eventName: String, payload: [String: Any]?) {
        lastEventName = eventName
        lastPayload = payload
    }
}
