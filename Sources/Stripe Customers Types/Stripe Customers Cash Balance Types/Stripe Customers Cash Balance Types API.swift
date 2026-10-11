import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers.CashBalance {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/cash_balance/retrieve.md
        case retrieve(customerId: Stripe.Customers.Customer.ID)
        // https://docs.stripe.com/api/cash_balance/update.md
        case update(customerId: Stripe.Customers.Customer.ID, request: Update.Request)
    }
}
