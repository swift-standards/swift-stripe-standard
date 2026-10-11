//
//  Stripe Billing Invoices Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Invoices {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/invoices/create.md
        case create(request: Stripe.Billing.Invoices.Create.Request)
        // https://docs.stripe.com/api/invoices/create_preview.md
        case createPreview(request: Stripe.Billing.Invoices.CreatePreview.Request)
        // https://docs.stripe.com/api/invoices/retrieve.md
        case retrieve(id: Stripe.Billing.Invoice.ID)
        // https://docs.stripe.com/api/invoices/update.md
        case update(id: Stripe.Billing.Invoice.ID, request: Stripe.Billing.Invoices.Update.Request)
        // https://docs.stripe.com/api/invoices/list.md
        case list(request: Stripe.Billing.Invoices.List.Request)
        // https://docs.stripe.com/api/invoices/delete.md
        case delete(id: Stripe.Billing.Invoice.ID)
        // https://docs.stripe.com/api/invoices/finalize_invoice.md
        case finalize(
            id: Stripe.Billing.Invoice.ID,
            request: Stripe.Billing.Invoices.Finalize.Request
        )
        // https://docs.stripe.com/api/invoices/pay.md
        case pay(id: Stripe.Billing.Invoice.ID, request: Stripe.Billing.Invoices.Pay.Request)
        // https://docs.stripe.com/api/invoices/send.md
        case send(id: Stripe.Billing.Invoice.ID, request: Stripe.Billing.Invoices.Send.Request)
        // https://docs.stripe.com/api/invoices/void.md
        case void(id: Stripe.Billing.Invoice.ID, request: Stripe.Billing.Invoices.Void.Request)
    }
}
