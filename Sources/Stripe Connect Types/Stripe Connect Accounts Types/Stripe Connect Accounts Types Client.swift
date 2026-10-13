public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Connect.Accounts {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Accounts.Create.Error
            >) ->
                Stripe.Connect.Account

        public var retrieve:
            @Sendable (_ id: Stripe.Connect.Account.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Accounts.Retrieve.Error
            >) ->
                Stripe.Connect.Account

        public var update:
            @Sendable (_ id: Stripe.Connect.Account.ID, _ request: Update.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Connect.Accounts.Update.Error>) ->
                Stripe.Connect.Account

        public var list:
            @Sendable (_ request: List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Accounts.List.Error
            >) -> List.Response

        public var delete:
            @Sendable (_ id: Stripe.Connect.Account.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Connect.Accounts.Delete.Error
            >) ->
                DeletedObject<
                    Stripe.Connect.Account
                >

        public var reject:
            @Sendable (_ id: Stripe.Connect.Account.ID, _ request: Reject.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Connect.Accounts.Reject.Error>) ->
                Stripe.Connect.Account
    }
}
