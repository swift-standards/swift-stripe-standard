//
//  Stripe Events Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Events {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/events/retrieve.md
        case retrieve(id: Stripe.Events.Event.ID)
        // https://docs.stripe.com/api/events/list.md
        case list(request: Stripe.Events.List.Request)
    }
}
