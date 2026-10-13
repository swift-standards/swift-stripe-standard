public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Terminal.Locations {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Locations.Create.Error
            >) -> Location

        public var retrieve:
            @Sendable (_ id: Location.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Locations.Retrieve.Error
            >) -> Location

        public var update:
            @Sendable (_ id: Location.ID, _ request: Update.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Locations.Update.Error
            >)
                -> Location

        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Locations.List.Error
            >) -> List.Response

        public var delete:
            @Sendable (_ id: Location.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Terminal.Locations.Delete.Error
            >) -> DeletedObject<Location>
    }
}
