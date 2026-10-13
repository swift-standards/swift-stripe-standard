public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Customer.Portal.Session {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Customer.Portal.Session.Create.Error
            >) ->
                Stripe.Billing.Customer.Portal.Session

    }
}
