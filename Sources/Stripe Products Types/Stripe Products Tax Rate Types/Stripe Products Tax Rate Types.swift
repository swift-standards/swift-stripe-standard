public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products.TaxRates {
    public enum Create {}

    public enum Update {}

    public enum List {}
}

extension Stripe.Products.TaxRates.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let displayName: String
        public let inclusive: Bool
        public let percentage: Decimal
        public let active: Bool?
        public let country: String?
        public let description: String?
        public let jurisdiction: String?
        public let metadata: [String: String]?
        public let state: String?
        public let taxType: Stripe.Tax.Rate.TaxType?

        private enum CodingKeys: String, CodingKey {
            case displayName = "display_name"
            case inclusive
            case percentage
            case active
            case country
            case description
            case jurisdiction
            case metadata
            case state
            case taxType = "tax_type"
        }

        public init(
            displayName: String,
            inclusive: Bool,
            percentage: Decimal,
            active: Bool? = nil,
            country: String? = nil,
            description: String? = nil,
            jurisdiction: String? = nil,
            metadata: [String: String]? = nil,
            state: String? = nil,
            taxType: Stripe.Tax.Rate.TaxType? = nil
        ) {
            self.displayName = displayName
            self.inclusive = inclusive
            self.percentage = percentage
            self.active = active
            self.country = country
            self.description = description
            self.jurisdiction = jurisdiction
            self.metadata = metadata
            self.state = state
            self.taxType = taxType
        }
    }
}

extension Stripe.Products.TaxRates.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let active: Bool?
        public let country: String?
        public let description: String?
        public let displayName: String?
        public let jurisdiction: String?
        public let metadata: [String: String]?
        public let state: String?
        public let taxType: Stripe.Tax.Rate.TaxType?

        private enum CodingKeys: String, CodingKey {
            case active
            case country
            case description
            case displayName = "display_name"
            case jurisdiction
            case metadata
            case state
            case taxType = "tax_type"
        }

        public init(
            active: Bool? = nil,
            country: String? = nil,
            description: String? = nil,
            displayName: String? = nil,
            jurisdiction: String? = nil,
            metadata: [String: String]? = nil,
            state: String? = nil,
            taxType: Stripe.Tax.Rate.TaxType? = nil
        ) {
            self.active = active
            self.country = country
            self.description = description
            self.displayName = displayName
            self.jurisdiction = jurisdiction
            self.metadata = metadata
            self.state = state
            self.taxType = taxType
        }
    }
}

extension Stripe.Products.TaxRates.List {
    public struct Request: Codable, Equatable, Sendable {
        public let active: Bool?
        public let created: Stripe.DateFilter?
        public let endingBefore: String?
        public let inclusive: Bool?
        public let limit: Int?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case active
            case created
            case endingBefore = "ending_before"
            case inclusive
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            active: Bool? = nil,
            created: Stripe.DateFilter? = nil,
            endingBefore: String? = nil,
            inclusive: Bool? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.active = active
            self.created = created
            self.endingBefore = endingBefore
            self.inclusive = inclusive
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let hasMore: Bool
        public let url: String
        public let data: [Stripe.Tax.Rate]

        private enum CodingKeys: String, CodingKey {
            case object
            case hasMore = "has_more"
            case url
            case data
        }

        public init(
            object: String,
            hasMore: Bool,
            url: String,
            data: [Stripe.Tax.Rate]
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
