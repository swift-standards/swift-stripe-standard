import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Forwarding.Request {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Stripe.Forwarding.Request.ID)
        case list(request: List.Request)
    }
}
