import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Charges {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Charges.Create.Request)
        case retrieve(id: Stripe.Charges.Charge.ID)
        case update(id: Stripe.Charges.Charge.ID, request: Stripe.Charges.Update.Request)
        case list(request: Stripe.Charges.List.Request)
        case capture(id: Stripe.Charges.Charge.ID, request: Stripe.Charges.Capture.Request)
        case search(request: Stripe.Charges.Search.Request)
    }
}
