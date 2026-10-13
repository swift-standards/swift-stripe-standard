import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Credit.Balance {
    public enum List {}
}

extension Stripe.Billing.Credit.Balance.List {
    public struct Request: Codable, Equatable, Sendable {
        public let customer: Stripe.Customers.Customer.ID
        public let creditGrant: String?
        public let endingBefore: String?
        public let limit: Int?
        public let startingAfter: String?

        public init(
            customer: Stripe.Customers.Customer.ID,
            creditGrant: String? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.customer = customer
            self.creditGrant = creditGrant
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }

        private enum CodingKeys: String, CodingKey {
            case customer
            case creditGrant = "credit_grant"
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }
    }
}
