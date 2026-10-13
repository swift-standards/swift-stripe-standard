import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.MeterEvents {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
    }
}
