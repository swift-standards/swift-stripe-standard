//
//  Stripe Billing Plans Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.Plans {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/plans/create.md
        case create(request: Stripe.Billing.Plans.Create.Request)
        // https://docs.stripe.com/api/plans/retrieve.md
        case retrieve(id: Stripe.Billing.Plan.ID)
        // https://docs.stripe.com/api/plans/update.md
        case update(id: Stripe.Billing.Plan.ID, request: Stripe.Billing.Plans.Update.Request)
        // https://docs.stripe.com/api/plans/list.md
        case list(request: Stripe.Billing.Plans.List.Request)
        // https://docs.stripe.com/api/plans/delete.md
        case delete(id: Stripe.Billing.Plan.ID)
    }
}
