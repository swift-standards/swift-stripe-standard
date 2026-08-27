//
//  Stripe Balance Types Client.swift
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

extension Stripe.Balance {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/balance/retrieve.md
        public var retrieve:
            @Sendable () async throws(Either<Async.Lifecycle.Error, Stripe.Balance.Retrieve.Error>)
                -> Stripe.Balance
    }
}
