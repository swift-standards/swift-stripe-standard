import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.FileLinks {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.FileLinks.Create.Request)
        case retrieve(id: Stripe.FileLinks.FileLink.ID)
        case update(id: Stripe.FileLinks.FileLink.ID, request: Stripe.FileLinks.Update.Request)
        case list(request: Stripe.FileLinks.List.Request)
    }
}
