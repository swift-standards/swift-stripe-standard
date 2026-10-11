import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Customers.Customer.Sessions {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/customer_sessions/create.md
        case create(request: Stripe.Customers.Customer.Sessions.Create.Request)
    }
}
