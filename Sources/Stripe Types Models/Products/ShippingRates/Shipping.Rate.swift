public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Products {
    public enum Shipping {}
}

extension Stripe.Products.Shipping.Rate {
    public enum Fixed {}
}

extension Stripe.Products.Shipping.Rate {
    public enum Delivery {}
}

extension Stripe.Products.Shipping.Rate {
    public enum Tax {}
}

extension Stripe.Products.Shipping {
    public struct Rate: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var active: Bool
        public var displayName: String?
        public var fixedAmount: Stripe.Products.Shipping.Rate.Fixed.Amount?
        public var metadata: [String: String]?
        public var type: Stripe.Products.Shipping.Rate.`Type`?
        public var object: String
        public var created: Date
        public var deliveryEstimate: Stripe.Products.Shipping.Rate.Delivery.Estimate?
        public var livemode: Bool?
        public var taxBehavior: Stripe.Products.Shipping.Rate.Tax.Behavior?
        @ExpandableOf<Stripe.Tax.Code> public var taxCode: Stripe.Tax.Code.ID?

        public init(
            id: ID,
            active: Bool,
            displayName: String? = nil,
            fixedAmount: Stripe.Products.Shipping.Rate.Fixed.Amount? = nil,
            metadata: [String: String]? = nil,
            type: Stripe.Products.Shipping.Rate.`Type`? = nil,
            object: String,
            created: Date,
            deliveryEstimate: Stripe.Products.Shipping.Rate.Delivery.Estimate? = nil,
            livemode: Bool? = nil,
            taxBehavior: Stripe.Products.Shipping.Rate.Tax.Behavior? = nil,
            taxCode: Stripe.Tax.Code.ID? = nil
        ) {
            self.id = id
            self.active = active
            self.displayName = displayName
            self.fixedAmount = fixedAmount
            self.metadata = metadata
            self.type = type
            self.object = object
            self.created = created
            self.deliveryEstimate = deliveryEstimate
            self.livemode = livemode
            self.taxBehavior = taxBehavior
            self._taxCode = Expandable(id: taxCode)
        }
    }
}

extension Stripe.Products.Shipping.Rate.Fixed.Amount {
    public typealias Currency = Stripe.Currency
}

extension Stripe.Products.Shipping.Rate.Fixed {
    public struct Amount: Codable, Hashable, Sendable {
        public var amount: Int?
        public var currency: Stripe.Currency?
        public var currencyOptions: [Stripe.Currency: Stripe.Products.Shipping.Rate.Fixed.Amount.Currency.Options]?

        public init(
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            currencyOptions: [Stripe.Currency: Stripe.Products.Shipping.Rate.Fixed.Amount.Currency
                .Options]? = nil
        ) {
            self.amount = amount
            self.currency = currency
            self.currencyOptions = currencyOptions
        }
    }
}

extension Stripe.Products.Shipping.Rate.Fixed.Amount.Currency {
    public struct Options: Codable, Hashable, Sendable {
        public var amount: Int?
        public var taxBehavior: Stripe.Products.Shipping.Rate.Fixed.Amount.Currency.Options.TaxBehavior?

        public init(
            amount: Int? = nil,
            taxBehavior: Stripe.Products.Shipping.Rate.Fixed.Amount.Currency.Options.TaxBehavior? =
                nil
        ) {
            self.amount = amount
            self.taxBehavior = taxBehavior
        }
    }
}

extension Stripe.Products.Shipping.Rate.Fixed.Amount.Currency.Options {
    public enum TaxBehavior: String, Codable, Sendable {
        case inclusive
        case exclusive
        case unspecified
    }
}

extension Stripe.Products.Shipping.Rate {
    public enum `Type`: String, Codable, Sendable {
        case fixedAmount = "fixed_amount"
    }
}

extension Stripe.Products.Shipping.Rate.Delivery {
    public struct Estimate: Codable, Hashable, Sendable {
        public var maximum: Stripe.Products.Shipping.Rate.Delivery.Estimate.MaxMin?
        public var minimum: Stripe.Products.Shipping.Rate.Delivery.Estimate.MaxMin?

        public init(
            maximum: Stripe.Products.Shipping.Rate.Delivery.Estimate.MaxMin? = nil,
            minimum: Stripe.Products.Shipping.Rate.Delivery.Estimate.MaxMin? = nil
        ) {
            self.maximum = maximum
            self.minimum = minimum
        }
    }
}

extension Stripe.Products.Shipping.Rate.Delivery.Estimate {
    public struct MaxMin: Codable, Hashable, Sendable {
        public var unit: Stripe.Products.Shipping.Rate.Delivery.Estimate.Unit?
        public var value: Int?

        public init(
            unit: Stripe.Products.Shipping.Rate.Delivery.Estimate.Unit? = nil,
            value: Int? = nil
        ) {
            self.unit = unit
            self.value = value
        }
    }
}

extension Stripe.Products.Shipping.Rate.Delivery.Estimate {
    public enum Unit: String, Codable, Sendable {
        case hour
        case day
        case businessDay = "business_day"
        case week
        case month
    }
}

extension Stripe.Products.Shipping.Rate.Tax {
    public enum Behavior: String, Codable, Sendable {
        case inclusive
        case exclusive
        case unspecified
    }
}

extension Stripe.Products.Shipping.Rate {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Products.Shipping.Rate]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Products.Shipping.Rate]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
