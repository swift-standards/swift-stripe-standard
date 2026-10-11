import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Products.ShippingRates {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/shipping_rates/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/shipping_rates/retrieve.md
        case retrieve(id: Stripe.Products.Shipping.Rate.ID)
        // https://docs.stripe.com/api/shipping_rates/update.md
        case update(id: Stripe.Products.Shipping.Rate.ID, request: Update.Request)
        // https://docs.stripe.com/api/shipping_rates/list.md
        case list(request: List.Request)
    }
}
