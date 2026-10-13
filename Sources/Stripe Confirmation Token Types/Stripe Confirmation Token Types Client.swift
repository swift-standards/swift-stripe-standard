public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe {
    @Witness
    public struct ConfirmationTokenClient: Sendable {
        public var retrieve:
            @Sendable (_ id: Stripe_Types_Models.ConfirmationToken.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Retrieve.Error
            >)
                ->
                Stripe_Types_Models.ConfirmationToken
    }
}
