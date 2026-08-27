//
//  Stripe Balance Transactions Types Client.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.BalanceTransactions {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/balanceTransactions/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Balance.Transaction.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.BalanceTransactions.Retrieve.Error
            >) ->
                Stripe.Balance.Transaction

        // https://docs.stripe.com/api/balanceTransactions/list.md
        public var list:
            @Sendable (_ request: Stripe.BalanceTransactions.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.BalanceTransactions.List.Error
            >) ->
                Stripe.BalanceTransactions.List.Response
    }
}
