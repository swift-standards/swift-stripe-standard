public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Products {
    public struct Price: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var active: Bool?
        public var currency: Stripe.Currency?
        public var metadata: [String: String]?
        public var nickname: String?
        @ExpandableOf<Stripe.Products.Product> public var product: Stripe.Products.Product.ID?
        public var recurring: Recurring?
        public var type: `Type`?
        public var unitAmount: Int?
        public var object: String
        public var billingScheme: Billing.Scheme?
        public var created: Date
        public var currencyOptions: [Stripe.Currency: Stripe.Products.Price.Currency.Option]?
        public var customUnitAmount: CustomUnitAmount?
        public var livemode: Bool?
        public var lookupKey: String?
        public var taxBehavior: TaxBehavior?
        public var tiers: [Tier]?
        public var tiersMode: TierMode?
        public var transformQuantity: TransformQuantity?
        public var unitAmountDecimal: String?

        private enum CodingKeys: String, CodingKey {
            case id
            case active
            case currency
            case metadata
            case nickname
            case product
            case recurring
            case type
            case unitAmount = "unit_amount"
            case object
            case billingScheme = "billing_scheme"
            case created
            case currencyOptions = "currency_options"
            case customUnitAmount = "custom_unit_amount"
            case livemode
            case lookupKey = "lookup_key"
            case taxBehavior = "tax_behavior"
            case tiers
            case tiersMode = "tiers_mode"
            case transformQuantity = "transform_quantity"
            case unitAmountDecimal = "unit_amount_decimal"
        }

        public init(
            id: ID,
            active: Bool? = nil,
            currency: Stripe.Currency? = nil,
            metadata: [String: String]? = nil,
            nickname: String? = nil,
            product: Stripe.Products.Product.ID? = nil,
            recurring: Recurring? = nil,
            type: `Type`? = nil,
            unitAmount: Int? = nil,
            object: String,
            billingScheme: Billing.Scheme? = nil,
            created: Date,
            currencyOptions: [Stripe.Currency: Stripe.Products.Price.Currency.Option]? = nil,
            customUnitAmount: CustomUnitAmount? = nil,
            livemode: Bool? = nil,
            lookupKey: String? = nil,
            taxBehavior: TaxBehavior? = nil,
            tiers: [Tier]? = nil,
            tiersMode: TierMode? = nil,
            transformQuantity: TransformQuantity? = nil,
            unitAmountDecimal: String? = nil
        ) {
            self.id = id
            self.active = active
            self.currency = currency
            self.metadata = metadata
            self.nickname = nickname
            self._product = Expandable(id: product)
            self.recurring = recurring
            self.type = type
            self.unitAmount = unitAmount
            self.object = object
            self.billingScheme = billingScheme
            self.created = created
            self.currencyOptions = currencyOptions
            self.customUnitAmount = customUnitAmount
            self.livemode = livemode
            self.lookupKey = lookupKey
            self.taxBehavior = taxBehavior
            self.tiers = tiers
            self.tiersMode = tiersMode
            self.transformQuantity = transformQuantity
            self.unitAmountDecimal = unitAmountDecimal
        }
    }
}

extension Stripe.Products.Price {
    public struct Recurring: Codable, Hashable, Sendable {
        public var aggregateUsage: Recurring.AggregateUsage?
        public var interval: Stripe.Billing.Plan.Interval?
        public var intervalCount: Int?
        public var usageType: Stripe.Billing.Plan.UsageType?
        public var meter: String?
        public var trialPeriodDays: Int?

        private enum CodingKeys: String, CodingKey {
            case aggregateUsage = "aggregate_usage"
            case interval
            case intervalCount = "interval_count"
            case usageType = "usage_type"
            case meter
            case trialPeriodDays = "trial_period_days"
        }

        public init(
            aggregateUsage: Recurring.AggregateUsage? = nil,
            interval: Stripe.Billing.Plan.Interval? = nil,
            intervalCount: Int? = nil,
            usageType: Stripe.Billing.Plan.UsageType? = nil,
            meter: String? = nil,
            trialPeriodDays: Int? = nil
        ) {
            self.aggregateUsage = aggregateUsage
            self.interval = interval
            self.intervalCount = intervalCount
            self.usageType = usageType
            self.meter = meter
            self.trialPeriodDays = trialPeriodDays
        }
    }
}

extension Stripe.Products.Price.Recurring {
    public enum AggregateUsage: String, Codable, Sendable {
        case sum
        case lastDuringPeriod = "last_during_period"
        case lastEver = "last_ever"
        case max
    }
}

