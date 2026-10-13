import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Credit.Balance {
    public enum API: Equatable, Sendable {
        case retrieve(id: Transaction.ID)
        case list(request: List.Request)
    }
}
