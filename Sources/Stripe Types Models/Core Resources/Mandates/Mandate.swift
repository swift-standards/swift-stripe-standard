public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Mandates {
    public struct Mandate: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var customerAcceptance: Stripe.Mandates.Mandate.CustomerAcceptance?
        @ExpandableOf<Stripe.PaymentMethods.PaymentMethod> public var paymentMethod
        public var paymentMethodDetails: Stripe.Mandates.Mandate.PaymentMethodDetails?
        public var status: Stripe.Mandates.Mandate.Status?
        public var type: Stripe.Mandates.Mandate.`Type`?
        public var object: String
        public var livemode: Bool?
        public var multiUse: String?
        public var singleUse: Stripe.Mandates.Mandate.SingleUse?

        public init(
            id: ID,
            customerAcceptance: Stripe.Mandates.Mandate.CustomerAcceptance? = nil,
            paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            paymentMethodDetails: Stripe.Mandates.Mandate.PaymentMethodDetails? = nil,
            status: Stripe.Mandates.Mandate.Status? = nil,
            type: Stripe.Mandates.Mandate.`Type`? = nil,
            object: String,
            livemode: Bool? = nil,
            multiUse: String? = nil,
            singleUse: Stripe.Mandates.Mandate.SingleUse? = nil
        ) {
            self.id = id
            self.customerAcceptance = customerAcceptance
            self._paymentMethod = Expandable(id: paymentMethod)
            self.paymentMethodDetails = paymentMethodDetails
            self.status = status
            self.type = type
            self.object = object
            self.livemode = livemode
            self.multiUse = multiUse
            self.singleUse = singleUse
        }
    }
}

extension Stripe.Mandates.Mandate {
    public struct CustomerAcceptance: Codable, Hashable, Sendable {
        public var acceptedAt: Date?
        public var offline: Stripe.Mandates.Mandate.CustomerAcceptance.Offline?
        public var online: Stripe.Mandates.Mandate.CustomerAcceptance.Online?
        public var type: Stripe.Mandates.Mandate.CustomerAcceptance.`Type`?

        public init(
            acceptedAt: Date? = nil,
            offline: Stripe.Mandates.Mandate.CustomerAcceptance.Offline? = nil,
            online: Stripe.Mandates.Mandate.CustomerAcceptance.Online? = nil,
            type: Stripe.Mandates.Mandate.CustomerAcceptance.`Type`? = nil
        ) {
            self.acceptedAt = acceptedAt
            self.offline = offline
            self.online = online
            self.type = type
        }
    }
}

extension Stripe.Mandates.Mandate.CustomerAcceptance {
    public struct Offline: Codable, Hashable, Sendable {
        public init() {}
    }

    public struct Online: Codable, Hashable, Sendable {
        public var ipAddress: String?
        public var userAgent: String?

        public init(
            ipAddress: String? = nil,
            userAgent: String? = nil
        ) {
            self.ipAddress = ipAddress
            self.userAgent = userAgent
        }
    }

    public enum `Type`: String, Codable, Sendable {
        case online
        case offline
    }
}

extension Stripe.Mandates.Mandate {
    public struct PaymentMethodDetails: Codable, Hashable, Sendable {
        public var acssDebit: Stripe.Mandates.Mandate.PaymentMethodDetails.ACSSDebit?
        public var auBecsDebit: Stripe.Mandates.Mandate.PaymentMethodDetails.AuBecsDebit?
        public var bacsDebit: Stripe.Mandates.Mandate.PaymentMethodDetails.BacsDebit?
        public var blik: Stripe.Mandates.Mandate.PaymentMethodDetails.Blik?
        public var card: Stripe.Mandates.Mandate.PaymentMethodDetails.Card?
        public var link: Stripe.Mandates.Mandate.PaymentMethodDetails.Link?
        public var sepaDebit: Stripe.Mandates.Mandate.PaymentMethodDetails.SepaDebit?
        public var type: Stripe.PaymentMethods.PaymentMethod.`Type`?

        public init(
            acssDebit: Stripe.Mandates.Mandate.PaymentMethodDetails.ACSSDebit? = nil,
            auBecsDebit: Stripe.Mandates.Mandate.PaymentMethodDetails.AuBecsDebit? = nil,
            bacsDebit: Stripe.Mandates.Mandate.PaymentMethodDetails.BacsDebit? = nil,
            blik: Stripe.Mandates.Mandate.PaymentMethodDetails.Blik? = nil,
            card: Stripe.Mandates.Mandate.PaymentMethodDetails.Card? = nil,
            link: Stripe.Mandates.Mandate.PaymentMethodDetails.Link? = nil,
            sepaDebit: Stripe.Mandates.Mandate.PaymentMethodDetails.SepaDebit? = nil,
            type: Stripe.PaymentMethods.PaymentMethod.`Type`? = nil
        ) {
            self.acssDebit = acssDebit
            self.auBecsDebit = auBecsDebit
            self.bacsDebit = bacsDebit
            self.blik = blik
            self.card = card
            self.link = link
            self.sepaDebit = sepaDebit
            self.type = type
        }
    }
}

extension Stripe.Mandates.Mandate {
    public struct SingleUse: Codable, Hashable, Sendable {
        public var amount: Int?
        public var currency: Stripe.Currency?

        public init(
            amount: Int? = nil,
            currency: Stripe.Currency? = nil
        ) {
            self.amount = amount
            self.currency = currency
        }
    }
}

extension Stripe.Mandates.Mandate {
    public struct MultiUse: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Mandates.Mandate {
    public enum Status: String, Codable, Sendable {
        case active
        case inactive
        case pending
    }
}

extension Stripe.Mandates.Mandate {
    public enum `Type`: String, Codable, Sendable {
        case multiUse = "multi_use"
        case singleUse = "single_use"
    }
}
