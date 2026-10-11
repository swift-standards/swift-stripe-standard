import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.PaymentMethods.Sources {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/sources/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/sources/retrieve.md
        case retrieve(id: Stripe_Types_Models.Source.ID)
        // https://docs.stripe.com/api/sources/update.md
        case update(id: Stripe_Types_Models.Source.ID, request: Update.Request)
        // https://docs.stripe.com/api/sources/attach.md
        case attach(customerId: Stripe.Customers.Customer.ID, source: Stripe_Types_Models.Source.ID)
        // https://docs.stripe.com/api/sources/detach.md
        case detach(
            customerId: Stripe.Customers.Customer.ID,
            sourceId: Stripe_Types_Models.Source.ID
        )
    }
}
