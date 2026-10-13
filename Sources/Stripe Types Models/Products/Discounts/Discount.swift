public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Products {
    public struct Discount: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var coupon: Stripe.Products.Coupon?
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        public var end: Date?
        public var start: Date?
        public var subscription: Stripe.Billing.Subscription.ID?
        public var object: String
        public var checkoutSession: String?
        public var invoice: Stripe.Billing.Invoice.ID?
        public var invoiceItem: String?
        @ExpandableOf<Promotion.Code> public var promotionCode

        public init(
            id: ID,
            coupon: Stripe.Products.Coupon? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            end: Date? = nil,
            start: Date? = nil,
            subscription: Stripe.Billing.Subscription.ID? = nil,
            object: String,
            checkoutSession: String? = nil,
            invoice: Stripe.Billing.Invoice.ID? = nil,
            invoiceItem: String? = nil,
            promotionCode: Promotion.Code.ID? = nil
        ) {
            self.id = id
            self.coupon = coupon
            self._customer = Expandable(id: customer)
            self.end = end
            self.start = start
            self.subscription = subscription
            self.object = object
            self.checkoutSession = checkoutSession
            self.invoice = invoice
            self.invoiceItem = invoiceItem
            self._promotionCode = Expandable(id: promotionCode)
        }
    }
}
