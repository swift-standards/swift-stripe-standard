public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Disputes {
    @Witness
    public struct Client: Sendable {
        public var retrieve:
            @Sendable (_ id: Stripe.Disputes.Dispute.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Disputes.Retrieve.Error
            >) ->
                Stripe.Disputes.Dispute

        public var update:
            @Sendable (_ id: Stripe.Disputes.Dispute.ID, _ request: Stripe.Disputes.Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Disputes.Update.Error>) ->
                Stripe.Disputes.Dispute

        public var list:
            @Sendable (_ request: Stripe.Disputes.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Disputes.List.Error
            >) ->
                Stripe.Disputes.List.Response

        public var close:
            @Sendable (_ id: Stripe.Disputes.Dispute.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Disputes.Close.Error
            >) ->
                Stripe.Disputes.Dispute
    }
}
