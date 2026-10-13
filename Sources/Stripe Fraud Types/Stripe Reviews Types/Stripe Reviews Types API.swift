import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Fraud.Reviews {
    public enum API: Equatable, Sendable {
        case retrieve(id: Review.ID)
        case list(request: List.Request)
        case approve(id: Review.ID, request: Approve.Request)
    }
}
