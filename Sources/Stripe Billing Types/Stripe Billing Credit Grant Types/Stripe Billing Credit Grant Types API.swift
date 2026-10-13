import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Credit.Grant {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: ID)
        case update(id: ID, request: Update.Request)
        case list(request: List.Request)
        case expire(id: ID, request: Expire.Request)
        case void(id: ID, request: Void.Request)
    }
}
