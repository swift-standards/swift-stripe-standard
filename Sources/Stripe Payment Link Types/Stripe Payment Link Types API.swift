import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.PaymentLinks {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/payment-link/create.md
        case create(request: Stripe.PaymentLinks.Create.Request)
        // https://docs.stripe.com/api/payment-link/update.md
        case update(id: Stripe.PaymentLink.ID, request: Stripe.PaymentLinks.Update.Request)
        // https://docs.stripe.com/api/payment-link/retrieve.md
        case retrieve(id: Stripe.PaymentLink.ID)
        // https://docs.stripe.com/api/payment-link/list.md
        case list(request: Stripe.PaymentLinks.List.Request)
        // https://docs.stripe.com/api/payment-link/retrieve-line-items.md
        case lineItems(id: Stripe.PaymentLink.ID, request: Stripe.PaymentLinks.LineItems.Request)
    }
}
