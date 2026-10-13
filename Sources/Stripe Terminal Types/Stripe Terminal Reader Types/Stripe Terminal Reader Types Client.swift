public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Terminal.Readers {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Readers.Create.Error
            >) -> Reader

        public var retrieve:
            @Sendable (_ id: Reader.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Readers.Retrieve.Error
            >) -> Reader

        public var update:
            @Sendable (_ id: Reader.ID, _ request: Update.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Readers.Update.Error
            >) ->
                Reader

        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Readers.List.Error
            >) -> List.Response

        public var delete:
            @Sendable (_ id: Reader.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Readers.Delete.Error
            >) -> DeletedObject<Reader>

        public var cancelAction:
            @Sendable (_ id: Reader.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Readers.CancelAction.Error
            >) -> Reader

        public var processPaymentIntent:
            @Sendable (_ id: Reader.ID, _ request: ProcessPaymentIntent.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Terminal.Readers.ProcessPaymentIntent.Error
                >) ->
                Reader

        public var processSetupIntent:
            @Sendable (_ id: Reader.ID, _ request: ProcessSetupIntent.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Terminal.Readers.ProcessSetupIntent.Error
                >) ->
                Reader

        public var collectInputs:
            @Sendable (_ id: Reader.ID, _ request: CollectInputs.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Readers.CollectInputs.Error
            >) -> Reader

        public var confirmPaymentIntent:
            @Sendable (_ id: Reader.ID, _ request: ConfirmPaymentIntent.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Terminal.Readers.ConfirmPaymentIntent.Error
                >) ->
                Reader

        public var collectPaymentMethod:
            @Sendable (_ id: Reader.ID, _ request: CollectPaymentMethod.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Terminal.Readers.CollectPaymentMethod.Error
                >) ->
                Reader

        public var refundPayment:
            @Sendable (_ id: Reader.ID, _ request: RefundPayment.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Readers.RefundPayment.Error
            >) -> Reader

        public var setReaderDisplay:
            @Sendable (_ id: Reader.ID, _ request: SetReaderDisplay.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Readers.SetReaderDisplay.Error
            >) -> Reader

        public var presentPaymentMethod:
            @Sendable (_ id: Reader.ID, _ request: PresentPaymentMethod.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Terminal.Readers.PresentPaymentMethod.Error
                >) ->
                Reader
    }
}
