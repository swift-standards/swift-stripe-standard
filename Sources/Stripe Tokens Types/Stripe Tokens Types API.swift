//
//  Stripe Tokens Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Tokens {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/tokens/create.md
        case create(request: Stripe.Tokens.Create.Request)
        // https://docs.stripe.com/api/tokens/retrieve.md
        case retrieve(id: Stripe.Tokens.Token.ID)
    }
}
