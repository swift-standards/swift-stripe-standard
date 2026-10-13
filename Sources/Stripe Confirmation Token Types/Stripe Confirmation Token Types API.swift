import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.ConfirmationToken {
    public enum API: Equatable, Sendable {
        case retrieve(id: ConfirmationToken.ID)
    }
}
