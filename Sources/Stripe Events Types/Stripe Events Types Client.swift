public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Events {
    @Witness
    public struct Client: Sendable {
        public var retrieve:
            @Sendable (_ id: Stripe.Events.Event.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Events.Retrieve.Error
            >) ->
                Stripe.Events.Event

        public var list:
            @Sendable (_ request: Stripe.Events.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Events.List.Error
            >) ->
                Stripe.Events.List.Response
    }
}
