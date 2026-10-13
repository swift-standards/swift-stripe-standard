import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.CreditBalanceSummary {
    public enum API: Equatable, Sendable {
        case retrieve(request: Retrieve.Request)
    }
}
