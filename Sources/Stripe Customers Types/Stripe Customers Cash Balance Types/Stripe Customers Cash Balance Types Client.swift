public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers.CashBalance {
    @Witness
    public struct Client: Sendable {
        public var retrieve:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Customers.CashBalance.Retrieve.Error
            >) ->
                Stripe_Types_Models.CashBalance

        public var update:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: Update.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Customers.CashBalance.Update.Error
                >)
                -> Stripe_Types_Models.CashBalance
    }
}
