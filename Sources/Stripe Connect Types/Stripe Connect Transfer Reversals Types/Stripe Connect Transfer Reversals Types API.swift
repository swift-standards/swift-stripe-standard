//
//  Stripe Connect Transfer Reversals Types API.swift
//  swift-stripe-types
//
//  Created on 2025-01-14.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Connect.Transfer.Reversals {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/transfer_reversals/create.md
        case create(transferId: Stripe.Connect.Transfer.ID, request: Create.Request)
        // https://docs.stripe.com/api/transfer_reversals/retrieve.md
        case retrieve(
            transferId: Stripe.Connect.Transfer.ID,
            reversalId: Stripe.Connect.Transfer.Reversal.ID
        )
        // https://docs.stripe.com/api/transfer_reversals/update.md
        case update(
            transferId: Stripe.Connect.Transfer.ID,
            reversalId: Stripe.Connect.Transfer.Reversal.ID,
            request: Update.Request
        )
        // https://docs.stripe.com/api/transfer_reversals/list.md
        case list(transferId: Stripe.Connect.Transfer.ID, request: List.Request)
    }
}
