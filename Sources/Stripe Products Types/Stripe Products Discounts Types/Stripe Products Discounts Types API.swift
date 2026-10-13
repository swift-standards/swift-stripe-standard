import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Products.Discounts {
    public enum API: Equatable, Sendable {
        case deleteCustomerDiscount(customerId: Stripe.Customers.Customer.ID)
        case deleteSubscriptionDiscount(subscriptionId: Stripe.Billing.Subscription.ID)
    }
}
