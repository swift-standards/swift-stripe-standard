import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Checkout.Sessions {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Checkout.Sessions.Create.Request)
        case update(
            id: Stripe.Checkout.Session.ID,
            request: Stripe.Checkout.Sessions.Update.Request
        )
        case retrieve(id: Stripe.Checkout.Session.ID)
        case list(request: Stripe.Checkout.Sessions.List.Request)
        case expire(id: Stripe.Checkout.Session.ID)
        case lineItems(
            id: Stripe.Checkout.Session.ID,
            request: Stripe.Checkout.Sessions.LineItems.Request
        )
    }
}
