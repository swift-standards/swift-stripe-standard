import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Quotes {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)

        case retrieve(id: Stripe.Billing.Quotes.Quote.ID)

        case update(id: Stripe.Billing.Quotes.Quote.ID, request: Update.Request)

        case list(request: List.Request)

        case accept(id: Stripe.Billing.Quotes.Quote.ID, request: Accept.Request)

        case cancel(id: Stripe.Billing.Quotes.Quote.ID, request: Cancel.Request)

        case finalize(id: Stripe.Billing.Quotes.Quote.ID, request: Finalize.Request)

        case pdf(id: Stripe.Billing.Quotes.Quote.ID)

        case listLineItems(id: Stripe.Billing.Quotes.Quote.ID, request: List.LineItems.Request)

        case listComputedUpfrontLineItems(
            id: Stripe.Billing.Quotes.Quote.ID,
            request: List.ComputedUpfrontLineItems.Request
        )
    }
}
