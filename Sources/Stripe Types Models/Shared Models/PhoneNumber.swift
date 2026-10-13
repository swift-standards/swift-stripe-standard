import Foundation
import Stripe_Types_Shared

public enum PhoneNumber {}

extension PhoneNumber {
    public struct Collection: Codable, Hashable, Sendable {
        public var enabled: Bool

        public init(
            enabled: Bool
        ) {
            self.enabled = enabled
        }
    }
}
