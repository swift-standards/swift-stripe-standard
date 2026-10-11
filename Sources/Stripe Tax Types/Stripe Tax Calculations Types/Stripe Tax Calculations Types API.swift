//
//  Stripe Tax Calculations Types API.swift
//  swift-stripe-types
//
//  Created on 2025-01-14.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Tax.Calculations {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/tax/calculations/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/tax/calculations/retrieve.md
        case retrieve(id: Stripe.Tax.Calculation.ID)
        // https://docs.stripe.com/api/tax/calculations/lineItems.md
        case listLineItems(id: Stripe.Tax.Calculation.ID, request: List.LineItems.Request)
    }
}
