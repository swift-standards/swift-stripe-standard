public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Credit.Balance {
    @Witness
    public struct Client: Sendable {
        public var retrieve:
            @Sendable (_ id: Transaction.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Credit.Balance.Retrieve.Error
            >) -> Transaction

        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Credit.Balance.List.Error
            >) -> Transaction.List
    }
}
