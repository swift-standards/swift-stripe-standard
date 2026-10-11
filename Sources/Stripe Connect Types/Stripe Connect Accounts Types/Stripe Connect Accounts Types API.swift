//
//  Stripe Connect Accounts Types API.swift
//  swift-stripe-types
//
//  Created by coenttb on 2025-01-14.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Connect.Accounts {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/accounts/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/accounts/retrieve.md
        case retrieve(id: Stripe.Connect.Account.ID)
        // https://docs.stripe.com/api/accounts/update.md
        case update(id: Stripe.Connect.Account.ID, request: Update.Request)
        // https://docs.stripe.com/api/accounts/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/accounts/delete.md
        case delete(id: Stripe.Connect.Account.ID)
        // https://docs.stripe.com/api/accounts/reject.md
        case reject(id: Stripe.Connect.Account.ID, request: Reject.Request)
    }
}
