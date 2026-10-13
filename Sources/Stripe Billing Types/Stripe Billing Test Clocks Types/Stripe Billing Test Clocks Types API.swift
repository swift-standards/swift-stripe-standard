import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.TestClocks {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Stripe.Billing.TestClocks.TestClock.ID)
        case list(request: List.Request)
        case delete(id: Stripe.Billing.TestClocks.TestClock.ID)
        case advance(id: Stripe.Billing.TestClocks.TestClock.ID, request: Advance.Request)
    }
}
