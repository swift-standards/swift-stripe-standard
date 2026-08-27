import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Fraud.Reviews {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/radar/reviews/retrieve.md
        public var retrieve:
            @Sendable (_ id: Review.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.Reviews.Retrieve.Error
            >) -> Review

        // https://docs.stripe.com/api/radar/reviews/list.md
        public var list:
            @Sendable (_ request: API.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.Reviews.List.Error
            >) ->
                API.List.Response

        // https://docs.stripe.com/api/radar/reviews/approve.md
        public var approve:
            @Sendable (_ id: Review.ID, _ request: API.Approve.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.Reviews.Approve.Error
            >) -> Review
    }
}
