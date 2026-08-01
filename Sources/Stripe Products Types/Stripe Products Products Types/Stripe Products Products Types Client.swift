//
//  Products Client.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 05/01/2025.
//

import Async_Lifecycle_Primitives
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products.Products {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Products.Products.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Products.Create.Error
            >) ->
                Stripe.Products.Product

        public var update:
            @Sendable (
                _ id: Stripe.Products.Product.ID, _ request: Stripe.Products.Products.Update.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Products.Products.Update.Error>) ->
                Stripe.Products.Product

        public var retrieve:
            @Sendable (_ id: Stripe.Products.Product.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Products.Retrieve.Error
            >) ->
                Stripe.Products.Product

        public var list:
            @Sendable (_ request: Stripe.Products.Products.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Products.List.Error
            >) ->
                Stripe.Products.Products.List.Response

        public var delete:
            @Sendable (_ id: Stripe.Products.Product.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Products.Delete.Error
            >) ->
                DeletedObject<
                    Stripe.Products.Product
                >

        public var search:
            @Sendable (_ request: Stripe.Products.Products.Search.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Products.Search.Error
            >) ->
                Stripe.Products.Products.Search.Response
    }
}
