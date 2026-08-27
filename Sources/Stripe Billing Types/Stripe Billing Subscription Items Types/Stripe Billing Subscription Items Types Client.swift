//
//  Stripe Billing Subscription Items Types Client.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.SubscriptionItems {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/subscriptionItems/create.md
        public var create:
            @Sendable (_ request: Stripe.Billing.SubscriptionItems.Create.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.SubscriptionItems.Create.Error
                >) ->
                Stripe.Billing.Subscription.Item

        // https://docs.stripe.com/api/subscriptionItems/update.md
        public var update:
            @Sendable (
                _ id: Stripe.Billing.Subscription.Item.ID,
                _ request: Stripe.Billing.SubscriptionItems.Update.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.SubscriptionItems.Update.Error
            >) -> Stripe.Billing.Subscription.Item

        // https://docs.stripe.com/api/subscriptionItems/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Subscription.Item.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.SubscriptionItems.Retrieve.Error
            >) ->
                Stripe.Billing.Subscription.Item

        // https://docs.stripe.com/api/subscriptionItems/list.md
        public var list:
            @Sendable (_ request: Stripe.Billing.SubscriptionItems.List.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.SubscriptionItems.List.Error
                >) ->
                Stripe.Billing.SubscriptionItems.List.Response

        // https://docs.stripe.com/api/subscriptionItems/delete.md
        public var delete:
            @Sendable (_ id: Stripe.Billing.Subscription.Item.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.SubscriptionItems.Delete.Error
            >) ->
                DeletedObject<
                    Stripe.Billing.Subscription.Item
                >
    }
}
