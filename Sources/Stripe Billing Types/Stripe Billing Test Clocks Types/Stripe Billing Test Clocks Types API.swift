//
//  Stripe Billing Test Clocks Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.TestClocks {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/testClocks/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/testClocks/retrieve.md
        case retrieve(id: Stripe.Billing.TestClocks.TestClock.ID)
        // https://docs.stripe.com/api/testClocks/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/testClocks/delete.md
        case delete(id: Stripe.Billing.TestClocks.TestClock.ID)
        // https://docs.stripe.com/api/testClocks/advance.md
        case advance(id: Stripe.Billing.TestClocks.TestClock.ID, request: Advance.Request)
    }
}
