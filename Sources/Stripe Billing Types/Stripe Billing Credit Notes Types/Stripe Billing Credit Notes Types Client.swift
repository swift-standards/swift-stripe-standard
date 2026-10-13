public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.CreditNotes {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Billing.CreditNotes.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Create.Error
            >) ->
                Stripe.Billing.Credit.Note

        public var update:
            @Sendable (
                _ id: Stripe.Billing.Credit.Note.ID,
                _ request: Stripe.Billing.CreditNotes.Update.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Update.Error>)
                -> Stripe.Billing.Credit.Note

        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Credit.Note.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Retrieve.Error
            >) ->
                Stripe.Billing.Credit.Note

        public var list:
            @Sendable (_ request: Stripe.Billing.CreditNotes.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.CreditNotes.List.Error
            >) ->
                Stripe.Billing.CreditNotes.List.Response

        public var preview:
            @Sendable (_ request: Stripe.Billing.CreditNotes.Preview.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Preview.Error
            >) ->
                Stripe.Billing.Credit.Note

        public var void:
            @Sendable (
                _ id: Stripe.Billing.Credit.Note.ID,
                _ request: Stripe.Billing.CreditNotes.Void.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Void.Error>) ->
                Stripe.Billing.Credit.Note

        public var lines:
            @Sendable (
                _ id: Stripe.Billing.Credit.Note.ID,
                _ request: Stripe.Billing.CreditNotes.Lines.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.CreditNotes.Lines.Error>) ->
                Stripe.Billing.CreditNotes.Lines.Response

        public var previewLines:
            @Sendable (_ request: Stripe.Billing.CreditNotes.PreviewLines.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.CreditNotes.PreviewLines.Error
                >) ->
                Stripe.Billing.CreditNotes.PreviewLines.Response
    }
}
