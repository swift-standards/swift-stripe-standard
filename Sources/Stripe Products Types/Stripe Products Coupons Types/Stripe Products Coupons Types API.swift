import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Products.Coupons {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/coupons/create.md
        case create(request: Stripe.Products.Coupons.Create.Request)
        // https://docs.stripe.com/api/coupons/update.md
        case update(id: Stripe.Products.Coupon.ID, request: Stripe.Products.Coupons.Update.Request)
        // https://docs.stripe.com/api/coupons/retrieve.md
        case retrieve(id: Stripe.Products.Coupon.ID)
        // https://docs.stripe.com/api/coupons/list.md
        case list(request: Stripe.Products.Coupons.List.Request)
        // https://docs.stripe.com/api/coupons/delete.md
        case delete(id: Stripe.Products.Coupon.ID)
    }
}
