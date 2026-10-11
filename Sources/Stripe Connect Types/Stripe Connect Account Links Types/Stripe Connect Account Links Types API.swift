import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Connect.AccountLinks {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/accountLinks/create.md
        case create(request: Stripe.Connect.AccountLinks.Create.Request)
    }
}
