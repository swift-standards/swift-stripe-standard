import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Subscription.Schedule {
    public enum Cancel {}
}

extension Stripe.Billing.Subscription.Schedule.Cancel {
    public struct Request: Codable, Equatable, Sendable {
        public var invoiceNow: Bool?
        public var prorate: Bool?

        public init(
            invoiceNow: Bool? = nil,
            prorate: Bool? = nil
        ) {
            self.invoiceNow = invoiceNow
            self.prorate = prorate
        }

        private enum CodingKeys: String, CodingKey {
            case invoiceNow = "invoice_now"
            case prorate
        }
    }
}
