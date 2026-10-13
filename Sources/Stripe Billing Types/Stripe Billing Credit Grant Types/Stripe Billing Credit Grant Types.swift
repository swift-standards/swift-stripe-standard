public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.Credit.Grant {
    public enum Create {}
}

extension Stripe.Billing.Credit.Grant.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let amount: Amount

        public let applicabilityConfig: ApplicabilityConfig

        public let category: Stripe.Billing.Credit.Grant.Category

        public let customer: String

        public let effectiveAt: Date?

        public let expiresAt: Date?

        public let metadata: [String: String]?

        public let name: String?

        public let priority: Int?

        public struct Amount: Codable, Equatable, Sendable {
            public let monetary: Monetary?

            public let type: String

            public struct Monetary: Codable, Equatable, Sendable {
                public let currency: Stripe.Currency

                public let value: Int
            }
        }

        public struct ApplicabilityConfig: Codable, Equatable, Sendable {
            public let scope: Scope

            public struct Scope: Codable, Equatable, Sendable {
                public let priceType: String?

                public let prices: [Price]?

                public struct Price: Codable, Equatable, Sendable {
                    public let id: Stripe.Products.Price.ID
                }

                private enum CodingKeys: String, CodingKey {
                    case priceType = "price_type"
                    case prices
                }
            }
        }

        public init(
            amount: Amount,
            applicabilityConfig: ApplicabilityConfig,
            category: Stripe.Billing.Credit.Grant.Category,
            customer: String,
            effectiveAt: Date? = nil,
            expiresAt: Date? = nil,
            metadata: [String: String]? = nil,
            name: String? = nil,
            priority: Int? = nil
        ) {
            self.amount = amount
            self.applicabilityConfig = applicabilityConfig
            self.category = category
            self.customer = customer
            self.effectiveAt = effectiveAt
            self.expiresAt = expiresAt
            self.metadata = metadata
            self.name = name
            self.priority = priority
        }

        private enum CodingKeys: String, CodingKey {
            case amount
            case applicabilityConfig = "applicability_config"
            case category
            case customer
            case effectiveAt = "effective_at"
            case expiresAt = "expires_at"
            case metadata
            case name
            case priority
        }
    }
}

extension Stripe.Billing.Credit.Grant {
    public enum Update {}
}

extension Stripe.Billing.Credit.Grant.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let expiresAt: Date?

        public let metadata: [String: String]?

        public init(
            expiresAt: Date? = nil,
            metadata: [String: String]? = nil
        ) {
            self.expiresAt = expiresAt
            self.metadata = metadata
        }

        private enum CodingKeys: String, CodingKey {
            case expiresAt = "expires_at"
            case metadata
        }
    }
}

extension Stripe.Billing.Credit.Grant {
    public enum List {}
}

extension Stripe.Billing.Credit.Grant.List {
    public struct Request: Codable, Equatable, Sendable {
        public let customer: Stripe.Customers.Customer.ID?

        public let endingBefore: String?

        public let startingAfter: String?

        public let limit: Int?

        public init(
            customer: Stripe.Customers.Customer.ID? = nil,
            endingBefore: String? = nil,
            startingAfter: String? = nil,
            limit: Int? = nil
        ) {
            self.customer = customer
            self.endingBefore = endingBefore
            self.startingAfter = startingAfter
            self.limit = limit
        }

        private enum CodingKeys: String, CodingKey {
            case customer
            case endingBefore = "ending_before"
            case startingAfter = "starting_after"
            case limit
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String

        public let url: String

        public let hasMore: Bool

        public let data: [Stripe.Billing.Credit.Grant]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}

extension Stripe.Billing.Credit.Grant {
    public enum Expire {}
}

extension Stripe.Billing.Credit.Grant.Expire {
    public struct Request: Codable, Equatable, Sendable {
        public let expand: [String]?

        public init(expand: [String]? = nil) {
            self.expand = expand
        }
    }
}

extension Stripe.Billing.Credit.Grant {
    public enum Void {}
}

extension Stripe.Billing.Credit.Grant.Void {
    public struct Request: Codable, Equatable, Sendable {
        public let expand: [String]?

        public init(expand: [String]? = nil) {
            self.expand = expand
        }
    }
}
