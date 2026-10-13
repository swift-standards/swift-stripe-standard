public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Invoices {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Billing.Invoices.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Invoices.Create.Error
            >) ->
                Stripe.Billing.Invoice

        public var createPreview:
            @Sendable (_ request: Stripe.Billing.Invoices.CreatePreview.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.Invoices.CreatePreview.Error
                >) ->
                Stripe.Billing.Invoice

        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Invoice.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Invoices.Retrieve.Error
            >) ->
                Stripe.Billing.Invoice

        public var update:
            @Sendable (
                _ id: Stripe.Billing.Invoice.ID, _ request: Stripe.Billing.Invoices.Update.Request
            )
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Invoices.Update.Error>) ->
                Stripe.Billing.Invoice

        public var list:
            @Sendable (_ request: Stripe.Billing.Invoices.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Invoices.List.Error
            >) ->
                Stripe.Billing.Invoices.List.Response

        public var delete:
            @Sendable (_ id: Stripe.Billing.Invoice.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Invoices.Delete.Error
            >) ->
                DeletedObject<
                    Stripe.Billing.Invoice
                >

        public var finalize:
            @Sendable (
                _ id: Stripe.Billing.Invoice.ID, _ request: Stripe.Billing.Invoices.Finalize.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Invoices.Finalize.Error>) ->
                Stripe.Billing.Invoice

        public var pay:
            @Sendable (
                _ id: Stripe.Billing.Invoice.ID, _ request: Stripe.Billing.Invoices.Pay.Request
            )
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Invoices.Pay.Error>) ->
                Stripe.Billing.Invoice

        public var send:
            @Sendable (
                _ id: Stripe.Billing.Invoice.ID, _ request: Stripe.Billing.Invoices.Send.Request
            )
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Invoices.Send.Error>) ->
                Stripe.Billing.Invoice

        public var void:
            @Sendable (
                _ id: Stripe.Billing.Invoice.ID, _ request: Stripe.Billing.Invoices.Void.Request
            )
                async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Invoices.Void.Error>) ->
                Stripe.Billing.Invoice
    }
}
