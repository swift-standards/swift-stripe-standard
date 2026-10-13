import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Quote {
    public struct LineItem: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var object: String
        public var amountDiscount: Int?
        public var amountSubtotal: Int?
        public var amountTax: Int?
        public var amountTotal: Int?
        public var currency: Stripe.Currency?
        public var description: String?
        public var discounts: [Discount]?
        public var price: Stripe.Products.Price?
        public var quantity: Int?
        public var taxes: [Tax]?

        public init(
            id: ID,
            object: String,
            amountDiscount: Int? = nil,
            amountSubtotal: Int? = nil,
            amountTax: Int? = nil,
            amountTotal: Int? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            discounts: [Discount]? = nil,
            price: Stripe.Products.Price? = nil,
            quantity: Int? = nil,
            taxes: [Tax]? = nil
        ) {
            self.id = id
            self.object = object
            self.amountDiscount = amountDiscount
            self.amountSubtotal = amountSubtotal
            self.amountTax = amountTax
            self.amountTotal = amountTotal
            self.currency = currency
            self.description = description
            self.discounts = discounts
            self.price = price
            self.quantity = quantity
            self.taxes = taxes
        }
    }
}

extension Stripe.Billing.Quote.LineItem {
    public struct Discount: Codable, Hashable, Sendable {
        public var amount: Int?
        public var discount: Stripe.Products.Discount?

        public init(
            amount: Int? = nil,
            discount: Stripe.Products.Discount? = nil
        ) {
            self.amount = amount
            self.discount = discount
        }
    }
}

extension Stripe.Billing.Quote.LineItem {
    public struct Tax: Codable, Hashable, Sendable {
        public var amount: Int?
        public var rate: Stripe.Tax.Rate?
        public var taxabilityReason: TaxabilityReason?

        public init(
            amount: Int? = nil,
            rate: Stripe.Tax.Rate? = nil,
            taxabilityReason: TaxabilityReason? = nil
        ) {
            self.amount = amount
            self.rate = rate
            self.taxabilityReason = taxabilityReason
        }
    }
}

extension Stripe.Billing.Quote.LineItem.Tax {
    public enum TaxabilityReason: String, Codable, Sendable {
        case vatExempt = "vat_exempt"
        case jurisdictionUnsupported = "jurisdiction_unsupported"
        case excludedTerritory = "excluded_territory"
        case standardRated = "standard_rated"
        case reducedRated = "reduced_rated"
        case zeroRated = "zero_rated"
        case reverseCharge = "reverse_charge"
        case customerExempt = "customer_exempt"
        case productExempt = "product_exempt"
        case productExemptHoliday = "product_exempt_holiday"
        case portionStandardRated = "portion_standard_rated"
        case portionReducedRated = "portion_reduced_rated"
        case portionProductExempt = "portion_product_exempt"
        case taxableBasisReduced = "taxable_basis_reduced"
        case notCollecting = "not_collecting"
        case notSubjectToTax = "not_subject_to_tax"
        case notSupported = "not_supported"
        case proportionallyRated = "proportionally_rated"
    }
}

extension Stripe.Billing.Quote.LineItem {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Billing.Quote.LineItem]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Billing.Quote.LineItem]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
