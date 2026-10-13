public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Subscription {
    public struct Item: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var metadata: [String: String]?
        public var price: Stripe.Products.Price?
        public var quantity: Int?
        public var subscription: Stripe.Billing.Subscription.ID?
        public var object: String
        public var billingThresholds: BillingThresholds?
        public var created: Date
        public var taxRates: [Stripe.Tax.Rate]?
        public var currentPeriodEnd: Date?
        public var currentPeriodStart: Date?
        public var plan: Stripe.Billing.Plan?
        public var discounts: [Stripe.Products.Discount]?

        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case metadata
            case price
            case quantity
            case subscription
            case object
            case billingThresholds = "billing_thresholds"
            case created
            case taxRates = "tax_rates"
            case currentPeriodEnd = "current_period_end"
            case currentPeriodStart = "current_period_start"
            case plan
            case discounts
        }

        public init(
            id: ID,
            metadata: [String: String]? = nil,
            price: Stripe.Products.Price? = nil,
            quantity: Int? = nil,
            subscription: Stripe.Billing.Subscription.ID? = nil,
            object: String,
            billingThresholds: BillingThresholds? = nil,
            created: Date,
            taxRates: [Stripe.Tax.Rate]? = nil,
            currentPeriodEnd: Date? = nil,
            currentPeriodStart: Date? = nil,
            plan: Stripe.Billing.Plan? = nil,
            discounts: [Stripe.Products.Discount]? = nil
        ) {
            self.id = id
            self.metadata = metadata
            self.price = price
            self.quantity = quantity
            self.subscription = subscription
            self.object = object
            self.billingThresholds = billingThresholds
            self.created = created
            self.taxRates = taxRates
            self.currentPeriodEnd = currentPeriodEnd
            self.currentPeriodStart = currentPeriodStart
            self.plan = plan
            self.discounts = discounts
        }
    }
}

extension Stripe.Billing.Subscription.Item {
    public struct BillingThresholds: Codable, Hashable, Sendable {
        public var usageGte: Int?

        public init(
            usageGte: Int? = nil
        ) {
            self.usageGte = usageGte
        }
    }
}

extension Stripe.Billing.Subscription.Item {
    public enum PaymentBehavior: String, Codable, Sendable {
        case allowIncomplete = "allow_incomplete"
        case errorIfIncomplete = "error_if_incomplete"
        case pendingIfIncomplete = "pending_if_incomplete"
        case defaultIncomplete = "default_incomplete"

    }
}

extension Stripe.Billing.Subscription.Item {
    public enum ProrationBehavior: String, Codable, Sendable {
        case createProrations = "create_prorations"
        case alwaysInvoice = "always_invoice"
        case none
    }
}

extension Stripe.Billing.Subscription.Item {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Billing.Subscription.Item]?
        public var totalCount: Int?

        private enum CodingKeys: String, CodingKey {
            case object
            case hasMore = "has_more"
            case url
            case data
            case totalCount = "total_count"
        }

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Billing.Subscription.Item]? = nil,
            totalCount: Int? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
            self.totalCount = totalCount
        }
    }
}
