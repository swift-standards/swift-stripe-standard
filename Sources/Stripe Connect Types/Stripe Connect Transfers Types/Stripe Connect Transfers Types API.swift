import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Connect.Transfers {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Stripe.Connect.Transfer.ID)
        case update(id: Stripe.Connect.Transfer.ID, request: Update.Request)
        case list(request: List.Request)
    }
}
