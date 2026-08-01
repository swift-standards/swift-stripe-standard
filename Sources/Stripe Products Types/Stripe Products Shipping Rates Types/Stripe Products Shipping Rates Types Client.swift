import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged_Primitives

extension Stripe.Products.ShippingRates {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/shipping_rates/create.md
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.ShippingRates.Create.Error
            >) ->
                Stripe.Products.Shipping.Rate

        // https://docs.stripe.com/api/shipping_rates/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Products.Shipping.Rate.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.ShippingRates.Retrieve.Error
            >) ->
                Stripe.Products.Shipping.Rate

        // https://docs.stripe.com/api/shipping_rates/update.md
        public var update:
            @Sendable (_ id: Stripe.Products.Shipping.Rate.ID, _ request: Update.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Products.ShippingRates.Update.Error
                >) ->
                Stripe.Products.Shipping.Rate

        // https://docs.stripe.com/api/shipping_rates/list.md
        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.ShippingRates.List.Error
            >) -> List.Response
    }
}
