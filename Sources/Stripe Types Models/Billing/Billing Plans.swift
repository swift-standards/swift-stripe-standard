public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing {

    public struct Plan: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var active: Bool?
        public var amount: Int?
        public var currency: Stripe.Currency?
        public var interval: Stripe.Interval?
        public var metadata: [String: String]?
        public var nickname: String?
        @ExpandableOf<Stripe.Products.Product> public var product: Stripe.Products.Product.ID?
        public var object: String
        public var aggregateUsage: Stripe.Billing.Plan.AggregateUsage?
        public var amountDecimal: String?
        public var billingScheme: Stripe.Billing.Plan.BillingScheme?
        public var created: Date
        public var intervalCount: Int?
        public var livemode: Bool?
        public var tiers: [Plan.Tier]?
        public var tiersMode: Plan.TiersMode?
        public var transformUsage: Plan.TransformUsage?
        public var trialPeriodDays: Int?
        public var usageType: Plan.UsageType?
        public var meter: String?

        public init(
            id: ID,
            active: Bool? = nil,
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            interval: Stripe.Interval? = nil,
            metadata: [String: String]? = nil,
            nickname: String? = nil,
            product: Stripe.Products.Product.ID? = nil,
            object: String,
            aggregateUsage: Plan.AggregateUsage? = nil,
            amountDecimal: String? = nil,
            billingScheme: Plan.BillingScheme? = nil,
            created: Date,
            intervalCount: Int? = nil,
            livemode: Bool? = nil,
            tiers: [Plan.Tier]? = nil,
            tiersMode: Plan.TiersMode? = nil,
            transformUsage: Plan.TransformUsage? = nil,
            trialPeriodDays: Int? = nil,
            usageType: Plan.UsageType? = nil,
            meter: String? = nil
        ) {
            self.id = id
            self.active = active
            self.amount = amount
            self.currency = currency
            self.interval = interval
            self.metadata = metadata
            self.nickname = nickname
            self._product = Expandable(id: product)
            self.object = object
            self.aggregateUsage = aggregateUsage
            self.amountDecimal = amountDecimal
            self.billingScheme = billingScheme
            self.created = created
            self.intervalCount = intervalCount
            self.livemode = livemode
            self.tiers = tiers
            self.tiersMode = tiersMode
            self.transformUsage = transformUsage
            self.trialPeriodDays = trialPeriodDays
            self.usageType = usageType
            self.meter = meter
        }
    }
}

extension Stripe.Billing.Plan {
    public enum AggregateUsage: String, Codable, Sendable {
        case sum
        case lastDuringPeriod = "last_during_period"
        case lastEver = "last_ever"
        case max
    }
}

extension Stripe.Billing.Plan {
    public enum BillingScheme: String, Codable, Sendable {
        case perUnit = "per_unit"
        case tiered
    }
}

extension Stripe.Billing.Plan {
    public typealias Interval = Stripe.Interval
}

extension Stripe.Billing.Plan {
    public struct Tier: Codable, Hashable, Sendable {
        public var flatAmount: Int?
        public var flatAmountDecimal: String?
        public var unitAmount: Int?
        public var unitAmountDecimal: String?
        public var upTo: Int?

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

extension Stripe.Billing.Plan {
    public enum TiersMode: String, Codable, Sendable {
        case graduated
        case volume
    }
}

extension Stripe.Billing.Plan {
    public struct TransformUsage: Codable, Hashable, Sendable {
        public var divideBy: Int?
        public var round: Round?

        public init(
            divideBy: Int? = nil,
            round: Stripe.Billing.Plan.TransformUsage.Round? = nil
        ) {
            self.divideBy = divideBy
            self.round = round
        }
    }
}

extension Stripe.Billing.Plan.TransformUsage {
    public enum Round: String, Codable, Sendable {
        case up
        case down
    }
}

extension Stripe.Billing.Plan {
    public enum UsageType: String, Codable, Sendable {
        case metered
        case licensed
    }
}
