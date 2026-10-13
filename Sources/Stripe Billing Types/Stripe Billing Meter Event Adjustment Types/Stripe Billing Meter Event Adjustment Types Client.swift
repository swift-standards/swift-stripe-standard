public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.MeterEventAdjustments {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Billing.MeterEventAdjustments.Create.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.MeterEventAdjustments.Create.Error
                >)
                ->
                MeterEventAdjustment
    }
}
