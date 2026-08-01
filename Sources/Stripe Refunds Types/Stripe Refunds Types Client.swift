//
//  Stripe Refunds Types Client.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Refunds {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/refunds/create.md
        public var create:
            @Sendable (_ request: Stripe.Refunds.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Refunds.Create.Error
            >) ->
                Stripe.Refunds.Refund

        // https://docs.stripe.com/api/refunds/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Refunds.Refund.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Refunds.Retrieve.Error
            >) ->
                Stripe.Refunds.Refund

        // https://docs.stripe.com/api/refunds/update.md
        public var update:
            @Sendable (_ id: Stripe.Refunds.Refund.ID, _ request: Stripe.Refunds.Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Refunds.Update.Error>) ->
                Stripe.Refunds.Refund

        // https://docs.stripe.com/api/refunds/list.md
        public var list:
            @Sendable (_ request: Stripe.Refunds.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Refunds.List.Error
            >) ->
                Stripe.Refunds.List.Response

        // https://docs.stripe.com/api/refunds/cancel.md
        public var cancel:
            @Sendable (_ id: Stripe.Refunds.Refund.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Refunds.Cancel.Error
            >) ->
                Stripe.Refunds.Refund
    }
}
