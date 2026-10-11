//
//  Stripe Balance Transactions Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.BalanceTransactions {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/balanceTransactions/retrieve.md
        case retrieve(id: Stripe.Balance.Transaction.ID)
        // https://docs.stripe.com/api/balanceTransactions/list.md
        case list(request: Stripe.BalanceTransactions.List.Request)
    }
}
