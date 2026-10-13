public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Subscription.Schedule {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Billing.Subscription.Schedule.Create.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.Subscription.Schedule.Create.Error
                >)
                ->
                Stripe.Billing.Subscription.Schedule

        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Subscription.Schedule.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Subscription.Schedule.Retrieve.Error
            >)
                ->
                Stripe.Billing.Subscription.Schedule

        public var update:
            @Sendable (
                _ id: Stripe.Billing.Subscription.Schedule.ID,
                _ request: Stripe.Billing.Subscription.Schedule.Update.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Subscription.Schedule.Update.Error
            >) -> Stripe.Billing.Subscription.Schedule

        public var list:
            @Sendable (_ request: Stripe.Billing.Subscription.Schedule.List.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.Subscription.Schedule.List.Error
                >) ->
                Stripe.Billing.Subscription.Schedule.List.Response

        public var cancel:
            @Sendable (
                _ id: Stripe.Billing.Subscription.Schedule.ID,
                _ request: Stripe.Billing.Subscription.Schedule.Cancel.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Subscription.Schedule.Cancel.Error
            >) -> Stripe.Billing.Subscription.Schedule

        public var release:
            @Sendable (
                _ id: Stripe.Billing.Subscription.Schedule.ID,
                _ request: Stripe.Billing.Subscription.Schedule.Release.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Subscription.Schedule.Release.Error
            >) -> Stripe.Billing.Subscription.Schedule
    }
}
