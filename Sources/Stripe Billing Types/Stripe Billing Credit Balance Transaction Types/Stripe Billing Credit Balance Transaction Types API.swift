import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Credit.Balance {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/billing/credit-balance-transaction/retrieve.md
        case retrieve(id: Transaction.ID)
        // https://docs.stripe.com/api/billing/credit-balance-transaction/list.md
        case list(request: List.Request)
    }
}
