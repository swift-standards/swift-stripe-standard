import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Connect.Account.Session {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
    }
}
