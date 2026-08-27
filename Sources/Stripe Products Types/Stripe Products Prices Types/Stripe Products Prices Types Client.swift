//
//  Products Prices Client.swift
//  coenttb-stripe
//
//  Created by Coen ten Thije Boonkkamp on 05/01/2025.
//

import Async_Lifecycle
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products.Prices {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Products.Prices.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Prices.Create.Error
            >) ->
                Stripe.Products.Price

        public var update:
            @Sendable (
                _ id: Stripe.Products.Price.ID, _ request: Stripe.Products.Prices.Update.Request
            )
                async throws(Either<Async.Lifecycle.Error, Stripe.Products.Prices.Update.Error>) ->
                Stripe.Products.Price

        public var retrieve:
            @Sendable (_ id: Stripe.Products.Price.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Prices.Retrieve.Error
            >) ->
                Stripe.Products.Price

        public var list:
            @Sendable (_ request: Stripe.Products.Prices.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Prices.List.Error
            >)
                ->
                Stripe.Products.Prices.List.Response

        public var search:
            @Sendable (_ request: Stripe.Products.Prices.Search.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Prices.Search.Error
            >) ->
                Stripe.Products.Prices.Search.Response
    }
}
