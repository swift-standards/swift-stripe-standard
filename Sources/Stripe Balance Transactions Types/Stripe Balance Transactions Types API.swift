import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.BalanceTransactions {
    public enum API: Equatable, Sendable {
        case retrieve(id: Stripe.Balance.Transaction.ID)
        case list(request: Stripe.BalanceTransactions.List.Request)
    }
}
