import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Forwarding.Request {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/forwarding/request/create.md
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Forwarding.Request.Create.Error
            >) ->
                Stripe.Forwarding.Request

        // https://docs.stripe.com/api/forwarding/request/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Forwarding.Request.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Forwarding.Request.Retrieve.Error
            >) ->
                Stripe.Forwarding.Request

        // https://docs.stripe.com/api/forwarding/request/list.md
        public var list:
            @Sendable (_ request: Stripe.Forwarding.Request.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Forwarding.Request.List.Error
            >) ->
                Stripe.Forwarding.Request.List.Response
    }
}
