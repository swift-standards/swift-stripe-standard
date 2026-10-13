public import Async_Lifecycle
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.PaymentLinks {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.PaymentLinks.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentLinks.Create.Error
            >)
                ->
                Stripe.PaymentLink

        public var update:
            @Sendable (_ id: Stripe.PaymentLink.ID, _ request: Stripe.PaymentLinks.Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.PaymentLinks.Update.Error>) ->
                Stripe.PaymentLink

        public var retrieve:
            @Sendable (_ id: Stripe.PaymentLink.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentLinks.Retrieve.Error
            >) ->
                Stripe.PaymentLink

        public var list:
            @Sendable (_ request: Stripe.PaymentLinks.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentLinks.List.Error
            >) ->
                Stripe.PaymentLinks.List.Response

        public var lineItems:
            @Sendable (
                _ id: Stripe.PaymentLink.ID, _ request: Stripe.PaymentLinks.LineItems.Request
            )
                async throws(Either<Async.Lifecycle.Error, Stripe.PaymentLinks.LineItems.Error>) ->
                Stripe.PaymentLinks.LineItems.Response
    }
}
