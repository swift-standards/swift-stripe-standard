//
//  File.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 05/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Customers {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Customers.Create.Request)
        case update(id: Stripe.Customers.Customer.ID, request: Stripe.Customers.Update.Request)
        case retrieve(id: Stripe.Customers.Customer.ID)
        case list(request: Stripe.Customers.List.Request)
        case delete(id: Stripe.Customers.Customer.ID)
        case search(request: Stripe.Customers.Search.Request)
        case bankAccounts(BankAccounts.API)
        case cards(Cards.API)
        case cashBalance(CashBalance.API)
        case cashBalanceTransactions(CashBalanceTransactions.API)
    }
}
