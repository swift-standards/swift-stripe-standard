//
//  Stripe Billing Invoice Items Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.InvoiceItems {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/invoiceitems/create.md
        case create(request: Stripe.Billing.InvoiceItems.Create.Request)
        // https://docs.stripe.com/api/invoiceitems/retrieve.md
        case retrieve(id: Stripe.Billing.Invoice.Item.ID)
        // https://docs.stripe.com/api/invoiceitems/update.md
        case update(
            id: Stripe.Billing.Invoice.Item.ID,
            request: Stripe.Billing.InvoiceItems.Update.Request
        )
        // https://docs.stripe.com/api/invoiceitems/list.md
        case list(request: Stripe.Billing.InvoiceItems.List.Request)
        // https://docs.stripe.com/api/invoiceitems/delete.md
        case delete(id: Stripe.Billing.Invoice.Item.ID)
    }
}
