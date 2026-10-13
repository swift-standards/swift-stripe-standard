import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Refunds {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Refunds.Create.Request)
        case retrieve(id: Stripe.Refunds.Refund.ID)
        case update(id: Stripe.Refunds.Refund.ID, request: Stripe.Refunds.Update.Request)
        case list(request: Stripe.Refunds.List.Request)
        case cancel(id: Stripe.Refunds.Refund.ID)
    }
}
