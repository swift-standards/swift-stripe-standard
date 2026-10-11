import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.CreditBalanceSummary {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/billing/credit-balance-summary/retrieve.md
        case retrieve(request: Retrieve.Request)
    }
}
