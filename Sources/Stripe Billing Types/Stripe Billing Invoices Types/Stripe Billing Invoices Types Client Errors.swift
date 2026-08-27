//
//  Stripe Billing Invoices Types Client Errors.swift
//  swift-stripe-standard
//

import Async_Lifecycle
import Either
import Stripe_Types_Models
import Stripe_Types_Shared
import Witnesses

extension Stripe.Billing.Invoices.Create {
    /// Failure leaf for `Stripe.Billing.Invoices.Client.create`.
    ///
    /// Domain leaf of the ruled `Either<Async.Lifecycle.Error, Leaf>` witness-error
    /// shape (swift-compositions/swift-witnesses#3, ratified by comment 5143970225).
    /// Lifecycle facts — shutdown and timeout among them — ride in
    /// `Async.Lifecycle.Error` on the left and are deliberately absent here.
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        /// The request never produced a Stripe response.
        case transport
        /// Stripe answered with a structured API error.
        case api(StripeError.Error)
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Invoice`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.Invoices.CreatePreview {
    /// Failure leaf for `Stripe.Billing.Invoices.Client.createPreview`.
    ///
    /// Domain leaf of the ruled `Either<Async.Lifecycle.Error, Leaf>` witness-error
    /// shape (swift-compositions/swift-witnesses#3, ratified by comment 5143970225).
    /// Lifecycle facts — shutdown and timeout among them — ride in
    /// `Async.Lifecycle.Error` on the left and are deliberately absent here.
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        /// The request never produced a Stripe response.
        case transport
        /// Stripe answered with a structured API error.
        case api(StripeError.Error)
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Invoice`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.Invoices {
    /// Namespace for the `retrieve` operation.
    public enum Retrieve {}
}

extension Stripe.Billing.Invoices.Retrieve {
    /// Failure leaf for `Stripe.Billing.Invoices.Client.retrieve`.
    ///
    /// Domain leaf of the ruled `Either<Async.Lifecycle.Error, Leaf>` witness-error
    /// shape (swift-compositions/swift-witnesses#3, ratified by comment 5143970225).
    /// Lifecycle facts — shutdown and timeout among them — ride in
    /// `Async.Lifecycle.Error` on the left and are deliberately absent here.
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        /// The request never produced a Stripe response.
        case transport
        /// Stripe answered with a structured API error.
        case api(StripeError.Error)
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Invoice`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.Invoices.Update {
    /// Failure leaf for `Stripe.Billing.Invoices.Client.update`.
    ///
    /// Domain leaf of the ruled `Either<Async.Lifecycle.Error, Leaf>` witness-error
    /// shape (swift-compositions/swift-witnesses#3, ratified by comment 5143970225).
    /// Lifecycle facts — shutdown and timeout among them — ride in
    /// `Async.Lifecycle.Error` on the left and are deliberately absent here.
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        /// The request never produced a Stripe response.
        case transport
        /// Stripe answered with a structured API error.
        case api(StripeError.Error)
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Invoice`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.Invoices.List {
    /// Failure leaf for `Stripe.Billing.Invoices.Client.list`.
    ///
    /// Domain leaf of the ruled `Either<Async.Lifecycle.Error, Leaf>` witness-error
    /// shape (swift-compositions/swift-witnesses#3, ratified by comment 5143970225).
    /// Lifecycle facts — shutdown and timeout among them — ride in
    /// `Async.Lifecycle.Error` on the left and are deliberately absent here.
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        /// The request never produced a Stripe response.
        case transport
        /// Stripe answered with a structured API error.
        case api(StripeError.Error)
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Invoices.List.Response`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.Invoices {
    /// Namespace for the `delete` operation.
    public enum Delete {}
}

extension Stripe.Billing.Invoices.Delete {
    /// Failure leaf for `Stripe.Billing.Invoices.Client.delete`.
    ///
    /// Domain leaf of the ruled `Either<Async.Lifecycle.Error, Leaf>` witness-error
    /// shape (swift-compositions/swift-witnesses#3, ratified by comment 5143970225).
    /// Lifecycle facts — shutdown and timeout among them — ride in
    /// `Async.Lifecycle.Error` on the left and are deliberately absent here.
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        /// The request never produced a Stripe response.
        case transport
        /// Stripe answered with a structured API error.
        case api(StripeError.Error)
        /// Stripe answered, but the payload did not decode as `DeletedObject< Stripe.Billing.Invoice >`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.Invoices.Finalize {
    /// Failure leaf for `Stripe.Billing.Invoices.Client.finalize`.
    ///
    /// Domain leaf of the ruled `Either<Async.Lifecycle.Error, Leaf>` witness-error
    /// shape (swift-compositions/swift-witnesses#3, ratified by comment 5143970225).
    /// Lifecycle facts — shutdown and timeout among them — ride in
    /// `Async.Lifecycle.Error` on the left and are deliberately absent here.
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        /// The request never produced a Stripe response.
        case transport
        /// Stripe answered with a structured API error.
        case api(StripeError.Error)
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Invoice`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.Invoices.Pay {
    /// Failure leaf for `Stripe.Billing.Invoices.Client.pay`.
    ///
    /// Domain leaf of the ruled `Either<Async.Lifecycle.Error, Leaf>` witness-error
    /// shape (swift-compositions/swift-witnesses#3, ratified by comment 5143970225).
    /// Lifecycle facts — shutdown and timeout among them — ride in
    /// `Async.Lifecycle.Error` on the left and are deliberately absent here.
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        /// The request never produced a Stripe response.
        case transport
        /// Stripe answered with a structured API error.
        case api(StripeError.Error)
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Invoice`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.Invoices.Send {
    /// Failure leaf for `Stripe.Billing.Invoices.Client.send`.
    ///
    /// Domain leaf of the ruled `Either<Async.Lifecycle.Error, Leaf>` witness-error
    /// shape (swift-compositions/swift-witnesses#3, ratified by comment 5143970225).
    /// Lifecycle facts — shutdown and timeout among them — ride in
    /// `Async.Lifecycle.Error` on the left and are deliberately absent here.
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        /// The request never produced a Stripe response.
        case transport
        /// Stripe answered with a structured API error.
        case api(StripeError.Error)
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Invoice`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.Invoices.Void {
    /// Failure leaf for `Stripe.Billing.Invoices.Client.void`.
    ///
    /// Domain leaf of the ruled `Either<Async.Lifecycle.Error, Leaf>` witness-error
    /// shape (swift-compositions/swift-witnesses#3, ratified by comment 5143970225).
    /// Lifecycle facts — shutdown and timeout among them — ride in
    /// `Async.Lifecycle.Error` on the left and are deliberately absent here.
    public enum Error: Swift.Error, Sendable, Hashable,
        Witness.Unimplemented.Representable
    {
        /// The request never produced a Stripe response.
        case transport
        /// Stripe answered with a structured API error.
        case api(StripeError.Error)
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Invoice } }`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}
