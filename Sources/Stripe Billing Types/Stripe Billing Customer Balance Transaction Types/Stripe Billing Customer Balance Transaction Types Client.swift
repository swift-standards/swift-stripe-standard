public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Customer.Balance {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: Create.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.Customer.Balance.Create.Error
                >)
                -> Transaction

        public var retrieve:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ id: Transaction.ID)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.Customer.Balance.Retrieve.Error
                >) ->
                Transaction

        public var update:
            @Sendable (
                _ customerId: Stripe.Customers.Customer.ID, _ id: Transaction.ID,
                _ request: Update.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Customer.Balance.Update.Error
            >) -> Transaction

        public var list:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: List.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.Customer.Balance.List.Error
                >)
                -> Transaction.List
    }
}
