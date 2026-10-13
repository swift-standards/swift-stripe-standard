public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.TestClocks {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Billing.TestClocks.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.TestClocks.Create.Error
            >) ->
                TestClock

        public var retrieve:
            @Sendable (_ id: Stripe.Billing.TestClocks.TestClock.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.TestClocks.Retrieve.Error
            >)
                -> TestClock

        public var list:
            @Sendable (_ request: Stripe.Billing.TestClocks.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.TestClocks.List.Error
            >) ->
                List.Response

        public var delete:
            @Sendable (_ id: Stripe.Billing.TestClocks.TestClock.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.TestClocks.Delete.Error
            >)
                -> TestClock

        public var advance:
            @Sendable (
                _ id: Stripe.Billing.TestClocks.TestClock.ID,
                _ request: Stripe.Billing.TestClocks.Advance.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.TestClocks.Advance.Error>)
                -> TestClock
    }
}
