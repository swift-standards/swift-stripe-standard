public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Setup.Attempts {
    @Witness
    public struct Client: Sendable {
        public var list:
            @Sendable (_ request: Stripe.Setup.Attempts.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Setup.Attempts.List.Error
            >)
                ->
                Stripe.Setup.Attempts.List.Response
    }
}
