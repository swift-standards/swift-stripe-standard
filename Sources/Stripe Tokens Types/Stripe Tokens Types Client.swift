public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Tokens {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Tokens.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Tokens.Create.Error
            >) ->
                Stripe.Tokens.Token

        public var retrieve:
            @Sendable (_ id: Stripe.Tokens.Token.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Tokens.Retrieve.Error
            >) ->
                Stripe.Tokens.Token
    }
}
