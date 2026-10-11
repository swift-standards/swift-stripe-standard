import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Connect.Transfers {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/transfers/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/transfers/retrieve.md
        case retrieve(id: Stripe.Connect.Transfer.ID)
        // https://docs.stripe.com/api/transfers/update.md
        case update(id: Stripe.Connect.Transfer.ID, request: Update.Request)
        // https://docs.stripe.com/api/transfers/list.md
        case list(request: List.Request)
    }
}
