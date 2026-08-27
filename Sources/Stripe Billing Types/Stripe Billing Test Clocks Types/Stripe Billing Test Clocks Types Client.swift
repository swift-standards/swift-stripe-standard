//
//  Stripe Billing Test Clocks Types Client.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.TestClocks {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/testClocks/create.md
        public var create:
            @Sendable (_ request: Stripe.Billing.TestClocks.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.TestClocks.Create.Error
            >) ->
                TestClock

        // https://docs.stripe.com/api/testClocks/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Billing.TestClocks.TestClock.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.TestClocks.Retrieve.Error
            >)
                -> TestClock

        // https://docs.stripe.com/api/testClocks/list.md
        public var list:
            @Sendable (_ request: Stripe.Billing.TestClocks.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.TestClocks.List.Error
            >) ->
                List.Response

        // https://docs.stripe.com/api/testClocks/delete.md
        public var delete:
            @Sendable (_ id: Stripe.Billing.TestClocks.TestClock.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.TestClocks.Delete.Error
            >)
                -> TestClock

        // https://docs.stripe.com/api/testClocks/advance.md
        public var advance:
            @Sendable (
                _ id: Stripe.Billing.TestClocks.TestClock.ID,
                _ request: Stripe.Billing.TestClocks.Advance.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.TestClocks.Advance.Error>)
                -> TestClock
    }
}
