import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Fraud.EarlyFraudWarnings {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/radar/early_fraud_warnings/retrieve.md
        public var retrieve:
            @Sendable (_ id: EarlyFraudWarning.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.EarlyFraudWarnings.Retrieve.Error
            >) ->
                EarlyFraudWarning

        // https://docs.stripe.com/api/radar/early_fraud_warnings/list.md
        public var list:
            @Sendable (_ request: API.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.EarlyFraudWarnings.List.Error
            >) ->
                API.List.Response
    }
}
