import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.WebhookEndpoint {
    public typealias ID = Tagged<Self, String>
}

extension Stripe.WebhookEndpoint {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/webhook_endpoints/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/webhook_endpoints/retrieve.md
        case retrieve(id: ID)
        // https://docs.stripe.com/api/webhook_endpoints/update.md
        case update(id: ID, request: Update.Request)
        // https://docs.stripe.com/api/webhook_endpoints/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/webhook_endpoints/delete.md
        case delete(id: ID)
    }
}
