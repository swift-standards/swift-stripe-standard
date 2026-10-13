import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.PaymentMethods.Sources {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Stripe_Types_Models.Source.ID)
        case update(id: Stripe_Types_Models.Source.ID, request: Update.Request)
        case attach(customerId: Stripe.Customers.Customer.ID, source: Stripe_Types_Models.Source.ID)
        case detach(
            customerId: Stripe.Customers.Customer.ID,
            sourceId: Stripe_Types_Models.Source.ID
        )
    }
}
