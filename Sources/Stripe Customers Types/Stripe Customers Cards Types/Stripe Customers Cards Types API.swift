import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers.Cards {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/cards/create.md
        case create(customerId: Stripe.Customers.Customer.ID, request: Create.Request)
        // https://docs.stripe.com/api/cards/retrieve.md
        case retrieve(customerId: Stripe.Customers.Customer.ID, cardId: Card.ID)
        // https://docs.stripe.com/api/cards/update.md
        case update(
            customerId: Stripe.Customers.Customer.ID,
            cardId: Card.ID,
            request: Update.Request
        )
        // https://docs.stripe.com/api/cards/list.md
        case list(customerId: Stripe.Customers.Customer.ID, request: List.Request)
        // https://docs.stripe.com/api/cards/delete.md
        case delete(customerId: Stripe.Customers.Customer.ID, cardId: Card.ID)
    }
}
