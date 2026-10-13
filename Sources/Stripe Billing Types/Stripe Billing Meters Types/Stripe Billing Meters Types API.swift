import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Meters {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)

        case retrieve(id: Stripe.Billing.Meters.Meter.ID)

        case update(id: Stripe.Billing.Meters.Meter.ID, request: Update.Request)

        case list(request: List.Request)

        case deactivate(id: Stripe.Billing.Meters.Meter.ID, request: Deactivate.Request)

        case reactivate(id: Stripe.Billing.Meters.Meter.ID, request: Reactivate.Request)
    }
}
