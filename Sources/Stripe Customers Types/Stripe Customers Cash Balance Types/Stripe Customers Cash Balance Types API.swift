import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers.CashBalance {
    public enum API: Equatable, Sendable {
        case retrieve(customerId: Stripe.Customers.Customer.ID)
        case update(customerId: Stripe.Customers.Customer.ID, request: Update.Request)
    }
}
