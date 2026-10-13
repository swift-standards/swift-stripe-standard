import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.CreditNotes {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Billing.CreditNotes.Create.Request)
        case update(
            id: Stripe.Billing.Credit.Note.ID,
            request: Stripe.Billing.CreditNotes.Update.Request
        )
        case retrieve(id: Stripe.Billing.Credit.Note.ID)
        case list(request: Stripe.Billing.CreditNotes.List.Request)
        case preview(request: Stripe.Billing.CreditNotes.Preview.Request)
        case void(
            id: Stripe.Billing.Credit.Note.ID,
            request: Stripe.Billing.CreditNotes.Void.Request
        )
        case lines(
            id: Stripe.Billing.Credit.Note.ID,
            request: Stripe.Billing.CreditNotes.Lines.Request
        )
        case previewLines(request: Stripe.Billing.CreditNotes.PreviewLines.Request)
    }
}
