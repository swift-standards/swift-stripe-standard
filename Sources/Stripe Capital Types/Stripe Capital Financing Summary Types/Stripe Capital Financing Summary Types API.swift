import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Capital.FinancingSummary {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/capital/financing_summary/retrieve.md
        case retrieve
    }
}
