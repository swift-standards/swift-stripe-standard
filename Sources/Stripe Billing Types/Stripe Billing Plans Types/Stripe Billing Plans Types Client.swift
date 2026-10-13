public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Plans {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Billing.Plans.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Plans.Create.Error
            >)
                ->
                Stripe.Billing.Plan

        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Plan.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Plans.Retrieve.Error
            >) ->
                Stripe.Billing.Plan

        public var update:
            @Sendable (_ id: Stripe.Billing.Plan.ID, _ request: Stripe.Billing.Plans.Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Plans.Update.Error>) ->
                Stripe.Billing.Plan

        public var list:
            @Sendable (_ request: Stripe.Billing.Plans.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Plans.List.Error
            >)
                ->
                Stripe.Billing.Plans.List.Response

        public var delete:
            @Sendable (_ id: Stripe.Billing.Plan.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Plans.Delete.Error
            >) -> DeletedObject<
                Stripe.Billing.Plan
            >
    }
}
