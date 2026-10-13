public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products.TaxRates {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.TaxRates.Create.Error
            >) -> Stripe.Tax.Rate

        public var retrieve:
            @Sendable (_ id: Stripe.Tax.Rate.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.TaxRates.Retrieve.Error
            >) -> Stripe.Tax.Rate

        public var update:
            @Sendable (_ id: Stripe.Tax.Rate.ID, _ request: Update.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.TaxRates.Update.Error
            >) ->
                Stripe.Tax.Rate

        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.TaxRates.List.Error
            >) -> List.Response
    }
}
