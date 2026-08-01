import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Customer.Portal.Session {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/customer_portal/sessions/create.md
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Customer.Portal.Session.Create.Error
            >) ->
                Stripe.Billing.Customer.Portal.Session

    }
}
