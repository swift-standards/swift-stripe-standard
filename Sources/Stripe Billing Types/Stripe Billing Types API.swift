import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing {
    public enum API: Equatable, Sendable {
        case customerPortalSession(Stripe.Billing.Customer.Portal.Session.API)
        case subscriptions(Stripe.Billing.Subscriptions.API)
        case subscriptionSchedule(Stripe.Billing.Subscription.Schedule.API)
    }
}
