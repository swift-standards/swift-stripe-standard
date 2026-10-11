//
//  Stripe Billing Quotes Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Quotes {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/quotes/create.md
        case create(request: Create.Request)

        // https://docs.stripe.com/api/quotes/retrieve.md
        case retrieve(id: Stripe.Billing.Quotes.Quote.ID)

        // https://docs.stripe.com/api/quotes/update.md
        case update(id: Stripe.Billing.Quotes.Quote.ID, request: Update.Request)

        // https://docs.stripe.com/api/quotes/list.md
        case list(request: List.Request)

        // https://docs.stripe.com/api/quotes/accept.md
        case accept(id: Stripe.Billing.Quotes.Quote.ID, request: Accept.Request)

        // https://docs.stripe.com/api/quotes/cancel.md
        case cancel(id: Stripe.Billing.Quotes.Quote.ID, request: Cancel.Request)

        // https://docs.stripe.com/api/quotes/finalize.md
        case finalize(id: Stripe.Billing.Quotes.Quote.ID, request: Finalize.Request)

        // https://docs.stripe.com/api/quotes/pdf.md
        case pdf(id: Stripe.Billing.Quotes.Quote.ID)

        // https://docs.stripe.com/api/quotes/lineItems.md
        case listLineItems(id: Stripe.Billing.Quotes.Quote.ID, request: List.LineItems.Request)

        // https://docs.stripe.com/api/quotes/computedUpfrontLineItems.md
        case listComputedUpfrontLineItems(
            id: Stripe.Billing.Quotes.Quote.ID,
            request: List.ComputedUpfrontLineItems.Request
        )
    }
}
