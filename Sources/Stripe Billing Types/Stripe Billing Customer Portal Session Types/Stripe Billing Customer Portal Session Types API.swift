import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Customer.Portal.Session {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/customer_portal/sessions/create.md
        case create(request: Create.Request)
    }
}
