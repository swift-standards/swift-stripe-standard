//
//  Stripe Billing Invoice Line Item Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Invoice.LineItems {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/invoice-line-item/retrieve.md
        case list(invoiceId: String, request: Stripe.Billing.Invoice.LineItems.List.Request)
        // https://docs.stripe.com/api/invoice-line-item/update.md
        case update(
            invoiceId: String,
            lineItemId: String,
            request: Stripe.Billing.Invoice.LineItems.Update.Request
        )
        // https://docs.stripe.com/api/invoice-line-item/bulk.md
        case addLines(invoiceId: String, request: Stripe.Billing.Invoice.LineItems.AddLines.Request)
        // https://docs.stripe.com/api/invoice-line-item/bulk-update.md
        case updateLines(
            invoiceId: String,
            request: Stripe.Billing.Invoice.LineItems.UpdateLines.Request
        )
        // https://docs.stripe.com/api/invoice-line-item/invoices/remove-lines/bulk.md
        case removeLines(
            invoiceId: String,
            request: Stripe.Billing.Invoice.LineItems.RemoveLines.Request
        )
    }
}
