import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.SubscriptionItems {
    public enum Create {}
}

extension Stripe.Billing.SubscriptionItems.Create {
    public struct Request: Codable, Equatable, Sendable {
        public var subscription: Stripe.Billing.Subscription.ID
        public var price: Stripe.Products.Price.ID?
        public var priceData: PriceData?
        public var quantity: Int?
        public var taxRates: [String]?
        public var metadata: [String: String]?
        public var billingThresholds: BillingThresholds?

        public init(
            subscription: Stripe.Billing.Subscription.ID,
            price: Stripe.Products.Price.ID? = nil,
            priceData: PriceData? = nil,
            quantity: Int? = nil,
            taxRates: [String]? = nil,
            metadata: [String: String]? = nil,
            billingThresholds: BillingThresholds? = nil
        ) {
            self.subscription = subscription
            self.price = price
            self.priceData = priceData
            self.quantity = quantity
            self.taxRates = taxRates
            self.metadata = metadata
            self.billingThresholds = billingThresholds
        }

        private enum CodingKeys: String, CodingKey {
            case subscription
            case price
            case priceData = "price_data"
            case quantity
            case taxRates = "tax_rates"
            case metadata
            case billingThresholds = "billing_thresholds"
        }
    }

    public struct PriceData: Codable, Equatable, Sendable {
        public var currency: Stripe.Currency
        public var product: Stripe.Products.Product.ID
        public var recurring: Recurring
        public var unitAmount: Int?
        public var unitAmountDecimal: String?

        public init(
            currency: Stripe.Currency,
            product: Stripe.Products.Product.ID,
            recurring: Recurring,
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil
        ) {
            self.currency = currency
            self.product = product
            self.recurring = recurring
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
        }

        private enum CodingKeys: String, CodingKey {
            case currency
            case product
            case recurring
            case unitAmount = "unit_amount"
            case unitAmountDecimal = "unit_amount_decimal"
        }
    }

    public struct Recurring: Codable, Equatable, Sendable {
        public var interval: String
        public var intervalCount: Int?

        public init(
            interval: String,
            intervalCount: Int? = nil
        ) {
            self.interval = interval
            self.intervalCount = intervalCount
        }

        private enum CodingKeys: String, CodingKey {
            case interval
            case intervalCount = "interval_count"
        }
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
}

extension Stripe.Billing.SubscriptionItems {
    public enum Update {}
}

extension Stripe.Billing.SubscriptionItems.Update {
    public struct Request: Codable, Equatable, Sendable {
        public var price: Stripe.Products.Price.ID?
        public var priceData: Stripe.Billing.SubscriptionItems.Create.PriceData?
        public var quantity: Int?
        public var taxRates: [String]?
        public var metadata: [String: String]?
        public var billingThresholds: Stripe.Billing.SubscriptionItems.Create.BillingThresholds?
        public var clearMetadata: Bool?

        public init(
            price: Stripe.Products.Price.ID? = nil,
            priceData: Stripe.Billing.SubscriptionItems.Create.PriceData? = nil,
            quantity: Int? = nil,
            taxRates: [String]? = nil,
            metadata: [String: String]? = nil,
            billingThresholds: Stripe.Billing.SubscriptionItems.Create.BillingThresholds? = nil,
            clearMetadata: Bool? = nil
        ) {
            self.price = price
            self.priceData = priceData
            self.quantity = quantity
            self.taxRates = taxRates
            self.metadata = metadata
            self.billingThresholds = billingThresholds
            self.clearMetadata = clearMetadata
        }

        private enum CodingKeys: String, CodingKey {
            case price
            case priceData = "price_data"
            case quantity
            case taxRates = "tax_rates"
            case metadata
            case billingThresholds = "billing_thresholds"
            case clearMetadata = "clear_metadata"
        }
    }
}

extension Stripe.Billing.SubscriptionItems {
    public enum List {}
}

extension Stripe.Billing.SubscriptionItems.List {
    public struct Request: Codable, Equatable, Sendable {
        public var subscription: Stripe.Billing.Subscription.ID
        public var endingBefore: String?
        public var limit: Int?
        public var startingAfter: String?

        public init(
            subscription: Stripe.Billing.Subscription.ID,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.subscription = subscription
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }

        private enum CodingKeys: String, CodingKey {
            case subscription
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Billing.Subscription.Item]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}
