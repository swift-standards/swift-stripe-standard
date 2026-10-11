import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Fraud.EarlyFraudWarnings {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/radar/early_fraud_warnings/retrieve.md
        case retrieve(id: EarlyFraudWarning.ID)
        // https://docs.stripe.com/api/radar/early_fraud_warnings/list.md
        case list(request: List.Request)
    }
}
