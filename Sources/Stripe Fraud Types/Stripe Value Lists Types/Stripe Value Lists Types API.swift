import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Fraud.ValueLists {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/radar/value_lists/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/radar/value_lists/retrieve.md
        case retrieve(id: ValueList.ID)
        // https://docs.stripe.com/api/radar/value_lists/update.md
        case update(id: ValueList.ID, request: Update.Request)
        // https://docs.stripe.com/api/radar/value_lists/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/radar/value_lists/delete.md
        case delete(id: ValueList.ID)
    }
}
