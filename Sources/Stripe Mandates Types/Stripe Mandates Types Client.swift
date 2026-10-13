public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Mandates {
    @Witness
    public struct Client: Sendable {
        public var retrieve:
            @Sendable (_ id: Stripe.Mandates.Mandate.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Mandates.Retrieve.Error
            >) ->
                Stripe.Mandates.Mandate
    }
}
