import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Disputes {
    public enum API: Equatable, Sendable {
        case retrieve(id: Stripe.Disputes.Dispute.ID)
        case update(id: Stripe.Disputes.Dispute.ID, request: Stripe.Disputes.Update.Request)
        case list(request: Stripe.Disputes.List.Request)
        case close(id: Stripe.Disputes.Dispute.ID)
    }
}
