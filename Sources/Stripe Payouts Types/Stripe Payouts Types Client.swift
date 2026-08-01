//
//  Stripe Payouts Types Client.swift
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

extension Stripe.Payouts {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/payouts/create.md
        public var create:
            @Sendable (_ request: Stripe.Payouts.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Payouts.Create.Error
            >) ->
                Stripe.Payouts.Payout

        // https://docs.stripe.com/api/payouts/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Payouts.Payout.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Payouts.Retrieve.Error
            >) ->
                Stripe.Payouts.Payout

        // https://docs.stripe.com/api/payouts/update.md
        public var update:
            @Sendable (_ id: Stripe.Payouts.Payout.ID, _ request: Stripe.Payouts.Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Payouts.Update.Error>) ->
                Stripe.Payouts.Payout

        // https://docs.stripe.com/api/payouts/list.md
        public var list:
            @Sendable (_ request: Stripe.Payouts.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Payouts.List.Error
            >) ->
                Stripe.Payouts.List.Response

        // https://docs.stripe.com/api/payouts/cancel.md
        public var cancel:
            @Sendable (_ id: Stripe.Payouts.Payout.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Payouts.Cancel.Error
            >) ->
                Stripe.Payouts.Payout

        // https://docs.stripe.com/api/payouts/reverse.md
        public var reverse:
            @Sendable (_ id: Stripe.Payouts.Payout.ID, _ request: Stripe.Payouts.Reverse.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Payouts.Reverse.Error>) ->
                Stripe.Payouts.Payout
    }
}
