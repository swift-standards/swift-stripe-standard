import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products {
    public enum API: Equatable, Sendable {
        case products(Stripe.Products.Products.API)
        case prices(Stripe.Products.Prices.API)
        case coupons(Stripe.Products.Coupons.API)
        case promotionCodes(Stripe.Products.PromotionCodes.API)
        case discounts(Stripe.Products.Discounts.API)
        case taxRates(Stripe.Products.TaxRates.API)
        case shippingRates(Stripe.Products.ShippingRates.API)
    }
}
