public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Fraud.ValueListItems {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ request: API.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueListItems.Create.Error
            >) -> ValueListItem

        public var retrieve:
            @Sendable (_ id: ValueListItem.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueListItems.Retrieve.Error
            >) -> ValueListItem

        public var list:
            @Sendable (_ request: API.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueListItems.List.Error
            >) ->
                API.List.Response

        public var delete:
            @Sendable (_ id: ValueListItem.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueListItems.Delete.Error
            >) -> DeletedObject<
                ValueListItem
            >
    }
}
