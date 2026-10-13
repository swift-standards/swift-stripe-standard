import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Invoice.LineItems {
    public enum API: Equatable, Sendable {
        case list(invoiceId: String, request: Stripe.Billing.Invoice.LineItems.List.Request)
        case update(
            invoiceId: String,
            lineItemId: String,
            request: Stripe.Billing.Invoice.LineItems.Update.Request
        )
        case addLines(invoiceId: String, request: Stripe.Billing.Invoice.LineItems.AddLines.Request)
        case updateLines(
            invoiceId: String,
            request: Stripe.Billing.Invoice.LineItems.UpdateLines.Request
        )
        case removeLines(
            invoiceId: String,
            request: Stripe.Billing.Invoice.LineItems.RemoveLines.Request
        )
    }
}
