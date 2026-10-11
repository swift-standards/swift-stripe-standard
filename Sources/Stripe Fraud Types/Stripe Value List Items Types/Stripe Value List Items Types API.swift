import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Fraud.ValueListItems {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/radar/value_list_items/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/radar/value_list_items/retrieve.md
        case retrieve(id: ValueListItem.ID)
        // https://docs.stripe.com/api/radar/value_list_items/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/radar/value_list_items/delete.md
        case delete(id: ValueListItem.ID)
    }
}
