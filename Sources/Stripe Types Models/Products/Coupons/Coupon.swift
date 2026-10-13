public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Products {
    public struct Coupon: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var amountOff: Int?
        public var currency: Stripe.Currency?
        public var duration: Stripe.Products.Coupon.Duration?
        public var durationInMonths: Int?
        public var metadata: [String: String]?
        public var name: String?
        public var percentOff: Int?
        public var object: String
        public var appliesTo: String?
        public var created: Date
        public var currencyOptions: [Stripe.Currency: Stripe.Products.Coupon.Currency.Options]?
        public var livemode: Bool?
        public var maxRedemptions: Int?
        public var redeemBy: Date?
        public var timesRedeemed: Int?
        public var valid: Bool?

        public init(
            id: ID,
            amountOff: Int? = nil,
            currency: Stripe.Currency? = nil,
            duration: Stripe.Products.Coupon.Duration? = nil,
            durationInMonths: Int? = nil,
            metadata: [String: String]? = nil,
            name: String? = nil,
            percentOff: Int? = nil,
            object: String,
            appliesTo: String? = nil,
            created: Date,
            currencyOptions: [Stripe.Currency: Stripe.Products.Coupon.Currency.Options]? = nil,
            livemode: Bool? = nil,
            maxRedemptions: Int? = nil,
            redeemBy: Date? = nil,
            timesRedeemed: Int? = nil,
            valid: Bool? = nil
        ) {
            self.id = id
            self.amountOff = amountOff
            self.currency = currency
            self.duration = duration
            self.durationInMonths = durationInMonths
            self.metadata = metadata
            self.name = name
            self.percentOff = percentOff
            self.object = object
            self.appliesTo = appliesTo
            self.created = created
            self.currencyOptions = currencyOptions
            self.livemode = livemode
            self.maxRedemptions = maxRedemptions
            self.redeemBy = redeemBy
            self.timesRedeemed = timesRedeemed
            self.valid = valid
        }
    }
}

extension Stripe.Products.Coupon {
    public struct AppliesTo: Codable, Hashable, Sendable {
        public var products: [String]?

        public init(
            products: [String]? = nil
        ) {
            self.products = products
        }
    }
}

extension Stripe.Products.Coupon {
    public enum Currency {}
}

extension Stripe.Products.Coupon.Currency {
    public struct Options: Codable, Hashable, Sendable {
        public var amountOff: Int?

        public init(
            amountOff: Int? = nil
        ) {
            self.amountOff = amountOff
        }
    }
}

extension Stripe.Products.Coupon {
    public enum Duration: String, Codable, Sendable {
        case once
        case repeating
        case forever
    }
}

extension Stripe.Products.Coupon {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Products.Coupon]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Products.Coupon]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
