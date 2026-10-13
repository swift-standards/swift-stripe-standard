import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Tokens {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Tokens.Create.Request)
        case retrieve(id: Stripe.Tokens.Token.ID)
    }
}
