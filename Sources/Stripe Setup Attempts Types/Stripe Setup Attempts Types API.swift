//
//  Stripe Setup Attempts Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Setup.Attempts {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/setup_attempts/list.md
        case list(request: Stripe.Setup.Attempts.List.Request)
    }
}
