//
//  Stripe Payment Methods Payment Methods Types Client Errors.swift
//  swift-stripe-standard
//

import Async_Lifecycle_Primitives
import Either_Primitives
import Stripe_Types_Models
import Stripe_Types_Shared
import Witnesses

extension Stripe.PaymentMethods.PaymentMethods.Create {
    /// Failure leaf for `Stripe.PaymentMethods.PaymentMethods.Client.create`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.PaymentMethods.PaymentMethod`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.PaymentMethods.PaymentMethods {
    /// Namespace for the `retrieve` operation.
    public enum Retrieve {}
}

extension Stripe.PaymentMethods.PaymentMethods.Retrieve {
    /// Failure leaf for `Stripe.PaymentMethods.PaymentMethods.Client.retrieve`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.PaymentMethods.PaymentMethod`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.PaymentMethods.PaymentMethods {
    /// Namespace for the `retrieveCustomer` operation.
    public enum RetrieveCustomer {}
}

extension Stripe.PaymentMethods.PaymentMethods.RetrieveCustomer {
    /// Failure leaf for `Stripe.PaymentMethods.PaymentMethods.Client.retrieveCustomer`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.PaymentMethods.PaymentMethod`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.PaymentMethods.PaymentMethods.Update {
    /// Failure leaf for `Stripe.PaymentMethods.PaymentMethods.Client.update`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.PaymentMethods.PaymentMethod`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.PaymentMethods.PaymentMethods.List {
    /// Failure leaf for `Stripe.PaymentMethods.PaymentMethods.Client.list`.
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
        /// Stripe answered, but the payload did not decode as `List.Response`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.PaymentMethods.PaymentMethods {
    /// Namespace for the `listCustomer` operation.
    public enum ListCustomer {}
}

extension Stripe.PaymentMethods.PaymentMethods.ListCustomer {
    /// Failure leaf for `Stripe.PaymentMethods.PaymentMethods.Client.listCustomer`.
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
        /// Stripe answered, but the payload did not decode as `List.Customer.Response`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.PaymentMethods.PaymentMethods.Attach {
    /// Failure leaf for `Stripe.PaymentMethods.PaymentMethods.Client.attach`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.PaymentMethods.PaymentMethod`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.PaymentMethods.PaymentMethods {
    /// Namespace for the `detach` operation.
    public enum Detach {}
}

extension Stripe.PaymentMethods.PaymentMethods.Detach {
    /// Failure leaf for `Stripe.PaymentMethods.PaymentMethods.Client.detach`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.PaymentMethods.PaymentMethod } }`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}
