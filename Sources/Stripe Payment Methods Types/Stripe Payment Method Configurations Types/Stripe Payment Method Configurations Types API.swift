import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.PaymentMethodConfigurations {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Stripe.PaymentMethodConfigurations.Configuration.ID)
        case update(
            id: Stripe.PaymentMethodConfigurations.Configuration.ID,
            request: Update.Request
        )
        case list(request: List.Request)
    }
}
