import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers.CashBalanceTransactions {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/cash_balance_transactions/retrieve.md
        public var retrieve:
            @Sendable (
                _ customerId: Stripe.Customers.Customer.ID,
                _ transactionId: CashBalanceTransaction.ID
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Customers.CashBalanceTransactions.Retrieve.Error
            >) -> CashBalanceTransaction

        // https://docs.stripe.com/api/cash_balance_transactions/list.md
        public var list:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: List.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Customers.CashBalanceTransactions.List.Error
                >)
                -> List.Response
    }
}
