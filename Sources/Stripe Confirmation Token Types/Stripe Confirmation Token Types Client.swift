import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe {
    @Witness
    public struct ConfirmationTokenClient: Sendable {
        // https://docs.stripe.com/api/confirmation_tokens/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe_Types_Models.ConfirmationToken.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Retrieve.Error
            >)
                ->
                Stripe_Types_Models.ConfirmationToken
    }
}
