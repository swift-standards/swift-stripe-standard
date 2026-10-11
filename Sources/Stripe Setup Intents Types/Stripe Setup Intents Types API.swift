//
//  Stripe Setup Intents Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Setup.Intents {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/setup_intents/create.md
        case create(request: Stripe.Setup.Intents.Create.Request)
        // https://docs.stripe.com/api/setup_intents/retrieve.md
        case retrieve(id: Stripe.Setup.Intent.ID)
        // https://docs.stripe.com/api/setup_intents/update.md
        case update(id: Stripe.Setup.Intent.ID, request: Stripe.Setup.Intents.Update.Request)
        // https://docs.stripe.com/api/setup_intents/list.md
        case list(request: Stripe.Setup.Intents.List.Request)
        // https://docs.stripe.com/api/setup_intents/confirm.md
        case confirm(id: Stripe.Setup.Intent.ID, request: Stripe.Setup.Intents.Confirm.Request)
        // https://docs.stripe.com/api/setup_intents/cancel.md
        case cancel(id: Stripe.Setup.Intent.ID, request: Stripe.Setup.Intents.Cancel.Request)
        // https://docs.stripe.com/api/setup_intents/verify_microdeposits.md
        case verifyMicrodeposits(
            id: Stripe.Setup.Intent.ID,
            request: Stripe.Setup.Intents.VerifyMicrodeposits.Request
        )
    }
}
