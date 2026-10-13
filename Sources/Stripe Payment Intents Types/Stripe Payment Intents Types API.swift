import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.PaymentIntents {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.PaymentIntents.Create.Request)
        case update(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.Update.Request
        )
        case retrieve(id: Stripe.PaymentIntents.PaymentIntent.ID)
        case list(request: Stripe.PaymentIntents.List.Request)
        case cancel(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.Cancel.Request
        )
        case capture(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.Capture.Request
        )
        case confirm(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.Confirm.Request
        )
        case incrementAuthorization(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.IncrementAuthorization.Request
        )
        case applyCustomerBalance(id: Stripe.PaymentIntents.PaymentIntent.ID)
        case search(request: Stripe.PaymentIntents.Search.Request)
        case verifyMicrodeposits(
            id: Stripe.PaymentIntents.PaymentIntent.ID,
            request: Stripe.PaymentIntents.VerifyMicrodeposits.Request
        )
    }
}