extension Stripe.Products.Price {
    public enum `Type`: String, Codable, Sendable {
        case oneTime = "one_time"
        case recurring
    }
}

extension Stripe.Products.Price {
    public enum Billing {}
}

extension Stripe.Products.Price.Billing {
    public enum Scheme: String, Codable, Sendable {
        case perUnit = "per_unit"
        case tiered
    }
}

extension Stripe.Products.Price {
    public typealias Currency = Stripe.Currency
}

extension Stripe.Products.Price.Currency {
    public struct Option: Codable, Hashable, Sendable {
        public var customUnitAmount: CustomUnitAmount?
        public var taxBehavior: Stripe.Products.Price.TaxBehavior?
        public var tiers: [Stripe.Products.Price.Tier]?
        public var unitAmount: Int?
        public var unitAmountDecimal: String?

        public init(
            customUnitAmount: CustomUnitAmount? = nil,
            taxBehavior: Stripe.Products.Price.TaxBehavior? = nil,
            tiers: [Stripe.Products.Price.Tier]? = nil,
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil
        ) {
            self.customUnitAmount = customUnitAmount
            self.taxBehavior = taxBehavior
            self.tiers = tiers
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
        }
    }
}

extension Stripe.Products.Price.Currency.Option {
    public struct CustomUnitAmount: Codable, Hashable, Sendable {
        public var maximum: Int?
        public var minimum: Int?
        public var preset: Int?

        public init(
            maximum: Int? = nil,
            minimum: Int? = nil,
            preset: Int? = nil
        ) {
            self.maximum = maximum
            self.minimum = minimum
            self.preset = preset
        }
    }
}

extension Stripe.Products.Price {
    public enum TaxBehavior: String, Codable, Sendable {
        case inclusive
        case exclusive
        case unspecified
    }
}

extension Stripe.Products.Price {
    public struct Tier: Codable, Hashable, Sendable {
        public var flatAmount: Int?
        public var flatAmountDecimal: String?
        public var unitAmount: Int?
        public var unitAmountDecimal: String?
        public var upTo: Int?

        private enum CodingKeys: String, CodingKey {
            case flatAmount = "flat_amount"
            case flatAmountDecimal = "flat_amount_decimal"
            case unitAmount = "unit_amount"
            case unitAmountDecimal = "unit_amount_decimal"
            case upTo = "up_to"
        }

        public init(
            flatAmount: Int? = nil,
            flatAmountDecimal: String? = nil,
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil,
            upTo: Int? = nil
        ) {
            self.flatAmount = flatAmount
            self.flatAmountDecimal = flatAmountDecimal
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
            self.upTo = upTo
        }
    }
}

extension Stripe.Products.Price {
    public struct CustomUnitAmount: Codable, Hashable, Sendable {
        public var maximum: Int?
        public var minimum: Int?
        public var preset: Int?

        public init(
            maximum: Int? = nil,
            minimum: Int? = nil,
            preset: Int? = nil
        ) {
            self.maximum = maximum
            self.minimum = minimum
            self.preset = preset
        }
    }
}

extension Stripe.Products.Price {
    public enum TierMode: String, Codable, Sendable {
        case graduated
        case volume
    }
}

extension Stripe.Products.Price {
    public struct TransformQuantity: Codable, Hashable, Sendable {
        public var divideBy: Int?
        public var round: TransformQuantityRound?

        private enum CodingKeys: String, CodingKey {
            case divideBy = "divide_by"
            case round
        }

        public init(
            divideBy: Int? = nil,
            round: TransformQuantityRound? = nil
        ) {
            self.divideBy = divideBy
            self.round = round
        }
    }
}

extension Stripe.Products.Price {
    public enum TransformQuantityRound: String, Codable, Sendable {
        case up
        case down
    }
}

extension Stripe.Products.Price {
    public struct SearchResult: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Products.Price]?
        public var hasMore: Bool?
        public var url: String?
        public var nextPage: String?
        public var totalCount: Int?

        public init(
            object: String,
            data: [Stripe.Products.Price]? = nil,
            hasMore: Bool? = nil,
            url: String? = nil,
            nextPage: String? = nil,
            totalCount: Int? = nil
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
            self.nextPage = nextPage
            self.totalCount = totalCount
        }
    }
}

extension Stripe.Products.Price {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Products.Price]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Products.Price]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
