import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Forwarding.Request {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/forwarding/request/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/forwarding/request/retrieve.md
        case retrieve(id: Stripe.Forwarding.Request.ID)
        // https://docs.stripe.com/api/forwarding/request/list.md
        case list(request: List.Request)
    }
}
