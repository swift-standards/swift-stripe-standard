public import Foundation
public import Stripe_Types_Shared

extension Stripe.Mandates.Mandate.PaymentMethodDetails {
    public struct ACSSDebit: Codable, Hashable, Sendable {
        public var defaultFor: Stripe.Mandates.Mandate.PaymentMethodDetails.ACSSDebit.DefaultFor?
        public var intervalDescription: String?
        public var paymentSchedule: Stripe.Mandates.Mandate.PaymentMethodDetails.ACSSDebit.PaymentSchedule?
        public var transactionType: Stripe.Mandates.Mandate.PaymentMethodDetails.ACSSDebit.TransactionType?

        public init(
            defaultFor: Stripe.Mandates.Mandate.PaymentMethodDetails.ACSSDebit.DefaultFor? = nil,
            intervalDescription: String? = nil,
            paymentSchedule: Stripe.Mandates.Mandate.PaymentMethodDetails.ACSSDebit
                .PaymentSchedule? =
                nil,
            transactionType: Stripe.Mandates.Mandate.PaymentMethodDetails.ACSSDebit
                .TransactionType? = nil
        ) {
            self.defaultFor = defaultFor
            self.intervalDescription = intervalDescription
            self.paymentSchedule = paymentSchedule
            self.transactionType = transactionType
        }
    }
}

extension Stripe.Mandates.Mandate.PaymentMethodDetails.ACSSDebit {
    public enum DefaultFor: String, Codable, Sendable {
        case invoice
        case subscription
    }

    public enum PaymentSchedule: String, Codable, Sendable {
        case interval
        case sporadic
        case combined
    }

    public enum TransactionType: String, Codable, Sendable {
        case personal
        case business
    }
}

extension Stripe.Mandates.Mandate.PaymentMethodDetails {
    public struct AuBecsDebit: Codable, Hashable, Sendable {
        public var url: String?

        public init(
            url: String? = nil
        ) {
            self.url = url
        }
    }
}

extension Stripe.Mandates.Mandate.PaymentMethodDetails {
    public struct BacsDebit: Codable, Hashable, Sendable {
        public var networkStatus: Stripe.Mandates.Mandate.PaymentMethodDetails.BacsDebit.NetworkStatus?
        public var reference: String?
        public var url: String?

        public init(
            networkStatus: Stripe.Mandates.Mandate.PaymentMethodDetails.BacsDebit.NetworkStatus? =
                nil,
            reference: String? = nil,
            url: String? = nil
        ) {
            self.networkStatus = networkStatus
            self.reference = reference
            self.url = url
        }
    }
}

extension Stripe.Mandates.Mandate.PaymentMethodDetails.BacsDebit {
    public enum NetworkStatus: String, Codable, Sendable {
        case pending
        case revoked
        case refused
        case accepted
    }
}

extension Stripe.Mandates.Mandate.PaymentMethodDetails {
    public struct Blik: Codable, Hashable, Sendable {
        public var expiresAfter: Date?
        public var offSession: Stripe.Mandates.Mandate.PaymentMethodDetails.Blik.OffSession?
        public var type: Stripe.Mandates.Mandate.PaymentMethodDetails.Blik.`Type`?

        public init(
            expiresAfter: Date? = nil,
            offSession: Stripe.Mandates.Mandate.PaymentMethodDetails.Blik.OffSession? = nil,
            type: Stripe.Mandates.Mandate.PaymentMethodDetails.Blik.`Type`? = nil
        ) {
            self.expiresAfter = expiresAfter
            self.offSession = offSession
            self.type = type
        }
    }
}

extension Stripe.Mandates.Mandate.PaymentMethodDetails.Blik {
    public struct OffSession: Codable, Hashable, Sendable {
        public var amount: Int?
        public var currency: Stripe.Currency?
        public var interval: Stripe.Interval?

        public init(
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            interval: Stripe.Interval? = nil
        ) {
            self.amount = amount
            self.currency = currency
            self.interval = interval
        }
    }

    public enum `Type`: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
    }
}

extension Stripe.Mandates.Mandate.PaymentMethodDetails.Blik.OffSession {
    public typealias Interval = Stripe.Interval
}

extension Stripe.Mandates.Mandate.PaymentMethodDetails {
    public struct Card: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Mandates.Mandate.PaymentMethodDetails {
    public struct Link: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Mandates.Mandate.PaymentMethodDetails {
    public struct SepaDebit: Codable, Hashable, Sendable {
        public var reference: String?
        public var url: String?

        public init(
            reference: String? = nil,
            url: String? = nil
        ) {
            self.reference = reference
            self.url = url
        }
    }
}

extension Stripe.Mandates.Mandate.PaymentMethodDetails {
    public struct UsBankAccount: Codable, Hashable, Sendable {
        public init() {}
    }
}
