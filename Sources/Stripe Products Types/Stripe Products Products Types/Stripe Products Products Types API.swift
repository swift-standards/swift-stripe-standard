import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products.Products {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Products.Products.Create.Request)
        case update(
            id: Stripe.Products.Product.ID,
            request: Stripe.Products.Products.Update.Request
        )
        case retrieve(id: Stripe.Products.Product.ID)
        case list(request: Stripe.Products.Products.List.Request)
        case delete(id: Stripe.Products.Product.ID)
        case search(request: Stripe.Products.Products.Search.Request)
    }
}
