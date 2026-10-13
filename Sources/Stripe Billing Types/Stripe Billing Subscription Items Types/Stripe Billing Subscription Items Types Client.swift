public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.SubscriptionItems {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Billing.SubscriptionItems.Create.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.SubscriptionItems.Create.Error
                >) ->
                Stripe.Billing.Subscription.Item

        public var update:
            @Sendable (
                _ id: Stripe.Billing.Subscription.Item.ID,
                _ request: Stripe.Billing.SubscriptionItems.Update.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.SubscriptionItems.Update.Error
            >) -> Stripe.Billing.Subscription.Item

        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Subscription.Item.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.SubscriptionItems.Retrieve.Error
            >) ->
                Stripe.Billing.Subscription.Item

        public var list:
            @Sendable (_ request: Stripe.Billing.SubscriptionItems.List.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.SubscriptionItems.List.Error
                >) ->
                Stripe.Billing.SubscriptionItems.List.Response

        public var delete:
            @Sendable (_ id: Stripe.Billing.Subscription.Item.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.SubscriptionItems.Delete.Error
            >) ->
                DeletedObject<
                    Stripe.Billing.Subscription.Item
                >
    }
}
