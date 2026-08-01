import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products.Coupons {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/coupons/create.md
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Coupons.Create.Error
            >) ->
                Stripe.Products.Coupon

        // https://docs.stripe.com/api/coupons/update.md
        public var update:
            @Sendable (_ id: Stripe.Products.Coupon.ID, _ request: Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Products.Coupons.Update.Error>) ->
                Stripe.Products.Coupon

        // https://docs.stripe.com/api/coupons/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Products.Coupon.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Coupons.Retrieve.Error
            >) ->
                Stripe.Products.Coupon

        // https://docs.stripe.com/api/coupons/list.md
        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Coupons.List.Error
            >) -> List.Response

        // https://docs.stripe.com/api/coupons/delete.md
        public var delete:
            @Sendable (_ id: Stripe.Products.Coupon.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Coupons.Delete.Error
            >) ->
                DeletedObject<
                    Stripe.Products.Coupon
                >
    }
}
