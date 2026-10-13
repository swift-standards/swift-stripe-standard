public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Tax.Calculations {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Tax.Calculations.Create.Error
            >) ->
                Stripe.Tax.Calculation

        public var retrieve:
            @Sendable (_ id: Stripe.Tax.Calculation.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Tax.Calculations.Retrieve.Error
            >) ->
                Stripe.Tax.Calculation

        public var listLineItems:
            @Sendable (_ id: Stripe.Tax.Calculation.ID, _ request: List.LineItems.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Tax.Calculations.ListLineItems.Error
                >) ->
                List.LineItems.Response
    }
}
