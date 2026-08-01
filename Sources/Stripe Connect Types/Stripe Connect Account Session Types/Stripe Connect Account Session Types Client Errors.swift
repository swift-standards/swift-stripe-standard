//
//  Stripe Connect Account Session Types Client Errors.swift
//  swift-stripe-standard
//

import Async_Lifecycle_Primitives
import Either_Primitives
import Stripe_Types_Models
import Stripe_Types_Shared
import Witnesses

extension Stripe.Connect.Account.Session.Create {
    /// Failure leaf for `Stripe.Connect.Account.Session.Client.create`.
    ///
    /// Domain leaf of the ruled `Either<Async.Lifecycle.Error, Leaf>` witness-error
    /// shape (swift-foundations/swift-witnesses#3, ratified by comment 5143970225).
    /// Lifecycle facts — shutdown and timeout among them — ride in
    /// `Async.Lifecycle.Error` on the left and are deliberately absent here.
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        /// The request never produced a Stripe response.
        case transport
        /// Stripe answered with a structured API error.
        case api(StripeError.Error)
        /// Stripe answered, but the payload did not decode as `Stripe.Connect.Account.Session } }`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}
