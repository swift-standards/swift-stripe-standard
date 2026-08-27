import Async_Lifecycle
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Checkout.Sessions {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Checkout.Sessions.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Checkout.Sessions.Create.Error
            >) ->
                Stripe.Checkout.Session

        public var update:
            @Sendable (
                _ id: Stripe.Checkout.Session.ID, _ request: Stripe.Checkout.Sessions.Update.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Checkout.Sessions.Update.Error>) ->
                Stripe.Checkout.Session

        public var retrieve:
            @Sendable (_ id: Stripe.Checkout.Session.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Checkout.Sessions.Retrieve.Error
            >) ->
                Stripe.Checkout.Session

        public var list:
            @Sendable (_ request: Stripe.Checkout.Sessions.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Checkout.Sessions.List.Error
            >) ->
                Stripe.Checkout.Sessions.List.Response

        public var expire:
            @Sendable (_ id: Stripe.Checkout.Session.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Checkout.Sessions.Expire.Error
            >) ->
                Stripe.Checkout.Session

        public var lineItems:
            @Sendable (
                _ id: Stripe.Checkout.Session.ID,
                _ request: Stripe.Checkout.Sessions.LineItems.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Checkout.Sessions.LineItems.Error>)
                -> Stripe.Checkout.Sessions.LineItems.Response
    }
}
