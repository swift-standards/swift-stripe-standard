import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Products.TaxRates {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/tax_rates/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/tax_rates/retrieve.md
        case retrieve(id: Stripe.Tax.Rate.ID)
        // https://docs.stripe.com/api/tax_rates/update.md
        case update(id: Stripe.Tax.Rate.ID, request: Update.Request)
        // https://docs.stripe.com/api/tax_rates/list.md
        case list(request: List.Request)
    }
}
