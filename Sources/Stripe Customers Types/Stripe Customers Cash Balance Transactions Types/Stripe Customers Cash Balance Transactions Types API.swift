import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers.CashBalanceTransactions {
    public enum API: Equatable, Sendable {
        case retrieve(
            customerId: Stripe.Customers.Customer.ID,
            transactionId: CashBalanceTransaction.ID
        )
        case list(customerId: Stripe.Customers.Customer.ID, request: List.Request)
    }
}
