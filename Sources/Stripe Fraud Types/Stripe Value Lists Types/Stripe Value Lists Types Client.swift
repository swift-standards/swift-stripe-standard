public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Fraud.ValueLists {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: API.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueLists.Create.Error
            >) -> ValueList

        public var retrieve:
            @Sendable (_ id: ValueList.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueLists.Retrieve.Error
            >) -> ValueList

        public var update:
            @Sendable (_ id: ValueList.ID, _ request: API.Update.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueLists.Update.Error
            >) -> ValueList

        public var list:
            @Sendable (_ request: API.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueLists.List.Error
            >) ->
                API.List.Response

        public var delete:
            @Sendable (_ id: ValueList.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueLists.Delete.Error
            >) -> DeletedObject<ValueList>
    }
}
