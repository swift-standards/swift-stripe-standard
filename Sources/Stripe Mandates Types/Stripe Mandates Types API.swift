import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Mandates {
    public enum API: Equatable, Sendable {
        case retrieve(id: Stripe.Mandates.Mandate.ID)
    }
}
