import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.PaymentLinks {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.PaymentLinks.Create.Request)
        case update(id: Stripe.PaymentLink.ID, request: Stripe.PaymentLinks.Update.Request)
        case retrieve(id: Stripe.PaymentLink.ID)
        case list(request: Stripe.PaymentLinks.List.Request)
        case lineItems(id: Stripe.PaymentLink.ID, request: Stripe.PaymentLinks.LineItems.Request)
    }
}
