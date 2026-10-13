public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Meters {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Billing.Meters.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Meters.Create.Error
            >) -> Meter

        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Meters.Meter.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Meters.Retrieve.Error
            >) ->
                Stripe.Billing.Meters.Meter

        public var update:
            @Sendable (
                _ id: Stripe.Billing.Meters.Meter.ID,
                _ request: Stripe.Billing.Meters.Update.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Meters.Update.Error>) ->
                Meter

        public var list:
            @Sendable (_ request: Stripe.Billing.Meters.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Meters.List.Error
            >)
                ->
                Stripe.Billing.Meters.List.Response

        public var deactivate:
            @Sendable (
                _ id: Stripe.Billing.Meters.Meter.ID,
                _ request: Stripe.Billing.Meters.Deactivate.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Meters.Deactivate.Error>) ->
                Meter

        public var reactivate:
            @Sendable (
                _ id: Stripe.Billing.Meters.Meter.ID,
                _ request: Stripe.Billing.Meters.Reactivate.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Meters.Reactivate.Error>) ->
                Meter
    }
}
