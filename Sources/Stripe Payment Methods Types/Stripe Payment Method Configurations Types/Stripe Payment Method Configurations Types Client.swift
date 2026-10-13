public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.PaymentMethodConfigurations {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentMethodConfigurations.Create.Error
            >) ->
                Stripe.PaymentMethodConfigurations.Configuration

        public var retrieve:
            @Sendable (_ id: Stripe.PaymentMethodConfigurations.Configuration.ID)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.PaymentMethodConfigurations.Retrieve.Error
                >) ->
                Stripe.PaymentMethodConfigurations.Configuration

        public var update:
            @Sendable (
                _ id: Stripe.PaymentMethodConfigurations.Configuration.ID, _ request: Update.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentMethodConfigurations.Update.Error
            >) -> Stripe.PaymentMethodConfigurations.Configuration

        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentMethodConfigurations.List.Error
            >) -> List.Response
    }
}
