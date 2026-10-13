import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.Plans {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Billing.Plans.Create.Request)
        case retrieve(id: Stripe.Billing.Plan.ID)
        case update(id: Stripe.Billing.Plan.ID, request: Stripe.Billing.Plans.Update.Request)
        case list(request: Stripe.Billing.Plans.List.Request)
        case delete(id: Stripe.Billing.Plan.ID)
    }
}
