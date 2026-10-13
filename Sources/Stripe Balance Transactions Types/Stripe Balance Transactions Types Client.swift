public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.BalanceTransactions {
    @Witness
    public struct Client: Sendable {
        public var retrieve:
            @Sendable (_ id: Stripe.Balance.Transaction.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.BalanceTransactions.Retrieve.Error
            >) ->
                Stripe.Balance.Transaction

        public var list:
            @Sendable (_ request: Stripe.BalanceTransactions.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.BalanceTransactions.List.Error
            >) ->
                Stripe.BalanceTransactions.List.Response
    }
}
