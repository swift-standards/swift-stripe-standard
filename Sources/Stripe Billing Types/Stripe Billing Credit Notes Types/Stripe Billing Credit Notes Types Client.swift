//
//  Stripe Billing Credit Notes Types Client.swift
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

extension Stripe.Billing.CreditNotes {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/creditNotes/create.md
        public var create:
            @Sendable (_ request: Stripe.Billing.CreditNotes.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Create.Error
            >) ->
                Stripe.Billing.Credit.Note

        // https://docs.stripe.com/api/creditNotes/update.md
        public var update:
            @Sendable (
                _ id: Stripe.Billing.Credit.Note.ID,
                _ request: Stripe.Billing.CreditNotes.Update.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Update.Error>)
                -> Stripe.Billing.Credit.Note

        // https://docs.stripe.com/api/creditNotes/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Credit.Note.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Retrieve.Error
            >) ->
                Stripe.Billing.Credit.Note

        // https://docs.stripe.com/api/creditNotes/list.md
        public var list:
            @Sendable (_ request: Stripe.Billing.CreditNotes.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.CreditNotes.List.Error
            >) ->
                Stripe.Billing.CreditNotes.List.Response

        // https://docs.stripe.com/api/creditNotes/preview.md
        public var preview:
            @Sendable (_ request: Stripe.Billing.CreditNotes.Preview.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Preview.Error
            >) ->
                Stripe.Billing.Credit.Note

        // https://docs.stripe.com/api/creditNotes/void.md
        public var void:
            @Sendable (
                _ id: Stripe.Billing.Credit.Note.ID,
                _ request: Stripe.Billing.CreditNotes.Void.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Void.Error>) ->
                Stripe.Billing.Credit.Note

        // https://docs.stripe.com/api/creditNotes/lines.md
        public var lines:
            @Sendable (
                _ id: Stripe.Billing.Credit.Note.ID,
                _ request: Stripe.Billing.CreditNotes.Lines.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Lines.Error>) ->
                Stripe.Billing.CreditNotes.Lines.Response

        // https://docs.stripe.com/api/creditNotes/preview_lines.md
        public var previewLines:
            @Sendable (_ request: Stripe.Billing.CreditNotes.PreviewLines.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.CreditNotes.PreviewLines.Error
                >) ->
                Stripe.Billing.CreditNotes.PreviewLines.Response
    }
}
