//
//  Stripe Billing Invoice Items Types Client.swift
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

extension Stripe.Billing.InvoiceItems {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/invoiceitems/create.md
        public var create:
            @Sendable (_ request: Stripe.Billing.InvoiceItems.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.InvoiceItems.Create.Error
            >) ->
                Stripe.Billing.Invoice.Item

        // https://docs.stripe.com/api/invoiceitems/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Invoice.Item.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.InvoiceItems.Retrieve.Error
            >) ->
                Stripe.Billing.Invoice.Item

        // https://docs.stripe.com/api/invoiceitems/update.md
        public var update:
            @Sendable (
                _ id: Stripe.Billing.Invoice.Item.ID,
                _ request: Stripe.Billing.InvoiceItems.Update.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.InvoiceItems.Update.Error>)
                -> Stripe.Billing.Invoice.Item

        // https://docs.stripe.com/api/invoiceitems/list.md
        public var list:
            @Sendable (_ request: Stripe.Billing.InvoiceItems.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.InvoiceItems.List.Error
            >) ->
                Stripe.Billing.InvoiceItems.List.Response

        // https://docs.stripe.com/api/invoiceitems/delete.md
        public var delete:
            @Sendable (_ id: Stripe.Billing.Invoice.Item.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.InvoiceItems.Delete.Error
            >) ->
                DeletedObject<
                    Stripe.Billing.Invoice.Item
                >
    }
}
