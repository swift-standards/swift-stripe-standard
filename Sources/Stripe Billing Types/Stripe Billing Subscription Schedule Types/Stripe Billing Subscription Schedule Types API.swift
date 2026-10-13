import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.Subscription.Schedule {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Billing.Subscription.Schedule.Create.Request)
        case retrieve(id: Stripe.Billing.Subscription.Schedule.ID)
        case update(
            id: Stripe.Billing.Subscription.Schedule.ID,
            request: Stripe.Billing.Subscription.Schedule.Update.Request
        )
        case list(request: Stripe.Billing.Subscription.Schedule.List.Request)
        case cancel(
            id: Stripe.Billing.Subscription.Schedule.ID,
            request: Stripe.Billing.Subscription.Schedule.Cancel.Request
        )
        case release(
            id: Stripe.Billing.Subscription.Schedule.ID,
            request: Stripe.Billing.Subscription.Schedule.Release.Request
        )
    }
}
