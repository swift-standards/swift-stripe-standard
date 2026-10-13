import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Fraud.EarlyFraudWarnings {
    public enum API: Equatable, Sendable {
        case retrieve(id: EarlyFraudWarning.ID)
        case list(request: List.Request)
    }
}
