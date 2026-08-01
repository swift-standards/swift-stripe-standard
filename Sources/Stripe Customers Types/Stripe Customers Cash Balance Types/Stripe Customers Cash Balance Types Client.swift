import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged_Primitives

extension Stripe.Customers.CashBalance {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/cash_balance/retrieve.md
        public var retrieve:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Customers.CashBalance.Retrieve.Error
            >) ->
                Stripe_Types_Models.CashBalance

        // https://docs.stripe.com/api/cash_balance/update.md
        public var update:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: Update.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Customers.CashBalance.Update.Error
                >)
                -> Stripe_Types_Models.CashBalance
    }
}
