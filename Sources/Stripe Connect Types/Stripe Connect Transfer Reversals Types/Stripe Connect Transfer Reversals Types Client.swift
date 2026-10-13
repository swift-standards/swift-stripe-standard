public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Connect.Transfer.Reversals {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ transferId: Stripe.Connect.Transfer.ID, _ request: Create.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Connect.Transfer.Reversals.Create.Error
                >)
                -> Stripe.Connect.Transfer.Reversal

        public var retrieve:
            @Sendable (
                _ transferId: Stripe.Connect.Transfer.ID,
                _ reversalId: Stripe.Connect.Transfer.Reversal.ID
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Transfer.Reversals.Retrieve.Error
            >) -> Stripe.Connect.Transfer.Reversal

        public var update:
            @Sendable (
                _ transferId: Stripe.Connect.Transfer.ID,
                _ reversalId: Stripe.Connect.Transfer.Reversal.ID,
                _ request: Update.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Transfer.Reversals.Update.Error
            >) -> Stripe.Connect.Transfer.Reversal

        public var list:
            @Sendable (_ transferId: Stripe.Connect.Transfer.ID, _ request: List.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Connect.Transfer.Reversals.List.Error
                >) ->
                List.Response
    }
}
