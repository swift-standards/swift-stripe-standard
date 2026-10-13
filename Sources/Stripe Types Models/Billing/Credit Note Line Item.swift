import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Credit.Note {
    public struct LineItem: Codable, Hashable, Sendable {
        public var id: ID
        public var object: String
        public var amount: Int?
        public var amountExcludingTax: Int?
        public var description: String?
        public var discountAmounts: [LineItem.Discount.Amount]?
        public var invoiceLineItem: String?
        public var livemode: Bool?
        public var quantity: Int?
        public var taxAmounts: [LineItem.Tax.Amount]?
        public var taxRates: [Stripe.Tax.Rate]?
        public var type: LineItem.`Type`?
        public var unitAmount: Int?
        public var unitAmountDecimal: String?
        public var unitAmountExcludingTax: String?

        public init(
            id: ID,
            object: String,
            amount: Int? = nil,
            amountExcludingTax: Int? = nil,
            description: String? = nil,
            discountAmounts: [LineItem.Discount.Amount]? = nil,
            invoiceLineItem: String? = nil,
            livemode: Bool? = nil,
            quantity: Int? = nil,
            taxAmounts: [LineItem.Tax.Amount]? = nil,
            taxRates: [Stripe.Tax.Rate]? = nil,
            type: LineItem.`Type`? = nil,
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil,
            unitAmountExcludingTax: String? = nil
        ) {
            self.id = id
            self.object = object
            self.amount = amount
            self.amountExcludingTax = amountExcludingTax
            self.description = description
            self.discountAmounts = discountAmounts
            self.invoiceLineItem = invoiceLineItem
            self.livemode = livemode
            self.quantity = quantity
            self.taxAmounts = taxAmounts
            self.taxRates = taxRates
            self.type = type
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
            self.unitAmountExcludingTax = unitAmountExcludingTax
        }
    }
}

extension Stripe.Billing.Credit.Note.LineItem {
    public enum Discount {}
}

extension Stripe.Billing.Credit.Note.LineItem.Discount {
    public struct Amount: Codable, Hashable, Sendable {
        public var amount: Int?
        @ExpandableOf<Stripe.Products.Discount> public var discount: Stripe.Products.Discount.ID?

        public init(amount: Int? = nil, discount: Stripe.Products.Discount.ID? = nil) {
            self.amount = amount
            self._discount = Expandable(id: discount)
        }
    }
}

extension Stripe.Billing.Credit.Note.LineItem {
    public enum Tax {}
}

extension Stripe.Billing.Credit.Note.LineItem.Tax {
    public struct Amount: Codable, Hashable, Sendable {
        public var amount: Int?
        public var inclusive: Bool?
        @ExpandableOf<Stripe.Tax.Rate> public var taxRate: Stripe.Tax.Rate.ID?

        public init(
            amount: Int? = nil,
            inclusive: Bool? = nil,
            taxRate: Stripe.Tax.Rate.ID? = nil
        ) {
            self.amount = amount
            self.inclusive = inclusive
            self._taxRate = Expandable(id: taxRate)
        }
    }
}

extension Stripe.Billing.Credit.Note.LineItem {
    public enum `Type`: String, Codable, Sendable {
        case invoiceLineItem = "invoice_line_item"
        case customLineItem = "custom_line_item"
    }
}

extension Stripe.Billing.Credit.Note.LineItem {
    public struct List: Codable, Hashable, Sendable {
        public var object: String?
        public var data: [Stripe.Billing.Credit.Note.LineItem]?
        public var hasMore: Bool?
        public var url: String?

        public init(
            object: String? = nil,
            data: [Stripe.Billing.Credit.Note.LineItem]? = nil,
            hasMore: Bool? = nil,
            url: String? = nil
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
        }
    }
}
