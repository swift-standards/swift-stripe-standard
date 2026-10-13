public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Balance {
    @Witness
    public struct Client: Sendable {
        public var retrieve:
            @Sendable () async throws(Either<Async.Lifecycle.Error, Stripe.Balance.Retrieve.Error>)
                -> Stripe.Balance
    }
}
