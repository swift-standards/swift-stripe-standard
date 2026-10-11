import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Terminal.Locations {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/terminal/locations/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/terminal/locations/retrieve.md
        case retrieve(id: Location.ID)
        // https://docs.stripe.com/api/terminal/locations/update.md
        case update(id: Location.ID, request: Update.Request)
        // https://docs.stripe.com/api/terminal/locations/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/terminal/locations/delete.md
        case delete(id: Location.ID)
    }
}
