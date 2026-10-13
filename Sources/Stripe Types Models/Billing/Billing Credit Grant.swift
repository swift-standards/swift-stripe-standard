public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Credit {
    public struct Grant: Codable, Equatable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public let id: ID

        public let object: String

        public let amount: Amount?

        public let applicabilityConfig: ApplicabilityConfig

        public let category: Category

        public let created: Date

        public let customer: Stripe.Customers.Customer.ID

        public let effectiveAt: Date?

        public let expiresAt: Date?

        public let livemode: Bool

        public let metadata: [String: String]

        public let name: String?

        public let priority: Int?

        public let testClock: String?

        public let updated: Date

        public let voidedAt: Date?

        public struct Amount: Codable, Equatable, Sendable {
            public let monetary: Monetary?

            public let type: AmountType

            public struct Monetary: Codable, Equatable, Sendable {
                public let currency: Stripe.Currency

                public let value: Int
            }

            public enum AmountType: String, Codable, Equatable, Sendable {
                case monetary
            }
        }

        public struct ApplicabilityConfig: Codable, Equatable, Sendable {
            public let scope: Scope

            public struct Scope: Codable, Equatable, Sendable {
                public let priceType: PriceType?

                public let prices: [Price]?

                public enum PriceType: String, Codable, Equatable, Sendable {
                    case metered
                }

                public struct Price: Codable, Equatable, Sendable {
                    public let id: String?
                }

                private enum CodingKeys: String, CodingKey {
                    case priceType = "price_type"
                    case prices
                }
            }
        }

        public enum Category: String, Codable, Equatable, Sendable {
            case paid
            case promotional
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case object
            case amount
            case applicabilityConfig = "applicability_config"
            case category
            case created
            case customer
            case effectiveAt = "effective_at"
            case expiresAt = "expires_at"
            case livemode
            case metadata
            case name
            case priority
            case testClock = "test_clock"
            case updated
            case voidedAt = "voided_at"
        }
    }
}
