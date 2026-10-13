public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Payouts {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Payouts.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Payouts.Create.Error
            >) ->
                Stripe.Payouts.Payout

        public var retrieve:
            @Sendable (_ id: Stripe.Payouts.Payout.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Payouts.Retrieve.Error
            >) ->
                Stripe.Payouts.Payout

        public var update:
            @Sendable (_ id: Stripe.Payouts.Payout.ID, _ request: Stripe.Payouts.Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Payouts.Update.Error>) ->
                Stripe.Payouts.Payout

        public var list:
            @Sendable (_ request: Stripe.Payouts.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Payouts.List.Error
            >) ->
                Stripe.Payouts.List.Response

        public var cancel:
            @Sendable (_ id: Stripe.Payouts.Payout.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Payouts.Cancel.Error
            >) ->
                Stripe.Payouts.Payout

        public var reverse:
            @Sendable (_ id: Stripe.Payouts.Payout.ID, _ request: Stripe.Payouts.Reverse.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Payouts.Reverse.Error>) ->
                Stripe.Payouts.Payout
    }
}
