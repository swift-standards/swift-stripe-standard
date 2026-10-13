public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.CreditBalanceSummary {
    @Witness
    public struct Client: Sendable {
        public var retrieve:
            @Sendable (_ request: Retrieve.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.CreditBalanceSummary.Retrieve.Error
            >) ->
                Stripe.Billing.Credit.Balance.Summary
    }
}
