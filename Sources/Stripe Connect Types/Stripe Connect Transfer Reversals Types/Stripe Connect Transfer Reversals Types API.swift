import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Connect.Transfer.Reversals {
    public enum API: Equatable, Sendable {
        case create(transferId: Stripe.Connect.Transfer.ID, request: Create.Request)
        case retrieve(
            transferId: Stripe.Connect.Transfer.ID,
            reversalId: Stripe.Connect.Transfer.Reversal.ID
        )
        case update(
            transferId: Stripe.Connect.Transfer.ID,
            reversalId: Stripe.Connect.Transfer.Reversal.ID,
            request: Update.Request
        )
        case list(transferId: Stripe.Connect.Transfer.ID, request: List.Request)
    }
}
