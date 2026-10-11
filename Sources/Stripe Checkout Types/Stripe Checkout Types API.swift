import Stripe_Types_Shared

/// API endpoints for Checkout
/// Documented at https://stripe.com/docs/api/checkout
extension Stripe.Checkout {
    public enum API: Equatable, Sendable {
        case sessions(Stripe.Checkout.Sessions.API)
    }
}
