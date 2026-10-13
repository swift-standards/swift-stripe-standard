import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Payouts {
    public enum Create {}
    public enum Update {}
    public enum List {}
    public enum Reverse {}
}

extension Stripe.Payouts.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let amount: Int
        public let currency: Stripe.Currency
        public let description: String?
        public let destination: String?
        public let metadata: [String: String]?
        public let method: Stripe.Payouts.Payout.Method?
        public let sourceType: Stripe.Payouts.Payout.SourceType?
        public let statementDescriptor: String?

        private enum CodingKeys: String, CodingKey {
            case amount
            case currency
            case description
            case destination
            case metadata
            case method
            case sourceType = "source_type"
            case statementDescriptor = "statement_descriptor"
        }

        public init(
            amount: Int,
            currency: Stripe.Currency,
            description: String? = nil,
            destination: String? = nil,
            metadata: [String: String]? = nil,
            method: Stripe.Payouts.Payout.Method? = nil,
            sourceType: Stripe.Payouts.Payout.SourceType? = nil,
            statementDescriptor: String? = nil
        ) {
            self.amount = amount
            self.currency = currency
            self.description = description
            self.destination = destination
            self.metadata = metadata
            self.method = method
            self.sourceType = sourceType
            self.statementDescriptor = statementDescriptor
        }
    }
}

extension Stripe.Payouts.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let metadata: [String: String]?

        public init(metadata: [String: String]? = nil) {
            self.metadata = metadata
        }
    }
}

extension Stripe.Payouts.List {
    public struct Request: Codable, Equatable, Sendable {
        public let arrivalDate: Stripe.DateFilter?
        public let created: Stripe.DateFilter?
        public let destination: String?
        public let endingBefore: String?
        public let limit: Int?
        public let startingAfter: String?
        public let status: Stripe.Payouts.Payout.Status?

        private enum CodingKeys: String, CodingKey {
            case arrivalDate = "arrival_date"
            case created
            case destination
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
            case status
        }

        public init(
            arrivalDate: Stripe.DateFilter? = nil,
            created: Stripe.DateFilter? = nil,
            destination: String? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil,
            status: Stripe.Payouts.Payout.Status? = nil
        ) {
            self.arrivalDate = arrivalDate
            self.created = created
            self.destination = destination
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
            self.status = status
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Payouts.Payout]

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
            data: [Stripe.Payouts.Payout]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}

extension Stripe.Payouts.Reverse {
    public struct Request: Codable, Equatable, Sendable {
        public let metadata: [String: String]?

        public init(metadata: [String: String]? = nil) {
            self.metadata = metadata
        }
    }
}
