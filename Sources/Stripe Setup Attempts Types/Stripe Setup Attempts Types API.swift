import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Setup.Attempts {
    public enum API: Equatable, Sendable {
        case list(request: Stripe.Setup.Attempts.List.Request)
    }
}
