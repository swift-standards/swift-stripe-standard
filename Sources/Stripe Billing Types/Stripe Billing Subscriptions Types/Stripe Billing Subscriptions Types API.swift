import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Subscriptions {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Billing.Subscriptions.Create.Request)
        case update(
            id: Stripe.Billing.Subscription.ID,
            request: Stripe.Billing.Subscriptions.Update.Request
        )
        case retrieve(id: Stripe.Billing.Subscription.ID)
        case list(request: Stripe.Billing.Subscriptions.List.Request)
        case cancel(
            id: Stripe.Billing.Subscription.ID,
            request: Stripe.Billing.Subscriptions.Cancel.Request
        )
    }
}
