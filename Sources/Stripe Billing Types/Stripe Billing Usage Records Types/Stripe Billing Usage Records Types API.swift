import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.UsageRecords {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/usageRecords/create
        case create(
            subscriptionItemId: Stripe.Billing.SubscriptionItems.SubscriptionItem.ID,
            request: Create.Request
        )
        // https://docs.stripe.com/api/usageRecords/list
        case list(
            subscriptionItemId: Stripe.Billing.SubscriptionItems.SubscriptionItem.ID,
            request: List.Request
        )
    }
}
