import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Setup.Intents {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Setup.Intents.Create.Request)
        case retrieve(id: Stripe.Setup.Intent.ID)
        case update(id: Stripe.Setup.Intent.ID, request: Stripe.Setup.Intents.Update.Request)
        case list(request: Stripe.Setup.Intents.List.Request)
        case confirm(id: Stripe.Setup.Intent.ID, request: Stripe.Setup.Intents.Confirm.Request)
        case cancel(id: Stripe.Setup.Intent.ID, request: Stripe.Setup.Intents.Cancel.Request)
        case verifyMicrodeposits(
            id: Stripe.Setup.Intent.ID,
            request: Stripe.Setup.Intents.VerifyMicrodeposits.Request
        )
    }
}
