//
//  Stripe Billing Subscription Schedule Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.Subscription.Schedule {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/subscriptionSchedules/create.md
        case create(request: Stripe.Billing.Subscription.Schedule.Create.Request)
        // https://docs.stripe.com/api/subscriptionSchedules/retrieve.md
        case retrieve(id: Stripe.Billing.Subscription.Schedule.ID)
        // https://docs.stripe.com/api/subscriptionSchedules/update.md
        case update(
            id: Stripe.Billing.Subscription.Schedule.ID,
            request: Stripe.Billing.Subscription.Schedule.Update.Request
        )
        // https://docs.stripe.com/api/subscriptionSchedules/list.md
        case list(request: Stripe.Billing.Subscription.Schedule.List.Request)
        // https://docs.stripe.com/api/subscriptionSchedules/cancel.md
        case cancel(
            id: Stripe.Billing.Subscription.Schedule.ID,
            request: Stripe.Billing.Subscription.Schedule.Cancel.Request
        )
        // https://docs.stripe.com/api/subscriptionSchedules/release.md
        case release(
            id: Stripe.Billing.Subscription.Schedule.ID,
            request: Stripe.Billing.Subscription.Schedule.Release.Request
        )
    }
}
