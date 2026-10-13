public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.WebhookEndpoint {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.WebhookEndpoint.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.WebhookEndpoint.Create.Error
            >) -> Webhook

        public var retrieve:
            @Sendable (_ id: Stripe.WebhookEndpoint.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.WebhookEndpoint.Retrieve.Error
            >) -> Webhook

        public var update:
            @Sendable (
                _ id: Stripe.WebhookEndpoint.ID, _ request: Stripe.WebhookEndpoint.Update.Request
            )
                async throws(Either<Async.Lifecycle.Error, Stripe.WebhookEndpoint.Update.Error>) ->
                Webhook

        public var list:
            @Sendable (_ request: Stripe.WebhookEndpoint.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.WebhookEndpoint.List.Error
            >)
                -> List.Response

        public var delete:
            @Sendable (_ id: Stripe.WebhookEndpoint.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.WebhookEndpoint.Delete.Error
            >) ->
                DeletedObject<
                    Stripe.WebhookEndpoint
                >
    }
}
