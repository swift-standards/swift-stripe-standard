import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Plans {
    public enum Create {}
}

extension Stripe.Billing.Plans.Create {
    public struct Request: Codable, Equatable, Sendable {
        public typealias ID = Tagged<Self, String>
        public var id: ID?
        public var active: Bool?
        public var amount: Int?
        public var amountDecimal: String?
        public var currency: Stripe.Currency
        public var interval: Stripe.Billing.Plan.Interval
        public var intervalCount: Int?
        public var nickname: String?
        public var product: ProductReference?
        public var usageType: UsageType?
        public var metadata: [String: String]?
        public var billingThresholds: BillingThresholds?
        public var billingScheme: Stripe.Billing.Plan.BillingScheme?
        public var trialPeriodDays: Int?
        public var tiers: [Stripe.Billing.Plan.Tier]?
        public var tiersMode: Stripe.Billing.Plan.TiersMode?
        public var transformUsage: Stripe.Billing.Plan.TransformUsage?

        public init(
            id: ID? = nil,
            active: Bool? = nil,
            amount: Int? = nil,
            amountDecimal: String? = nil,
            currency: Stripe.Currency,
            interval: Stripe.Billing.Plan.Interval,
            intervalCount: Int? = nil,
            nickname: String? = nil,
            product: ProductReference? = nil,
            usageType: UsageType? = nil,
            metadata: [String: String]? = nil,
            billingThresholds: BillingThresholds? = nil,
            billingScheme: Stripe.Billing.Plan.BillingScheme? = nil,
            trialPeriodDays: Int? = nil,
            tiers: [Stripe.Billing.Plan.Tier]? = nil,
            tiersMode: Stripe.Billing.Plan.TiersMode? = nil,
            transformUsage: Stripe.Billing.Plan.TransformUsage? = nil
        ) {
            self.id = id
            self.active = active
            self.amount = amount
            self.amountDecimal = amountDecimal
            self.currency = currency
            self.interval = interval
            self.intervalCount = intervalCount
            self.nickname = nickname
            self.product = product
            self.usageType = usageType
            self.metadata = metadata
            self.billingThresholds = billingThresholds
            self.billingScheme = billingScheme
            self.trialPeriodDays = trialPeriodDays
            self.tiers = tiers
            self.tiersMode = tiersMode
            self.transformUsage = transformUsage
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case active
            case amount
            case amountDecimal = "amount_decimal"
            case currency
            case interval
            case intervalCount = "interval_count"
            case nickname
            case product
            case usageType = "usage_type"
            case metadata
            case billingThresholds = "billing_thresholds"
            case billingScheme = "billing_scheme"
            case trialPeriodDays = "trial_period_days"
            case tiers
            case tiersMode = "tiers_mode"
            case transformUsage = "transform_usage"
        }
    }

    public enum ProductReference: Codable, Equatable, Sendable {
        case id(String)
        case data(ProductData)

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .id(let id):
                try container.encode(id)

