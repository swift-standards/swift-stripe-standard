public import Async_Lifecycle
import Dependencies
import Either
public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Quotes {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Billing.Quotes.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Quotes.Create.Error
            >) -> Quote

        public var retrieve:
            @Sendable (_ id: Stripe.Billing.Quote.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Quotes.Retrieve.Error
            >) -> Quote

        public var update:
            @Sendable (
                _ id: Stripe.Billing.Quotes.Quote.ID,
                _ request: Stripe.Billing.Quotes.Update.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Quotes.Update.Error>) ->
                Quote

        public var list:
            @Sendable (_ request: Stripe.Billing.Quotes.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Quotes.List.Error
            >)
                ->
                Stripe.Billing.Quotes.List.Response

        public var accept:
            @Sendable (
                _ id: Stripe.Billing.Quotes.Quote.ID,
                _ request: Stripe.Billing.Quotes.Accept.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Quotes.Accept.Error>) ->
                Quote

        public var cancel:
            @Sendable (
                _ id: Stripe.Billing.Quotes.Quote.ID,
                _ request: Stripe.Billing.Quotes.Cancel.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Quotes.Cancel.Error>) ->
                Quote

        public var finalize:
            @Sendable (
                _ id: Stripe.Billing.Quotes.Quote.ID,
                _ request: Stripe.Billing.Quotes.Finalize.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Quotes.Finalize.Error>) ->
                Quote

        public var pdf:
            @Sendable (_ id: Stripe.Billing.Quotes.Quote.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Quotes.Pdf.Error
            >) -> Data

        public var listLineItems:
            @Sendable (
                _ id: Stripe.Billing.Quotes.Quote.ID,
                _ request: Stripe.Billing.Quotes.List.LineItems.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Billing.Quotes.ListLineItems.Error>)
                -> Stripe.Billing.Quotes.List.LineItems.Response

        public var listComputedUpfrontLineItems:
            @Sendable (
                _ id: Stripe.Billing.Quotes.Quote.ID,
                _ request: Stripe.Billing.Quotes.List.ComputedUpfrontLineItems.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Billing.Quotes.ListComputedUpfrontLineItems.Error
            >) ->
                Stripe.Billing.Quotes.List.ComputedUpfrontLineItems.Response
    }
}
