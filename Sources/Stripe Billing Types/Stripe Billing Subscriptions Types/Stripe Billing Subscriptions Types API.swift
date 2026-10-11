//
//  File.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 05/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Subscriptions {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/subscriptions/create.md
        case create(request: Stripe.Billing.Subscriptions.Create.Request)
        // https://docs.stripe.com/api/subscriptions/update.md
        case update(
            id: Stripe.Billing.Subscription.ID,
            request: Stripe.Billing.Subscriptions.Update.Request
        )
        // https://docs.stripe.com/api/subscriptions/retrieve.md
        case retrieve(id: Stripe.Billing.Subscription.ID)
        // https://docs.stripe.com/api/subscriptions/list.md
        case list(request: Stripe.Billing.Subscriptions.List.Request)
        // https://docs.stripe.com/api/subscriptions/cancel.md
        case cancel(
            id: Stripe.Billing.Subscription.ID,
            request: Stripe.Billing.Subscriptions.Cancel.Request
        )
    }
}
