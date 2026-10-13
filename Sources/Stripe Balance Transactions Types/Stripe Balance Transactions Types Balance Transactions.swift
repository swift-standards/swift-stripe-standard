import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.BalanceTransactions {
    public enum List {}
}

extension Stripe.BalanceTransactions.List {
    public struct Request: Codable, Equatable, Sendable {
        public let payout: Stripe.Payouts.Payout.ID?
        public let type: String?
        public let created: Stripe.DateFilter?
        public let currency: Stripe.Currency?
        public let endingBefore: String?
        public let limit: Int?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case payout
            case type
            case created
            case currency
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            payout: Stripe.Payouts.Payout.ID? = nil,
            type: String? = nil,
            created: Stripe.DateFilter? = nil,
            currency: Stripe.Currency? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.payout = payout
            self.type = type
            self.created = created
            self.currency = currency
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Balance.Transaction]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }

        public init(
            object: String,
            url: String,
            hasMore: Bool,
            data: [Stripe.Balance.Transaction]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}
