public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Files {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Stripe.Files.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Files.Create.Error
            >) ->
                Stripe.Files.File

        public var retrieve:
            @Sendable (_ id: Stripe.Files.File.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Files.Retrieve.Error
            >) ->
                Stripe.Files.File

        public var list:
            @Sendable (_ request: Stripe.Files.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Files.List.Error
            >) ->
                Stripe.Files.List.Response
    }
}
