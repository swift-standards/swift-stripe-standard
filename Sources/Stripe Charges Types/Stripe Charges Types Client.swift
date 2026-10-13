public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Charges {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Charges.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Charges.Create.Error
            >) ->
                Stripe.Charges.Charge

        public var retrieve:
            @Sendable (_ id: Stripe.Charges.Charge.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Charges.Retrieve.Error
            >) ->
                Stripe.Charges.Charge

        public var update:
            @Sendable (_ id: Stripe.Charges.Charge.ID, _ request: Stripe.Charges.Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Charges.Update.Error>) ->
                Stripe.Charges.Charge

        public var list:
            @Sendable (_ request: Stripe.Charges.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Charges.List.Error
            >) ->
                Stripe.Charges.List.Response

        public var capture:
            @Sendable (_ id: Stripe.Charges.Charge.ID, _ request: Stripe.Charges.Capture.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Charges.Capture.Error>) ->
                Stripe.Charges.Charge

        public var search:
            @Sendable (_ request: Stripe.Charges.Search.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Charges.Search.Error
            >) ->
                Stripe.Charges.Search.Response
    }
}
