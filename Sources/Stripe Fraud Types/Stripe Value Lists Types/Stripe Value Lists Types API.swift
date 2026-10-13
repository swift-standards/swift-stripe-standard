import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Fraud.ValueLists {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: ValueList.ID)
        case update(id: ValueList.ID, request: Update.Request)
        case list(request: List.Request)
        case delete(id: ValueList.ID)
    }
}
