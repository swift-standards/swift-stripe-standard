public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Invoice {
    public struct LineItem: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var amount: Int?
        public var currency: Stripe.Currency?
        public var description: String?
        public var metadata: [String: String]?
        public var period: Period?
        public var price: Stripe.Products.Price?
        public var proration: Bool?
        public var quantity: Int?
        public var type: Type?
        public var object: String
        public var amountExcludingTax: Int?
        public var discountAmounts: [DiscountAmount]?
        public var discountable: Bool?
        @ExpandableCollection<Stripe.Products.Discount> public var discounts: [String]?
        @ExpandableOf<Stripe.Billing.Invoice.Item> public var invoiceItem: Stripe.Billing.Invoice.Item.ID?
        public var livemode: Bool?
        public var prorationDetails: ProrationDetails?
        @ExpandableOf<Stripe.Billing.Subscription> public var subscription: Stripe.Billing.Subscription.ID?
        @ExpandableOf<Stripe.Billing.Subscription.Item> public var subscriptionItem: Stripe.Billing.Subscription.Item.ID?
        public var taxAmounts: [Stripe.Billing.Invoice.TotalTaxAmount]?
        public var taxRates: [Stripe.Tax.Rate]?
        public var unitAmountExcludingTax: String?

        public init(
            id: ID,
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            metadata: [String: String]? = nil,
            period: Period? = nil,
            price: Stripe.Products.Price? = nil,
            proration: Bool? = nil,
            quantity: Int? = nil,
            type: Type? = nil,
            object: String,
            amountExcludingTax: Int? = nil,
            discountAmounts: [DiscountAmount]? = nil,
            discountable: Bool? = nil,
            discounts: [String]? = nil,
            invoiceItem: Stripe.Billing.Invoice.Item.ID? = nil,
            livemode: Bool? = nil,
            prorationDetails: ProrationDetails? = nil,
            subscription: Stripe.Billing.Subscription.ID? = nil,
            subscriptionItem: Stripe.Billing.Subscription.Item.ID? = nil,
            taxAmounts: [Stripe.Billing.Invoice.TotalTaxAmount]? = nil,
            taxRates: [Stripe.Tax.Rate]? = nil,
            unitAmountExcludingTax: String? = nil
        ) {
            self.id = id
            self.amount = amount
            self.currency = currency
            self.description = description
            self.metadata = metadata
            self.period = period
            self.price = price
            self.proration = proration
            self.quantity = quantity
            self.type = type
            self.object = object
            self.amountExcludingTax = amountExcludingTax
            self.discountAmounts = discountAmounts
            self.discountable = discountable
            self._discounts = ExpandableCollection(ids: discounts)
            self._invoiceItem = Expandable(id: invoiceItem)
            self.livemode = livemode
            self.prorationDetails = prorationDetails
            self._subscription = Expandable(id: subscription)
            self._subscriptionItem = Expandable(id: subscriptionItem)
            self.taxAmounts = taxAmounts
            self.taxRates = taxRates
            self.unitAmountExcludingTax = unitAmountExcludingTax
        }
    }
}

extension Stripe.Billing.Invoice.LineItem {
    public struct Period: Codable, Hashable, Sendable {
        public var start: Date?
        public var end: Date?

        public init(
            start: Date? = nil,
            end: Date? = nil
        ) {
            self.start = start
            self.end = end
        }
    }

    public enum `Type`: String, Codable, Sendable {
        case invoiceitem
        case subscription
    }

    public struct DiscountAmount: Codable, Hashable, Sendable {
        public var amount: Int?
        @ExpandableOf<Stripe.Products.Discount> public var discount: Stripe.Products.Discount.ID?

        public init(
            amount: Int? = nil,
            discount: Stripe.Products.Discount.ID? = nil
        ) {
            self.amount = amount
            self._discount = Expandable(id: discount)
        }
    }

    public struct ProrationDetails: Codable, Hashable, Sendable {
        public var creditedItems: CreditedItem?

        public init(
            creditedItems: CreditedItem? = nil
        ) {
            self.creditedItems = creditedItems
        }
    }
}

extension Stripe.Billing.Invoice.LineItem.ProrationDetails {
    public struct CreditedItem: Codable, Hashable, Sendable {
        public var invoice: Stripe.Billing.Invoice.ID?
        public var invoiceLineItems: [String]?

        public init(
            invoice: Stripe.Billing.Invoice.ID? = nil,
            invoiceLineItems: [String]? = nil
        ) {
            self.invoice = invoice
            self.invoiceLineItems = invoiceLineItems
        }
    }
}

extension Stripe.Billing.Invoice.LineItem {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Billing.Invoice.LineItem]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Billing.Invoice.LineItem]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}

extension Stripe.Billing.Invoice {
    public struct SearchResult: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Billing.Invoice]?
        public var hasMore: Bool?
        public var url: String?
        public var nextPage: String?
        public var totalCount: Int?

        public init(
            object: String,
            data: [Stripe.Billing.Invoice]? = nil,
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
