import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.MeterEventSummary {
    public enum API: Equatable, Sendable {
        case list(meterId: String, request: List.Request)
    }
}
