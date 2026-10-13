import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.InvoiceItems {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Billing.InvoiceItems.Create.Request)
        case retrieve(id: Stripe.Billing.Invoice.Item.ID)
        case update(
            id: Stripe.Billing.Invoice.Item.ID,
            request: Stripe.Billing.InvoiceItems.Update.Request
        )
        case list(request: Stripe.Billing.InvoiceItems.List.Request)
        case delete(id: Stripe.Billing.Invoice.Item.ID)
    }
}
