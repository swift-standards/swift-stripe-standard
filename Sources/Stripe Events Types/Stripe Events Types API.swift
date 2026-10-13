import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Events {
    public enum API: Equatable, Sendable {
        case retrieve(id: Stripe.Events.Event.ID)
        case list(request: Stripe.Events.List.Request)
    }
}
