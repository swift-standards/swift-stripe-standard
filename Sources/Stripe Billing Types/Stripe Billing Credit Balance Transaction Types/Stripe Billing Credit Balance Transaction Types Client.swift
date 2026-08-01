import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Credit.Balance {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/billing/credit-balance-transaction/retrieve.md
        public var retrieve:
            @Sendable (_ id: Transaction.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Credit.Balance.Retrieve.Error
            >) -> Transaction

        // https://docs.stripe.com/api/billing/credit-balance-transaction/list.md
        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Credit.Balance.List.Error
            >) -> Transaction.List
    }
}
