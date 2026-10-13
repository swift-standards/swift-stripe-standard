import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Alerts {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)

        case retrieve(id: Alert.ID)

        case list(request: List.Request)

        case activate(id: Alert.ID)

        case archive(id: Alert.ID)

        case deactivate(id: Alert.ID)
    }
}
