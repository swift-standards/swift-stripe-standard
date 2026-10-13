public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Alerts {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Alerts.Create.Error
            >) -> Alert

        public var retrieve:
            @Sendable (_ id: Alert.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Alerts.Retrieve.Error
            >) -> Alert

        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Alerts.List.Error
            >) -> List.Response

        public var activate:
            @Sendable (_ id: Alert.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Alerts.Activate.Error
            >) -> Alert

        public var archive:
            @Sendable (_ id: Alert.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Alerts.Archive.Error
            >) -> Alert

        public var deactivate:
            @Sendable (_ id: Alert.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Alerts.Deactivate.Error
            >) -> Alert
    }
}
