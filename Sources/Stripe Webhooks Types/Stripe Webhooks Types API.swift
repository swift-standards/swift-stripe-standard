import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Webhooks {
    public enum API: Equatable, Sendable {
        case webhookEndpoint(Stripe.WebhookEndpoint.API)
    }
}
