import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Fraud.ValueLists {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/radar/value_lists/create.md
        public var create:
            @Sendable (_ request: API.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueLists.Create.Error
            >) -> ValueList

        // https://docs.stripe.com/api/radar/value_lists/retrieve.md
        public var retrieve:
            @Sendable (_ id: ValueList.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueLists.Retrieve.Error
            >) -> ValueList

        // https://docs.stripe.com/api/radar/value_lists/update.md
        public var update:
            @Sendable (_ id: ValueList.ID, _ request: API.Update.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueLists.Update.Error
            >) -> ValueList

        // https://docs.stripe.com/api/radar/value_lists/list.md
        public var list:
            @Sendable (_ request: API.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueLists.List.Error
            >) ->
                API.List.Response

        // https://docs.stripe.com/api/radar/value_lists/delete.md
        public var delete:
            @Sendable (_ id: ValueList.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueLists.Delete.Error
            >) -> DeletedObject<ValueList>
    }
}
