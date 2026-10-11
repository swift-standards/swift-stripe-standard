import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.PaymentMethodDomains {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/payment_method_domains/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/payment_method_domains/retrieve.md
        case retrieve(id: Stripe.PaymentMethodDomain.ID)
        // https://docs.stripe.com/api/payment_method_domains/update.md
        case update(id: Stripe.PaymentMethodDomain.ID, request: Update.Request)
        // https://docs.stripe.com/api/payment_method_domains/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/payment_method_domains/validate.md
        case validate(id: Stripe.PaymentMethodDomain.ID)
    }
}
