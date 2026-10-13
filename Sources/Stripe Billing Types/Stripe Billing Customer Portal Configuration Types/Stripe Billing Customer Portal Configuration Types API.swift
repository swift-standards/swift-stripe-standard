import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.Customer.Portal.Configuration {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Stripe.Billing.Customer.Portal.Configuration.ID)
        case update(id: Stripe.Billing.Customer.Portal.Configuration.ID, request: Update.Request)
        case list(request: List.Request)
    }
}
