import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Fraud.Reviews {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/radar/reviews/retrieve.md
        case retrieve(id: Review.ID)
        // https://docs.stripe.com/api/radar/reviews/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/radar/reviews/approve.md
        case approve(id: Review.ID, request: Approve.Request)
    }
}
