//
//  Stripe Mandates Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Mandates {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/mandates/retrieve.md
        case retrieve(id: Stripe.Mandates.Mandate.ID)
    }
}
