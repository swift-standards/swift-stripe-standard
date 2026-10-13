import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Products.ShippingRates {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Stripe.Products.Shipping.Rate.ID)
        case update(id: Stripe.Products.Shipping.Rate.ID, request: Update.Request)
        case list(request: List.Request)
    }
}
