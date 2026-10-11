import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers.CashBalanceTransactions {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/cash_balance_transactions/retrieve.md
        case retrieve(
            customerId: Stripe.Customers.Customer.ID,
            transactionId: CashBalanceTransaction.ID
        )
        // https://docs.stripe.com/api/cash_balance_transactions/list.md
        case list(customerId: Stripe.Customers.Customer.ID, request: List.Request)
    }
}
