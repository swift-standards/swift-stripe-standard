import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Payouts {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Payouts.Create.Request)
        case retrieve(id: Stripe.Payouts.Payout.ID)
        case update(id: Stripe.Payouts.Payout.ID, request: Stripe.Payouts.Update.Request)
        case list(request: Stripe.Payouts.List.Request)
        case cancel(id: Stripe.Payouts.Payout.ID)
        case reverse(id: Stripe.Payouts.Payout.ID, request: Stripe.Payouts.Reverse.Request)
    }
}
