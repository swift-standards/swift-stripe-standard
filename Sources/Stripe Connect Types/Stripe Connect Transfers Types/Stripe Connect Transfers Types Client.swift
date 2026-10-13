public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Connect.Transfers {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Transfers.Create.Error
            >) ->
                Stripe.Connect.Transfer

        public var retrieve:
            @Sendable (_ id: Stripe.Connect.Transfer.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Transfers.Retrieve.Error
            >) ->
                Stripe.Connect.Transfer

        public var update:
            @Sendable (_ id: Stripe.Connect.Transfer.ID, _ request: Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Connect.Transfers.Update.Error>)
                ->
                Stripe.Connect.Transfer

        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Transfers.List.Error
            >) -> List.Response
    }
}
