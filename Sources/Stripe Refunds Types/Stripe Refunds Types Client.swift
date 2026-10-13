public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Refunds {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Refunds.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Refunds.Create.Error
            >) ->
                Stripe.Refunds.Refund

        public var retrieve:
            @Sendable (_ id: Stripe.Refunds.Refund.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Refunds.Retrieve.Error
            >) ->
                Stripe.Refunds.Refund

        public var update:
            @Sendable (_ id: Stripe.Refunds.Refund.ID, _ request: Stripe.Refunds.Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Refunds.Update.Error>) ->
                Stripe.Refunds.Refund

        public var list:
            @Sendable (_ request: Stripe.Refunds.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Refunds.List.Error
            >) ->
                Stripe.Refunds.List.Response

        public var cancel:
            @Sendable (_ id: Stripe.Refunds.Refund.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Refunds.Cancel.Error
            >) ->
                Stripe.Refunds.Refund
    }
}
