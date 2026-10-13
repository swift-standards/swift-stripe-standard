import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Terminal.Locations {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Location.ID)
        case update(id: Location.ID, request: Update.Request)
        case list(request: List.Request)
        case delete(id: Location.ID)
    }
}
