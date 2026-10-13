public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers.Cards {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: Create.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Customers.Cards.Create.Error>)
                -> Card

        public var retrieve:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ cardId: Card.ID)
                async throws(Either<Async.Lifecycle.Error, Stripe.Customers.Cards.Retrieve.Error>)
                -> Card

        public var update:
            @Sendable (
                _ customerId: Stripe.Customers.Customer.ID, _ cardId: Card.ID,
                _ request: Update.Request
            ) async throws(Either<Async.Lifecycle.Error, Stripe.Customers.Cards.Update.Error>) ->
                Card

        public var list:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: List.Request)
                async throws(Either<Async.Lifecycle.Error, Stripe.Customers.Cards.List.Error>)
                -> List.Response

        public var delete:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ cardId: Card.ID)
                async throws(Either<Async.Lifecycle.Error, Stripe.Customers.Cards.Delete.Error>)
                ->
                DeletedObject<Card>
    }
}
