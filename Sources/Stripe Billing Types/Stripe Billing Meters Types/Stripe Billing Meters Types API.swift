//
//  Stripe Billing Meters Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Meters {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/billing/meter/create.md
        case create(request: Create.Request)

        // https://docs.stripe.com/api/billing/meter/retrieve.md
        case retrieve(id: Stripe.Billing.Meters.Meter.ID)

        // https://docs.stripe.com/api/billing/meter/update.md
        case update(id: Stripe.Billing.Meters.Meter.ID, request: Update.Request)

        // https://docs.stripe.com/api/billing/meter/list.md
        case list(request: List.Request)

        // https://docs.stripe.com/api/billing/meter/deactivate.md
        case deactivate(id: Stripe.Billing.Meters.Meter.ID, request: Deactivate.Request)

        // https://docs.stripe.com/api/billing/meter/reactivate.md
        case reactivate(id: Stripe.Billing.Meters.Meter.ID, request: Reactivate.Request)
    }
}
