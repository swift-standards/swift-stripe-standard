public import Foundation
public import Stripe_Types_Shared
public import Tagged

public enum Promotion {}

extension Promotion {
    public struct Code: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var code: String?
        public var coupon: Stripe.Products.Coupon?
        public var metadata: [String: String]?
        public var object: String
        public var active: Bool?
        public var created: Date
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        public var expiresAt: Date?
        public var livemode: Bool?
        public var maxRedemptions: Int?
        public var restrictions: Promotion.Code.Restrictions?
        public var timesRedeemed: Int?

        public init(
            id: ID,
            code: String? = nil,
            coupon: Stripe.Products.Coupon? = nil,
            metadata: [String: String]? = nil,
            object: String,
            active: Bool? = nil,
            created: Date,
            customer: Stripe.Customers.Customer.ID? = nil,
            expiresAt: Date? = nil,
            livemode: Bool? = nil,
            maxRedemptions: Int? = nil,
            restrictions: Promotion.Code.Restrictions? = nil,
            timesRedeemed: Int? = nil
        ) {
            self.id = id
            self.code = code
            self.coupon = coupon
            self.metadata = metadata
            self.object = object
            self.active = active
            self.created = created
            self._customer = Expandable(id: customer)
            self.expiresAt = expiresAt
            self.livemode = livemode
            self.maxRedemptions = maxRedemptions
            self.restrictions = restrictions
            self.timesRedeemed = timesRedeemed
        }
    }
}

extension Promotion.Code {
    public struct Restrictions: Codable, Hashable, Sendable {
        public var currencyOptions: [Stripe.Currency: Promotion.Code.Restrictions.Currency.Options]?
        public var firstTimeTransaction: Bool?
        public var minimumAmount: Int?
        public var minimumAmountCurrency: String?

        public init(
            currencyOptions: [Stripe.Currency: Promotion.Code.Restrictions.Currency.Options]? = nil,
            firstTimeTransaction: Bool? = nil,
            minimumAmount: Int? = nil,
            minimumAmountCurrency: String? = nil
        ) {
            self.currencyOptions = currencyOptions
            self.firstTimeTransaction = firstTimeTransaction
            self.minimumAmount = minimumAmount
            self.minimumAmountCurrency = minimumAmountCurrency
        }
    }
}

extension Promotion.Code.Restrictions {
    public enum Currency {}
}

extension Promotion.Code.Restrictions.Currency {
    public struct Options: Codable, Hashable, Sendable {
        public var minimumAmount: Int?

        public init(
            minimumAmount: Int? = nil
        ) {
            self.minimumAmount = minimumAmount
        }
    }
}

extension Promotion.Code {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Promotion.Code]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Promotion.Code]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
