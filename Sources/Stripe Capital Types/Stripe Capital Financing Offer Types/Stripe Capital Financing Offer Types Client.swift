public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Capital.FinancingOffer {
    @Witness
    public struct Client: Sendable {
        public var retrieve:
            @Sendable (_ id: Stripe.Capital.FinancingOffer.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Capital.FinancingOffer.Retrieve.Error
            >) ->
                Stripe.Capital.FinancingOffer

        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Capital.FinancingOffer.List.Error
            >) -> List.Response

        public var markDelivered:
            @Sendable (_ id: Stripe.Capital.FinancingOffer.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Capital.FinancingOffer.MarkDelivered.Error
            >) ->
                Stripe.Capital.FinancingOffer
    }
}
