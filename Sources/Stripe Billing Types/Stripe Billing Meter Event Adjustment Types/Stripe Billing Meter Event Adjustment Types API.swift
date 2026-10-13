import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.MeterEventAdjustments {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
    }
}
