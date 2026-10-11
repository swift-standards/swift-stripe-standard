//
//  Stripe Billing Credit Notes Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.CreditNotes {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/creditNotes/create.md
        case create(request: Stripe.Billing.CreditNotes.Create.Request)
        // https://docs.stripe.com/api/creditNotes/update.md
        case update(
            id: Stripe.Billing.Credit.Note.ID,
            request: Stripe.Billing.CreditNotes.Update.Request
        )
        // https://docs.stripe.com/api/creditNotes/retrieve.md
        case retrieve(id: Stripe.Billing.Credit.Note.ID)
        // https://docs.stripe.com/api/creditNotes/list.md
        case list(request: Stripe.Billing.CreditNotes.List.Request)
        // https://docs.stripe.com/api/creditNotes/preview.md
        case preview(request: Stripe.Billing.CreditNotes.Preview.Request)
        // https://docs.stripe.com/api/creditNotes/void.md
        case void(
            id: Stripe.Billing.Credit.Note.ID,
            request: Stripe.Billing.CreditNotes.Void.Request
        )
        // https://docs.stripe.com/api/creditNotes/lines.md
        case lines(
            id: Stripe.Billing.Credit.Note.ID,
            request: Stripe.Billing.CreditNotes.Lines.Request
        )
        // https://docs.stripe.com/api/creditNotes/preview_lines.md
        case previewLines(request: Stripe.Billing.CreditNotes.PreviewLines.Request)
    }
}
