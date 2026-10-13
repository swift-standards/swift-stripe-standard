public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.TaxIDs {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: Create.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.TaxIDs.Create.Error>)
                -> TaxID

        public var retrieve:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ id: TaxID.ID)
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.TaxIDs.Retrieve.Error>) ->
                TaxID

        public var delete:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ id: TaxID.ID)
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.TaxIDs.Delete.Error>) ->
                DeletedObject<Stripe.Customers.Customer>

        public var list:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: List.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.TaxIDs.List.Error>)
                -> List.Response
    }
}
