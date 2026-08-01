import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Fraud.ValueListItems {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/radar/value_list_items/create.md
        public var create:
            @Sendable (_ request: API.Create.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueListItems.Create.Error
            >) -> ValueListItem

        // https://docs.stripe.com/api/radar/value_list_items/retrieve.md
        public var retrieve:
            @Sendable (_ id: ValueListItem.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueListItems.Retrieve.Error
            >) -> ValueListItem

        // https://docs.stripe.com/api/radar/value_list_items/list.md
        public var list:
            @Sendable (_ request: API.List.Request) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueListItems.List.Error
            >) ->
                API.List.Response

        // https://docs.stripe.com/api/radar/value_list_items/delete.md
        public var delete:
            @Sendable (_ id: ValueListItem.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Fraud.ValueListItems.Delete.Error
            >) -> DeletedObject<
                ValueListItem
            >
    }
}
