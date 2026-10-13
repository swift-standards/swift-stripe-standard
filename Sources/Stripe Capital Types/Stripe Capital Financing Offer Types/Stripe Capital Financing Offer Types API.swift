import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Capital.FinancingOffer {
    public enum API: Equatable, Sendable {
        case retrieve(id: Stripe.Capital.FinancingOffer.ID)
        case list(request: List.Request)
        case markDelivered(id: Stripe.Capital.FinancingOffer.ID)
    }
}
