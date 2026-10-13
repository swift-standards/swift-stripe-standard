import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.WebhookEndpoint {
    public typealias ID = Tagged<Self, String>
}

extension Stripe.WebhookEndpoint {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: ID)
        case update(id: ID, request: Update.Request)
        case list(request: List.Request)
        case delete(id: ID)
    }
}
