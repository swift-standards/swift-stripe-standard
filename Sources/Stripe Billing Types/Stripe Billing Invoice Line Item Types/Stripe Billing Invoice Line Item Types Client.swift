public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Invoice.LineItems {
    @Witness
    public struct Client: Sendable {
        public var list:
            @Sendable (
                _ invoiceId: String, _ request: Stripe.Billing.Invoice.LineItems.List.Request
            )
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.Invoice.LineItems.List.Error
                >) -> Stripe.Billing.Invoice.LineItem.List

        public var update:
            @Sendable (
                _ invoiceId: String, _ lineItemId: String,
                _ request: Stripe.Billing.Invoice.LineItems.Update.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Invoice.LineItems.Update.Error
            >) -> Stripe.Billing.Invoice.LineItem

        public var addLines:
            @Sendable (
                _ invoiceId: String, _ request: Stripe.Billing.Invoice.LineItems.AddLines.Request
            )
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Billing.Invoice.LineItems.AddLines.Error
                >) -> Stripe.Billing.Invoice

        public var updateLines:
            @Sendable (
                _ invoiceId: String, _ request: Stripe.Billing.Invoice.LineItems.UpdateLines.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Invoice.LineItems.UpdateLines.Error
            >) -> Stripe.Billing.Invoice

        public var removeLines:
            @Sendable (
                _ invoiceId: String, _ request: Stripe.Billing.Invoice.LineItems.RemoveLines.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Invoice.LineItems.RemoveLines.Error
            >) -> Stripe.Billing.Invoice
    }
}
