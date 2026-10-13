import Foundation
public import Stripe_Types_Shared

extension Stripe {
    public struct AdjustableQuantity: Codable, Equatable, Hashable, Sendable {
        public let enabled: Bool

        public let minimum: Int?

        public let maximum: Int?

        public init(
            enabled: Bool,
            minimum: Int? = nil,
            maximum: Int? = nil
        ) {
            self.enabled = enabled
            self.minimum = minimum
            self.maximum = maximum
        }
    }
}
