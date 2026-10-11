import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.PaymentMethods.PaymentMethods {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/paymentMethods/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/paymentMethods/retrieve.md
        case retrieve(id: Stripe.PaymentMethods.PaymentMethod.ID)
        // https://docs.stripe.com/api/paymentMethods/retrieve_customer.md
        case retrieveCustomer(
            customerId: Stripe.Customers.Customer.ID,
            paymentMethodId: Stripe.PaymentMethods.PaymentMethod.ID
        )
        // https://docs.stripe.com/api/paymentMethods/update.md
        case update(id: Stripe.PaymentMethods.PaymentMethod.ID, request: Update.Request)
        // https://docs.stripe.com/api/paymentMethods/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/paymentMethods/customer_list.md
        case listCustomer(customerId: Stripe.Customers.Customer.ID, request: List.Customer.Request)
        // https://docs.stripe.com/api/paymentMethods/attach.md
        case attach(id: Stripe.PaymentMethods.PaymentMethod.ID, request: Attach.Request)
        // https://docs.stripe.com/api/paymentMethods/detach.md
        case detach(id: Stripe.PaymentMethods.PaymentMethod.ID)
    }
}
