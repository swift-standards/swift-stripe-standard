//
//  Stripe Charges Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Charges {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/charges/create.md
        case create(request: Stripe.Charges.Create.Request)
        // https://docs.stripe.com/api/charges/retrieve.md
        case retrieve(id: Stripe.Charges.Charge.ID)
        // https://docs.stripe.com/api/charges/update.md
        case update(id: Stripe.Charges.Charge.ID, request: Stripe.Charges.Update.Request)
        // https://docs.stripe.com/api/charges/list.md
        case list(request: Stripe.Charges.List.Request)
        // https://docs.stripe.com/api/charges/capture.md
        case capture(id: Stripe.Charges.Charge.ID, request: Stripe.Charges.Capture.Request)
        // https://docs.stripe.com/api/charges/search.md
        case search(request: Stripe.Charges.Search.Request)
    }
}
