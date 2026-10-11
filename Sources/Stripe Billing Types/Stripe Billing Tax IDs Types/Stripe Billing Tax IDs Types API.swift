import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.TaxIDs {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/customer_tax_ids/create
        case create(customerId: Stripe.Customers.Customer.ID, request: Create.Request)
        // https://docs.stripe.com/api/customer_tax_ids/retrieve
        case retrieve(customerId: Stripe.Customers.Customer.ID, id: TaxID.ID)
        // https://docs.stripe.com/api/customer_tax_ids/delete
        case delete(customerId: Stripe.Customers.Customer.ID, id: TaxID.ID)
        // https://docs.stripe.com/api/customer_tax_ids/list
        case list(customerId: Stripe.Customers.Customer.ID, request: List.Request)
    }
}
