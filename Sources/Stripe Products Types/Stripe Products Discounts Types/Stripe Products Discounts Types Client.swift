public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products.Discounts {
    @Witness
    public struct Client: Sendable {
        public var deleteCustomerDiscount:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Discounts.DeleteCustomerDiscount.Error
            >) ->
                DeletedObject<
                    Stripe.Products.Discount
                >

        public var deleteSubscriptionDiscount:
            @Sendable (_ subscriptionId: Stripe.Billing.Subscription.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Discounts.DeleteSubscriptionDiscount.Error
            >) ->
                DeletedObject<
                    Stripe.Products.Discount
                >
    }
}
