//
//  Stripe Billing Subscription Items Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.SubscriptionItems {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/subscriptionItems/create.md
        case create(request: Stripe.Billing.SubscriptionItems.Create.Request)
        // https://docs.stripe.com/api/subscriptionItems/update.md
        case update(
            id: Stripe.Billing.Subscription.Item.ID,
            request: Stripe.Billing.SubscriptionItems.Update.Request
        )
        // https://docs.stripe.com/api/subscriptionItems/retrieve.md
        case retrieve(id: Stripe.Billing.Subscription.Item.ID)
        // https://docs.stripe.com/api/subscriptionItems/list.md
        case list(request: Stripe.Billing.SubscriptionItems.List.Request)
        // https://docs.stripe.com/api/subscriptionItems/delete.md
        case delete(id: Stripe.Billing.Subscription.Item.ID)
    }
}
