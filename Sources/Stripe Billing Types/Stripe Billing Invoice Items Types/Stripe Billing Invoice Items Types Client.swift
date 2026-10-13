public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.InvoiceItems {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Billing.InvoiceItems.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.InvoiceItems.Create.Error
            >) ->
                Stripe.Billing.Invoice.Item

        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Invoice.Item.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.InvoiceItems.Retrieve.Error
            >) ->
                Stripe.Billing.Invoice.Item

        public var update:
            @Sendable (
                _ id: Stripe.Billing.Invoice.Item.ID,
                _ request: Stripe.Billing.InvoiceItems.Update.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.InvoiceItems.Update.Error>)
                -> Stripe.Billing.Invoice.Item

        public var list:
            @Sendable (_ request: Stripe.Billing.InvoiceItems.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.InvoiceItems.List.Error
            >) ->
                Stripe.Billing.InvoiceItems.List.Response

        public var delete:
            @Sendable (_ id: Stripe.Billing.Invoice.Item.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.InvoiceItems.Delete.Error
            >) ->
                DeletedObject<
                    Stripe.Billing.Invoice.Item
                >
    }
}
