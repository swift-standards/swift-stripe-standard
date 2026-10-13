public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Credit.Grant {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Credit.Grant.Create.Error
            >) ->
                Stripe.Billing.Credit.Grant

        public var retrieve:
            @Sendable (_ id: ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Credit.Grant.Retrieve.Error
            >) -> Stripe.Billing.Credit.Grant

        public var update:
            @Sendable (_ id: ID, _ request: Update.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Credit.Grant.Update.Error
            >) ->
                Stripe.Billing.Credit.Grant

        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Credit.Grant.List.Error
            >) -> List.Response

        public var expire:
            @Sendable (_ id: ID, _ request: Expire.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Credit.Grant.Expire.Error
            >) ->
                Stripe.Billing.Credit.Grant

        public var void:
            @Sendable (_ id: ID, _ request: Void.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Credit.Grant.Void.Error
            >) ->
                Stripe.Billing.Credit.Grant
    }
}
