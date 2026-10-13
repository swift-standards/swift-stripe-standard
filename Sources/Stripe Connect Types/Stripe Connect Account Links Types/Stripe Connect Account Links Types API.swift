import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Connect.AccountLinks {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Connect.AccountLinks.Create.Request)
    }
}
