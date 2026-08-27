//
//  Stripe Billing Credit Notes Types Client Errors.swift
//  swift-stripe-standard
//

import Async_Lifecycle
import Either
import Stripe_Types_Models
import Stripe_Types_Shared
import Witnesses

extension Stripe.Billing.CreditNotes.Create {
    /// Failure leaf for `Stripe.Billing.CreditNotes.Client.create`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Credit.Note`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.CreditNotes.Update {
    /// Failure leaf for `Stripe.Billing.CreditNotes.Client.update`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Credit.Note`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.CreditNotes {
    /// Namespace for the `retrieve` operation.
    public enum Retrieve {}
}

extension Stripe.Billing.CreditNotes.Retrieve {
    /// Failure leaf for `Stripe.Billing.CreditNotes.Client.retrieve`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Credit.Note`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.CreditNotes.List {
    /// Failure leaf for `Stripe.Billing.CreditNotes.Client.list`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.CreditNotes.List.Response`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.CreditNotes.Preview {
    /// Failure leaf for `Stripe.Billing.CreditNotes.Client.preview`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Credit.Note`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.CreditNotes.Void {
    /// Failure leaf for `Stripe.Billing.CreditNotes.Client.void`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.Credit.Note`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.CreditNotes.Lines {
    /// Failure leaf for `Stripe.Billing.CreditNotes.Client.lines`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.CreditNotes.Lines.Response`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}

extension Stripe.Billing.CreditNotes.PreviewLines {
    /// Failure leaf for `Stripe.Billing.CreditNotes.Client.previewLines`.
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
        /// Stripe answered, but the payload did not decode as `Stripe.Billing.CreditNotes.PreviewLines.Response } }`.
        case malformedResponse
        /// The witness carries no implementation for this operation.
        case notImplemented(Witness.Unimplemented.Error)

        public static func unimplemented(_ error: Witness.Unimplemented.Error) -> Self {
            .notImplemented(error)
        }
    }
}
