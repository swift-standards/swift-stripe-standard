import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Capital.FinancingSummary {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/capital/financing_summary/retrieve.md
        public var retrieve:
            @Sendable () async throws(Either<
                Async.Lifecycle.Error, Stripe.Capital.FinancingSummary.Retrieve.Error
            >) -> Stripe.Capital.FinancingSummary
    }
}
