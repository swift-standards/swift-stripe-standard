import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.Customer.Portal.Configuration {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/customer_portal/configurations/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/customer_portal/configurations/retrieve.md
        case retrieve(id: Stripe.Billing.Customer.Portal.Configuration.ID)
        // https://docs.stripe.com/api/customer_portal/configurations/update.md
        case update(id: Stripe.Billing.Customer.Portal.Configuration.ID, request: Update.Request)
        // https://docs.stripe.com/api/customer_portal/configurations/list.md
        case list(request: List.Request)
    }
}
