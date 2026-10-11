import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.UsageRecordSummary {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/usageRecords/subscription_item_summary_list
        case list(
            subscriptionItemId: Stripe.Billing.SubscriptionItems.SubscriptionItem.ID,
            request: List.Request
        )
    }
}
