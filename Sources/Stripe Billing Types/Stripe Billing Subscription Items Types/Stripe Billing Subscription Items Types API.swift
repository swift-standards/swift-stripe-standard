import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.SubscriptionItems {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Billing.SubscriptionItems.Create.Request)
        case update(
            id: Stripe.Billing.Subscription.Item.ID,
            request: Stripe.Billing.SubscriptionItems.Update.Request
        )
        case retrieve(id: Stripe.Billing.Subscription.Item.ID)
        case list(request: Stripe.Billing.SubscriptionItems.List.Request)
        case delete(id: Stripe.Billing.Subscription.Item.ID)
    }
}
