//
//  Stripe Connect Account Session Types API.swift
//  swift-stripe-types
//
//  Created on 2025-01-14.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Connect.Account.Session {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/account_sessions/create.md
        case create(request: Create.Request)
    }
}
