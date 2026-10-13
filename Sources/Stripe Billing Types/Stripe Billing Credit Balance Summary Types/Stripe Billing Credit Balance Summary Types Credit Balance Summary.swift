import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.CreditBalanceSummary {
    public enum Retrieve {}
}

extension Stripe.Billing.CreditBalanceSummary.Retrieve {
    public struct Request: Codable, Equatable, Sendable {
        public let customer: Stripe.Customers.Customer.ID
        public let filter: Stripe.Billing.Credit.Balance.Summary.Filter

        public init(
            customer: Stripe.Customers.Customer.ID,
            filter: Stripe.Billing.Credit.Balance.Summary.Filter
        ) {
            self.customer = customer
            self.filter = filter
        }

        private enum CodingKeys: String, CodingKey {
            case customer
            case filter
        }
    }
}
