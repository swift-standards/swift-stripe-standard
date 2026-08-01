import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged_Primitives

extension Stripe.Connect.Transfers {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/transfers/create.md
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Transfers.Create.Error
            >) ->
                Stripe.Connect.Transfer

        // https://docs.stripe.com/api/transfers/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.Connect.Transfer.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Transfers.Retrieve.Error
            >) ->
                Stripe.Connect.Transfer

        // https://docs.stripe.com/api/transfers/update.md
        public var update:
            @Sendable (_ id: Stripe.Connect.Transfer.ID, _ request: Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Connect.Transfers.Update.Error>)
                ->
                Stripe.Connect.Transfer

        // https://docs.stripe.com/api/transfers/list.md
        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Transfers.List.Error
            >) -> List.Response
    }
}
