public import Async_Lifecycle
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.PaymentIntents {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.PaymentIntents.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentIntents.Create.Error
            >) ->
                Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent

        public var update:
            @Sendable (
                _ id: Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent.ID,
                _ request: Stripe.PaymentIntents.Update.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.PaymentIntents.Update.Error>) ->
                Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent

        public var retrieve:
            @Sendable (_ id: Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent.ID)
                async throws(Either<Async.Lifecycle.Error, Stripe.PaymentIntents.Retrieve.Error>) ->
                Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent

        public var list:
            @Sendable (_ request: Stripe.PaymentIntents.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentIntents.List.Error
            >)
                ->
                Stripe.PaymentIntents.List.Response

        public var cancel:
            @Sendable (
                _ id: Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent.ID,
                _ request: Stripe.PaymentIntents.Cancel.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.PaymentIntents.Cancel.Error>) ->
                Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent

        public var capture:
            @Sendable (
                _ id: Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent.ID,
                _ request: Stripe.PaymentIntents.Capture.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.PaymentIntents.Capture.Error>) ->
                Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent

        public var confirm:
            @Sendable (
                _ id: Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent.ID,
                _ request: Stripe.PaymentIntents.Confirm.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.PaymentIntents.Confirm.Error>) ->
                Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent

        public var incrementAuthorization:
            @Sendable (
                _ id: Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent.ID,
                _ request: Stripe.PaymentIntents.IncrementAuthorization.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentIntents.IncrementAuthorization.Error
            >) ->
                Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent

        public var applyCustomerBalance:
            @Sendable (_ id: Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent.ID)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.PaymentIntents.ApplyCustomerBalance.Error
                >) ->
                Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent

        public var search:
            @Sendable (_ request: Stripe.PaymentIntents.Search.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentIntents.Search.Error
            >) ->
                Stripe.PaymentIntents.Search.Response

        public var verifyMicrodeposits:
            @Sendable (
                _ id: Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent.ID,
                _ request: Stripe.PaymentIntents.VerifyMicrodeposits.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.PaymentIntents.VerifyMicrodeposits.Error
            >) ->
                Stripe_Types_Shared.Stripe.PaymentIntents.PaymentIntent
    }
}
