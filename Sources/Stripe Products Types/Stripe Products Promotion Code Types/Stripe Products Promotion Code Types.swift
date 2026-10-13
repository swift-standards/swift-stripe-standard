public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products.PromotionCodes {
    public enum Create {}

    public enum Update {}

    public enum List {}
}

extension Stripe.Products.PromotionCodes.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let coupon: Stripe.Products.Coupon.ID

        public let active: Bool?

        public let code: String?

        public let customer: Stripe.Customers.Customer.ID?

        public let expiresAt: Date?

        public let maxRedemptions: Int?

        public let metadata: [String: String]?

        public let restrictions: Stripe.Products.PromotionCodes.Restrictions?

        private enum CodingKeys: String, CodingKey {
            case coupon
            case active
            case code
            case customer
            case expiresAt = "expires_at"
            case maxRedemptions = "max_redemptions"
            case metadata
            case restrictions
        }

        public init(
            coupon: Stripe.Products.Coupon.ID,
            active: Bool? = nil,
            code: String? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            expiresAt: Date? = nil,
            maxRedemptions: Int? = nil,
            metadata: [String: String]? = nil,
            restrictions: Stripe.Products.PromotionCodes.Restrictions? = nil
        ) {
            self.coupon = coupon
            self.active = active
            self.code = code
            self.customer = customer
            self.expiresAt = expiresAt
            self.maxRedemptions = maxRedemptions
            self.metadata = metadata
            self.restrictions = restrictions
        }
    }
}

extension Stripe.Products.PromotionCodes.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let active: Bool?

        public let metadata: [String: String]?

        public let restrictions: Stripe.Products.PromotionCodes.Restrictions?

        public init(
            active: Bool? = nil,
            metadata: [String: String]? = nil,
            restrictions: Stripe.Products.PromotionCodes.Restrictions? = nil
        ) {
            self.active = active
            self.metadata = metadata
            self.restrictions = restrictions
        }
    }
}

extension Stripe.Products.PromotionCodes.List {
    public struct Request: Codable, Equatable, Sendable {
        public let active: Bool?

        public let code: String?

        public let coupon: Stripe.Products.Coupon.ID?

        public let created: Stripe.DateFilter?

        public let customer: Stripe.Customers.Customer.ID?

        public let endingBefore: String?

        public let limit: Int?

        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case active
            case code
            case coupon
            case created
            case customer
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            active: Bool? = nil,
            code: String? = nil,
            coupon: Stripe.Products.Coupon.ID? = nil,
            created: Stripe.DateFilter? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.active = active
            self.code = code
            self.coupon = coupon
            self.created = created
            self.customer = customer
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Promotion.Code]

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
            data: [Promotion.Code]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}

extension Stripe.Products.PromotionCodes {
    public struct Restrictions: Codable, Equatable, Sendable {
        public let currencyOptions: [Stripe.Currency: CurrencyOptions]?

        public let firstTimeTransaction: Bool?

        public let minimumAmount: Int?

        public let minimumAmountCurrency: Stripe.Currency?

        private enum CodingKeys: String, CodingKey {
            case currencyOptions = "currency_options"
            case firstTimeTransaction = "first_time_transaction"
            case minimumAmount = "minimum_amount"
            case minimumAmountCurrency = "minimum_amount_currency"
        }

        public init(
            currencyOptions: [Stripe.Currency: CurrencyOptions]? = nil,
            firstTimeTransaction: Bool? = nil,
            minimumAmount: Int? = nil,
            minimumAmountCurrency: Stripe.Currency? = nil
        ) {
            self.currencyOptions = currencyOptions
            self.firstTimeTransaction = firstTimeTransaction
            self.minimumAmount = minimumAmount
            self.minimumAmountCurrency = minimumAmountCurrency
        }
    }

    public struct CurrencyOptions: Codable, Equatable, Sendable {
        public let minimumAmount: Int?

        private enum CodingKeys: String, CodingKey {
            case minimumAmount = "minimum_amount"
        }

        public init(minimumAmount: Int? = nil) {
            self.minimumAmount = minimumAmount
        }
    }
}
