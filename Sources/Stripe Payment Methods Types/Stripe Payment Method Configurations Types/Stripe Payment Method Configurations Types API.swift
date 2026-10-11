//
//  Stripe Payment Method Configurations Types API.swift
//  swift-stripe-types
//
//  Created for swift-stripe-types on 14/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.PaymentMethodConfigurations {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/payment_method_configurations/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/payment_method_configurations/retrieve.md
        case retrieve(id: Stripe.PaymentMethodConfigurations.Configuration.ID)
        // https://docs.stripe.com/api/payment_method_configurations/update.md
        case update(
            id: Stripe.PaymentMethodConfigurations.Configuration.ID,
            request: Update.Request
        )
        // https://docs.stripe.com/api/payment_method_configurations/list.md
        case list(request: List.Request)
    }
}
