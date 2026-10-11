//
//  File.swift
//  coenttb-stripe
//
//  Created by Coen ten Thije Boonkkamp on 04/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.PaymentIntents {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/payment_intents/create.md
        case create(request: Stripe.PaymentIntents.Create.Request)
        // https://docs.stripe.com/api/payment_intents/update.md
        case update(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.Update.Request
        )
        // https://docs.stripe.com/api/payment_intents/retrieve.md
        case retrieve(id: Stripe.PaymentIntents.PaymentIntent.ID)
        // https://docs.stripe.com/api/payment_intents/list.md
        case list(request: Stripe.PaymentIntents.List.Request)
        // https://docs.stripe.com/api/payment_intents/cancel.md
        case cancel(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.Cancel.Request
        )
        // https://docs.stripe.com/api/payment_intents/capture.md
        case capture(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.Capture.Request
        )
        // https://docs.stripe.com/api/payment_intents/confirm.md
        case confirm(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.Confirm.Request
        )
        // https://docs.stripe.com/api/payment_intents/increment_authorization.md
        case incrementAuthorization(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.IncrementAuthorization.Request
        )
        // https://docs.stripe.com/api/payment_intents/apply_customer_balance.md
        case applyCustomerBalance(id: Stripe.PaymentIntents.PaymentIntent.ID)
        // https://docs.stripe.com/api/payment_intents/search.md
        case search(request: Stripe.PaymentIntents.Search.Request)
        // https://docs.stripe.com/api/payment_intents/verify_microdeposits.md
        case verifyMicrodeposits(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.VerifyMicrodeposits.Request
        )
    }
}
