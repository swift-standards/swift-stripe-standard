public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.UsageRecords {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (
                _ subscriptionItemId: Stripe.Billing.SubscriptionItems.SubscriptionItem.ID,
                _ request: Create.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.UsageRecords.Create.Error>)
                -> UsageRecord

        public var list:
            @Sendable (
                _ subscriptionItemId: Stripe.Billing.SubscriptionItems.SubscriptionItem.ID,
                _ request: List.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.UsageRecords.List.Error>) ->
                List.Response
    }
}
