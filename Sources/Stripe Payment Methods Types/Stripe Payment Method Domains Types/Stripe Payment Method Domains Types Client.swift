public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.PaymentMethodDomains {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentMethodDomains.Create.Error
            >) ->
                Stripe.PaymentMethodDomain

        public var retrieve:
            @Sendable (_ id: Stripe.PaymentMethodDomain.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentMethodDomains.Retrieve.Error
            >) ->
                Stripe.PaymentMethodDomain

        public var update:
            @Sendable (_ id: Stripe.PaymentMethodDomain.ID, _ request: Update.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.PaymentMethodDomains.Update.Error
                >)
                ->
                Stripe.PaymentMethodDomain

        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentMethodDomains.List.Error
            >) -> List.Response

        public var validate:
            @Sendable (_ id: Stripe.PaymentMethodDomain.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentMethodDomains.Validate.Error
            >) ->
                Stripe.PaymentMethodDomain
    }
}

extension Stripe.PaymentMethodDomains.Client {
    public func list() async throws(Either<
        Async.Lifecycle.Error, Stripe.PaymentMethodDomains.List.Error
    >)
        -> Stripe.PaymentMethodDomains.List.Response
    {
        try await self.list(.init())
    }
}
