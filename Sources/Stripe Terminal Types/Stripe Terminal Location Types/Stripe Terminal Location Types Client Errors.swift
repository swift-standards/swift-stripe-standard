import Async_Lifecycle
import Either
import Stripe_Types_Models
import Stripe_Types_Shared
import Witnesses

extension Stripe.Terminal.Locations.Create {
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        case transport
        case api(StripeError.Error)
        case malformedResponse
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Terminal.Locations {
    public enum Retrieve {}
}

extension Stripe.Terminal.Locations.Retrieve {
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        case transport
        case api(StripeError.Error)
        case malformedResponse
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Terminal.Locations.Update {
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        case transport
        case api(StripeError.Error)
        case malformedResponse
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Terminal.Locations.List {
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        case transport
        case api(StripeError.Error)
        case malformedResponse
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Terminal.Locations {
    public enum Delete {}
}

extension Stripe.Terminal.Locations.Delete {
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        case transport
        case api(StripeError.Error)
        case malformedResponse
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}
