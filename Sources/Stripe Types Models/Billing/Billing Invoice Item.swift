public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Invoice {
    public struct Item: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var amount: Int?
        public var currency: Stripe.Currency?
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        public var description: String?
        public var metadata: [String: String]?
        public var period: ItemPeriod?
        public var price: Stripe.Products.Price?
        public var proration: Bool?
        public var object: String
        public var date: Date?
        public var discountable: Bool?
        @ExpandableCollection<Stripe.Products.Discount> public var discounts: [String]?
        @Expandable<Stripe.Billing.Invoice, Stripe.Billing.Invoice.ID> public var invoice: Stripe.Billing.Invoice.ID?
        public var livemode: Bool?
        public var quantity: Int?
        @ExpandableOf<Stripe.Billing.Subscription> public var subscription: Stripe.Billing.Subscription.ID?
        public var subscriptionItem: String?
        public var taxRates: [Stripe.Tax.Rate]?
        @ExpandableOf<Stripe.Billing.TestClocks.TestClock> public var testClock: Stripe.Billing.TestClocks.TestClock.ID?
        public var unitAmount: Int?
        public var unitAmountDecimal: String?

        public init(
            id: ID,
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            description: String? = nil,
            metadata: [String: String]? = nil,
            period: ItemPeriod? = nil,
            price: Stripe.Products.Price? = nil,
            proration: Bool? = nil,
            object: String,
            date: Date? = nil,
            discountable: Bool? = nil,
            discounts: [String]? = nil,
            invoice: Stripe.Billing.Invoice.ID? = nil,
            livemode: Bool? = nil,
            quantity: Int? = nil,
            subscription: Stripe.Billing.Subscription.ID? = nil,
            subscriptionItem: String? = nil,
            taxRates: [Stripe.Tax.Rate]? = nil,
            testClock: Stripe.Billing.TestClocks.TestClock.ID? = nil,
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil
        ) {
            self.id = id
            self.amount = amount
            self.currency = currency
            self._customer = Expandable(id: customer)
            self.description = description
            self.metadata = metadata
            self.period = period
            self.price = price
            self.proration = proration
            self.object = object
            self.date = date
            self.discountable = discountable
            self._discounts = ExpandableCollection(ids: discounts)
            self._invoice = Expandable(id: invoice)
            self.livemode = livemode
            self.quantity = quantity
            self._subscription = Expandable(id: subscription)
            self.subscriptionItem = subscriptionItem
            self.taxRates = taxRates
            self._testClock = Expandable(id: testClock)
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
        }
    }

    public struct ItemPeriod: Codable, Hashable, Sendable {
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

    public struct ItemList: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Item]?
    }
}
