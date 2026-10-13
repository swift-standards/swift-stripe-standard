import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Products.Coupons {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Products.Coupons.Create.Request)
        case update(id: Stripe.Products.Coupon.ID, request: Stripe.Products.Coupons.Update.Request)
        case retrieve(id: Stripe.Products.Coupon.ID)
        case list(request: Stripe.Products.Coupons.List.Request)
        case delete(id: Stripe.Products.Coupon.ID)
    }
}
