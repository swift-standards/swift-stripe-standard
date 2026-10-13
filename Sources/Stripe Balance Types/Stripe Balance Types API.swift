import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Balance {
    public enum API: Equatable, Sendable {
        case retrieve
    }
}
