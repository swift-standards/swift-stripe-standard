import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Alerts {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/billing/alert/create.md
        case create(request: Create.Request)

        // https://docs.stripe.com/api/billing/alert/retrieve.md
        case retrieve(id: Alert.ID)

        // https://docs.stripe.com/api/billing/alert/list.md
        case list(request: List.Request)

        // https://docs.stripe.com/api/billing/alert/activate.md
        case activate(id: Alert.ID)

        // https://docs.stripe.com/api/billing/alert/archive.md
        case archive(id: Alert.ID)

        // https://docs.stripe.com/api/billing/alert/deactivate.md
        case deactivate(id: Alert.ID)
    }
}
