import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Subscription.Schedule {
    public enum Release {}
}

extension Stripe.Billing.Subscription.Schedule.Release {
    public struct Request: Codable, Equatable, Sendable {
        public var preserveCancelDate: Bool?

        public init(preserveCancelDate: Bool? = nil) {
            self.preserveCancelDate = preserveCancelDate
        }

        private enum CodingKeys: String, CodingKey {
            case preserveCancelDate = "preserve_cancel_date"
        }
    }
}
