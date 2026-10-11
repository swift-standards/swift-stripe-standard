import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Customer.Balance {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/customer_balance_transactions/create.md
        case create(customerId: Stripe.Customers.Customer.ID, request: Create.Request)
        // https://docs.stripe.com/api/customer_balance_transactions/retrieve.md
        case retrieve(customerId: Stripe.Customers.Customer.ID, id: Transaction.ID)
        // https://docs.stripe.com/api/customer_balance_transactions/update.md
        case update(
            customerId: Stripe.Customers.Customer.ID,
            id: Transaction.ID,
            request: Update.Request
        )
        // https://docs.stripe.com/api/customer_balance_transactions/list.md
        case list(customerId: Stripe.Customers.Customer.ID, request: List.Request)
    }
}
