import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Customer.Balance {
    public enum Create {}

    public enum Update {}

    public enum List {}
}

extension Stripe.Billing.Customer.Balance.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let amount: Int
        public let currency: Stripe.Currency
        public let description: String?
        public let metadata: [String: String]?

        public init(
            amount: Int,
            currency: Stripe.Currency,
            description: String? = nil,
            metadata: [String: String]? = nil
        ) {
            self.amount = amount
            self.currency = currency
            self.description = description
            self.metadata = metadata
        }

        private enum CodingKeys: String, CodingKey {
            case amount
            case currency
            case description
            case metadata
        }
    }
}

extension Stripe.Billing.Customer.Balance.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let description: String?
        public let metadata: [String: String]?

        public init(
            description: String? = nil,
            metadata: [String: String]? = nil
        ) {
            self.description = description
            self.metadata = metadata
        }

        private enum CodingKeys: String, CodingKey {
            case description
            case metadata
        }
    }
}

extension Stripe.Billing.Customer.Balance.List {
    public struct Request: Codable, Equatable, Sendable {
        public let endingBefore: String?
        public let limit: Int?
        public let startingAfter: String?

        public init(
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }

        private enum CodingKeys: String, CodingKey {
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }
    }
}
