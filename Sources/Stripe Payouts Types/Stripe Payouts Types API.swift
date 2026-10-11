//
//  Stripe Payouts Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Payouts {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/payouts/create.md
        case create(request: Stripe.Payouts.Create.Request)
        // https://docs.stripe.com/api/payouts/retrieve.md
        case retrieve(id: Stripe.Payouts.Payout.ID)
        // https://docs.stripe.com/api/payouts/update.md
        case update(id: Stripe.Payouts.Payout.ID, request: Stripe.Payouts.Update.Request)
        // https://docs.stripe.com/api/payouts/list.md
        case list(request: Stripe.Payouts.List.Request)
        // https://docs.stripe.com/api/payouts/cancel.md
        case cancel(id: Stripe.Payouts.Payout.ID)
        // https://docs.stripe.com/api/payouts/reverse.md
        case reverse(id: Stripe.Payouts.Payout.ID, request: Stripe.Payouts.Reverse.Request)
    }
}
