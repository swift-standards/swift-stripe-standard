import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.PaymentMethods.PaymentMethods {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Stripe.PaymentMethods.PaymentMethod.ID)
        case retrieveCustomer(
            customerId: Stripe.Customers.Customer.ID,
            paymentMethodId: Stripe.PaymentMethods.PaymentMethod.ID
        )
        case update(id: Stripe.PaymentMethods.PaymentMethod.ID, request: Update.Request)
        case list(request: List.Request)
        case listCustomer(customerId: Stripe.Customers.Customer.ID, request: List.Customer.Request)
        case attach(id: Stripe.PaymentMethods.PaymentMethod.ID, request: Attach.Request)
        case detach(id: Stripe.PaymentMethods.PaymentMethod.ID)
    }
}
