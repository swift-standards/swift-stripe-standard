import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products.Prices {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Products.Prices.Create.Request)
        case update(id: Stripe.Products.Price.ID, request: Stripe.Products.Prices.Update.Request)
        case retrieve(id: Stripe.Products.Price.ID)
        case list(request: Stripe.Products.Prices.List.Request)
        case search(request: Stripe.Products.Prices.Search.Request)
    }
}
