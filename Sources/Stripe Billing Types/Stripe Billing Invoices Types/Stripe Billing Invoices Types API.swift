import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Invoices {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Billing.Invoices.Create.Request)
        case createPreview(request: Stripe.Billing.Invoices.CreatePreview.Request)
        case retrieve(id: Stripe.Billing.Invoice.ID)
        case update(id: Stripe.Billing.Invoice.ID, request: Stripe.Billing.Invoices.Update.Request)
        case list(request: Stripe.Billing.Invoices.List.Request)
        case delete(id: Stripe.Billing.Invoice.ID)
        case finalize(
            id: Stripe.Billing.Invoice.ID,
            request: Stripe.Billing.Invoices.Finalize.Request
        )
        case pay(id: Stripe.Billing.Invoice.ID, request: Stripe.Billing.Invoices.Pay.Request)
        case send(id: Stripe.Billing.Invoice.ID, request: Stripe.Billing.Invoices.Send.Request)
        case void(id: Stripe.Billing.Invoice.ID, request: Stripe.Billing.Invoices.Void.Request)
    }
}
