import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Products.PromotionCodes {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Promotion.Code.ID)
        case update(id: Promotion.Code.ID, request: Update.Request)
        case list(request: List.Request)
    }
}
