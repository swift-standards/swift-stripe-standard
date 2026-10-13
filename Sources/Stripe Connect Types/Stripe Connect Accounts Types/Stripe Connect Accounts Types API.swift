import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Connect.Accounts {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Stripe.Connect.Account.ID)
        case update(id: Stripe.Connect.Account.ID, request: Update.Request)
        case list(request: List.Request)
        case delete(id: Stripe.Connect.Account.ID)
        case reject(id: Stripe.Connect.Account.ID, request: Reject.Request)
    }
}
