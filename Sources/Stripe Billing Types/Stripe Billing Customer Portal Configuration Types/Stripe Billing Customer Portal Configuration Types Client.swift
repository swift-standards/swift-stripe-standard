public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Customer.Portal.Configuration {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Billing.Customer.Portal.Configuration.Create.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.Customer.Portal.Configuration.Create.Error
                >) -> Stripe.Billing.Customer.Portal.Configuration

        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Customer.Portal.Configuration.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Customer.Portal.Configuration.Retrieve.Error
            >) ->
                Stripe.Billing.Customer.Portal.Configuration

        public var update:
            @Sendable (
                _ id: Stripe.Billing.Customer.Portal.Configuration.ID, _ request: Update.Request
            )
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.Customer.Portal.Configuration.Update.Error
                >) -> Stripe.Billing.Customer.Portal.Configuration

        public var list:
            @Sendable (_ request: Stripe.Billing.Customer.Portal.Configuration.List.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.Customer.Portal.Configuration.List.Error
                >)
                -> List.Response
    }
}
