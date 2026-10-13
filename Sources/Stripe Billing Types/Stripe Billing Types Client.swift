import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing {
    public struct Client: Sendable {
        public let customerPortalSession: Stripe.Billing.Customer.Portal.Session.Client
        public let subscriptions: Stripe.Billing.Subscriptions.Client
        public let subscriptionSchedule: Stripe.Billing.Subscription.Schedule.Client

        public init(
            customerPortalSession: Stripe.Billing.Customer.Portal.Session.Client,
            subscriptions: Stripe.Billing.Subscriptions.Client,
            subscriptionSchedule: Stripe.Billing.Subscription.Schedule.Client
        ) {
            self.customerPortalSession = customerPortalSession
            self.subscriptions = subscriptions
            self.subscriptionSchedule = subscriptionSchedule
        }
    }
}
