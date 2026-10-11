//
//  Stripe Billing Meter Events Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.MeterEvents {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/billing/meter-event/create.md
        case create(request: Create.Request)
    }
}
