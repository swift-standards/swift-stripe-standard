//
//  Stripe Refunds Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Refunds {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/refunds/create.md
        case create(request: Stripe.Refunds.Create.Request)
        // https://docs.stripe.com/api/refunds/retrieve.md
        case retrieve(id: Stripe.Refunds.Refund.ID)
        // https://docs.stripe.com/api/refunds/update.md
        case update(id: Stripe.Refunds.Refund.ID, request: Stripe.Refunds.Update.Request)
        // https://docs.stripe.com/api/refunds/list.md
        case list(request: Stripe.Refunds.List.Request)
        // https://docs.stripe.com/api/refunds/cancel.md
        case cancel(id: Stripe.Refunds.Refund.ID)
    }
}
