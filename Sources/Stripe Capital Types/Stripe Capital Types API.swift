import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Capital {
    public enum API: Equatable, Sendable {
        case financingOffer(Stripe.Capital.FinancingOffer.API)
        case financingSummary(Stripe.Capital.FinancingSummary.API)
    }
}
