import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Products.PromotionCodes {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/promotion_codes/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/promotion_codes/retrieve.md
        case retrieve(id: Promotion.Code.ID)
        // https://docs.stripe.com/api/promotion_codes/update.md
        case update(id: Promotion.Code.ID, request: Update.Request)
        // https://docs.stripe.com/api/promotion_codes/list.md
        case list(request: List.Request)
    }
}
