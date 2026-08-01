import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.TaxIDs {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/customer_tax_ids/create
        public var create:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: Create.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.TaxIDs.Create.Error>)
                -> TaxID

        // https://docs.stripe.com/api/customer_tax_ids/retrieve
        public var retrieve:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ id: TaxID.ID)
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.TaxIDs.Retrieve.Error>) ->
                TaxID

        // https://docs.stripe.com/api/customer_tax_ids/delete
        public var delete:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ id: TaxID.ID)
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.TaxIDs.Delete.Error>) ->
                DeletedObject<Stripe.Customers.Customer>

        // https://docs.stripe.com/api/customer_tax_ids/list
        public var list:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: List.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.TaxIDs.List.Error>)
                -> List.Response
    }
}
