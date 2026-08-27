//
//  Stripe Products Tax Rate Types Client.swift
//  swift-stripe-types
//
//  Created on 2025-01-14.
//

import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products.TaxRates {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/tax_rates/create.md
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.TaxRates.Create.Error
            >) -> Stripe.Tax.Rate

        // https://docs.stripe.com/api/tax_rates/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Tax.Rate.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.TaxRates.Retrieve.Error
            >) -> Stripe.Tax.Rate

        // https://docs.stripe.com/api/tax_rates/update.md
        public var update:
            @Sendable (_ id: Stripe.Tax.Rate.ID, _ request: Update.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.TaxRates.Update.Error
            >) ->
                Stripe.Tax.Rate

        // https://docs.stripe.com/api/tax_rates/list.md
        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.TaxRates.List.Error
            >) -> List.Response
    }
}
