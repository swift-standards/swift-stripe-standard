import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Customer.Balance {
    public enum API: Equatable, Sendable {
        case create(customerId: Stripe.Customers.Customer.ID, request: Create.Request)
        case retrieve(customerId: Stripe.Customers.Customer.ID, id: Transaction.ID)
        case update(
            customerId: Stripe.Customers.Customer.ID,
            id: Transaction.ID,
            request: Update.Request
        )
        case list(customerId: Stripe.Customers.Customer.ID, request: List.Request)
    }
}
