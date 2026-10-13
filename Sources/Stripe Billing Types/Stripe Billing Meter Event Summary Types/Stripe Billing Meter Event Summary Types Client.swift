public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.MeterEventSummary {
    @Witness
    public struct Client: Sendable {
        public var list:
            @Sendable (_ meterId: String, _ request: Stripe.Billing.MeterEventSummary.List.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.MeterEventSummary.List.Error
                >) -> List.Response
    }
}
