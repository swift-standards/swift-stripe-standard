import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.TaxIDs {
    public enum API: Equatable, Sendable {
        case create(customerId: Stripe.Customers.Customer.ID, request: Create.Request)
        case retrieve(customerId: Stripe.Customers.Customer.ID, id: TaxID.ID)
        case delete(customerId: Stripe.Customers.Customer.ID, id: TaxID.ID)
        case list(customerId: Stripe.Customers.Customer.ID, request: List.Request)
    }
}
