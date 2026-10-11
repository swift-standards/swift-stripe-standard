import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.PaymentMethods {
    public enum API: Equatable, Sendable {
        case paymentMethods(Stripe.PaymentMethods.PaymentMethods.API)
        case paymentMethodConfigurations(Stripe.PaymentMethodConfigurations.API)
        case paymentMethodDomains(Stripe.PaymentMethodDomains.API)
        case sources(Stripe.PaymentMethods.Sources.API)
    }
}