            case .data(let data):
                try container.encode(data)
            }
        }

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let id = try? container.decode(String.self) {
                self = .id(id)
            } else if let data = try? container.decode(ProductData.self) {
                self = .data(data)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Invalid ProductReference"
                )
            }
        }
    }

    public struct ProductData: Codable, Equatable, Sendable {
        public var name: String
        public var statementDescriptor: String?
        public var active: Bool?
        public var metadata: [String: String]?

        public init(
            name: String,
            statementDescriptor: String? = nil,
            active: Bool? = nil,
            metadata: [String: String]? = nil
        ) {
            self.name = name
            self.statementDescriptor = statementDescriptor
            self.active = active
            self.metadata = metadata
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case statementDescriptor = "statement_descriptor"
            case active
            case metadata
        }
    }

    public enum UsageType: String, Codable, Equatable, Sendable {
        case metered
        case licensed
    }

    public struct BillingThresholds: Codable, Equatable, Sendable {
        public var usageGte: Int?

        public init(usageGte: Int? = nil) {
            self.usageGte = usageGte
        }

        private enum CodingKeys: String, CodingKey {
            case usageGte = "usage_gte"
        }
    }

    public enum BillingScheme: String, Codable, Equatable, Sendable {
        case perUnit = "per_unit"
        case tiered
    }

    public struct Tier: Codable, Equatable, Sendable {
        public var unitAmount: Int?
        public var unitAmountDecimal: String?
        public var flatAmount: Int?
        public var flatAmountDecimal: String?
        public var upTo: UpTo?

        public init(
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil,
            flatAmount: Int? = nil,
            flatAmountDecimal: String? = nil,
            upTo: UpTo? = nil
        ) {
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
            self.flatAmount = flatAmount
            self.flatAmountDecimal = flatAmountDecimal
            self.upTo = upTo
        }

        private enum CodingKeys: String, CodingKey {
            case unitAmount = "unit_amount"
            case unitAmountDecimal = "unit_amount_decimal"
            case flatAmount = "flat_amount"
            case flatAmountDecimal = "flat_amount_decimal"
            case upTo = "up_to"
        }
    }

    public enum UpTo: Codable, Equatable, Sendable {
        case inf
        case value(Int)

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .inf:
                try container.encode("inf")

            case .value(let value):
                try container.encode(value)
            }
        }

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let string = try? container.decode(String.self), string == "inf" {
                self = .inf
            } else if let value = try? container.decode(Int.self) {
                self = .value(value)
            } else {
                throw DecodingError.dataCorruptedError(
                    in: container,
                    debugDescription: "Invalid UpTo value"
                )
            }
        }
    }

    public enum TiersMode: String, Codable, Equatable, Sendable {
        case graduated
        case volume
    }

    public struct TransformUsage: Codable, Equatable, Sendable {
        public var divideBy: Int
        public var round: Round

        public init(divideBy: Int, round: Round) {
            self.divideBy = divideBy
            self.round = round
        }

        private enum CodingKeys: String, CodingKey {
            case divideBy = "divide_by"
            case round
        }
    }

    public enum Round: String, Codable, Equatable, Sendable {
        case up
        case down
    }
}

extension Stripe.Billing.Plans {
    public enum Update {}
}

extension Stripe.Billing.Plans.Update {
    public struct Request: Codable, Equatable, Sendable {
        public var active: Bool?
        public var nickname: String?
        public var metadata: [String: String]?
        public var product: Stripe.Products.Product.ID?
        public var trialPeriodDays: Int?

        public init(
            active: Bool? = nil,
            nickname: String? = nil,
            metadata: [String: String]? = nil,
            product: Stripe.Products.Product.ID? = nil,
            trialPeriodDays: Int? = nil
        ) {
            self.active = active
            self.nickname = nickname
            self.metadata = metadata
            self.product = product
            self.trialPeriodDays = trialPeriodDays
        }

        private enum CodingKeys: String, CodingKey {
            case active
            case nickname
            case metadata
            case product
            case trialPeriodDays = "trial_period_days"
        }
    }
}

extension Stripe.Billing.Plans {
    public enum List {}
}

extension Stripe.Billing.Plans.List {
    public struct Request: Codable, Equatable, Sendable {
        public var active: Bool?
        public var created: Stripe.DateFilter?
        public var endingBefore: String?
        public var limit: Int?
        public var product: Stripe.Products.Product.ID?
        public var startingAfter: String?

        public init(
            active: Bool? = nil,
            created: Stripe.DateFilter? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            product: Stripe.Products.Product.ID? = nil,
            startingAfter: String? = nil
        ) {
            self.active = active
            self.created = created
            self.endingBefore = endingBefore
            self.limit = limit
            self.product = product
            self.startingAfter = startingAfter
        }

        private enum CodingKeys: String, CodingKey {
            case active
            case created
            case endingBefore = "ending_before"
            case limit
            case product
            case startingAfter = "starting_after"
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Billing.Plan]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}
