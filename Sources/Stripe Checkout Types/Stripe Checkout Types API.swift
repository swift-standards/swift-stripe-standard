import Stripe_Types_Shared

extension Stripe.Checkout {
    public enum API: Equatable, Sendable {
        case sessions(Stripe.Checkout.Sessions.API)
    }
}
