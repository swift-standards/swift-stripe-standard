import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Credit.Grant {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/billing/credit-grant/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/billing/credit-grant/retrieve.md
        case retrieve(id: ID)
        // https://docs.stripe.com/api/billing/credit-grant/update.md
        case update(id: ID, request: Update.Request)
        // https://docs.stripe.com/api/billing/credit-grant/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/billing/credit-grant/expire.md
        case expire(id: ID, request: Expire.Request)
        // https://docs.stripe.com/api/billing/credit-grant/void.md
        case void(id: ID, request: Void.Request)
    }
}
