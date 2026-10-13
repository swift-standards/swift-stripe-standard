import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.PaymentMethodDomains {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Stripe.PaymentMethodDomain.ID)
        case update(id: Stripe.PaymentMethodDomain.ID, request: Update.Request)
        case list(request: List.Request)
        case validate(id: Stripe.PaymentMethodDomain.ID)
    }
}
