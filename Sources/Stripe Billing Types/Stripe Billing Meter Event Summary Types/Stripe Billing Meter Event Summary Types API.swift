//
//  Stripe Billing Meter Event Summary Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.MeterEventSummary {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/billing/meter-event-summary/list.md
        case list(meterId: String, request: List.Request)
    }
}
