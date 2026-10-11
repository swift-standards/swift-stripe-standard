//
//  Stripe Disputes Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Disputes {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/disputes/retrieve.md
        case retrieve(id: Stripe.Disputes.Dispute.ID)
        // https://docs.stripe.com/api/disputes/update.md
        case update(id: Stripe.Disputes.Dispute.ID, request: Stripe.Disputes.Update.Request)
        // https://docs.stripe.com/api/disputes/list.md
        case list(request: Stripe.Disputes.List.Request)
        // https://docs.stripe.com/api/disputes/close.md
        case close(id: Stripe.Disputes.Dispute.ID)
    }
}
