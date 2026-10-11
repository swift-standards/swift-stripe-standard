import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Capital.FinancingOffer {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/capital/financing_offers/retrieve.md
        case retrieve(id: Stripe.Capital.FinancingOffer.ID)
        // https://docs.stripe.com/api/capital/financing_offers/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/capital/financing_offers/mark_delivered.md
        case markDelivered(id: Stripe.Capital.FinancingOffer.ID)
    }
}
