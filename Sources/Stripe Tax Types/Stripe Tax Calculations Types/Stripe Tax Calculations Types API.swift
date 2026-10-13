import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Tax.Calculations {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Stripe.Tax.Calculation.ID)
        case listLineItems(id: Stripe.Tax.Calculation.ID, request: List.LineItems.Request)
    }
}
