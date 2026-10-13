public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.PaymentMethods.Sources {
    public enum Create {}

    public enum Update {}
}

extension Stripe.PaymentMethods.Sources.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let type: String

        public let amount: Int?

        public let currency: Stripe.Currency?

        public let flow: String?

        public let mandate: Mandate?

        public let metadata: [String: String]?

        public let owner: Owner?

        public let receiver: Receiver?

        public let redirect: Redirect?

        public let sourceOrder: SourceOrder?

        public let statementDescriptor: Stripe.StatementDescriptor?

        public let token: String?

        public let usage: String?

        private enum CodingKeys: String, CodingKey {
            case type
            case amount
            case currency
            case flow
            case mandate
            case metadata
            case owner
            case receiver
            case redirect
            case sourceOrder = "source_order"
            case statementDescriptor = "statement_descriptor"
            case token
            case usage
        }

        public init(
            type: String,
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            flow: String? = nil,
            mandate: Mandate? = nil,
            metadata: [String: String]? = nil,
            owner: Owner? = nil,
            receiver: Receiver? = nil,
            redirect: Redirect? = nil,
            sourceOrder: SourceOrder? = nil,
            statementDescriptor: Stripe.StatementDescriptor? = nil,
            token: String? = nil,
            usage: String? = nil
        ) {
            self.type = type
            self.amount = amount
            self.currency = currency
            self.flow = flow
            self.mandate = mandate
            self.metadata = metadata
            self.owner = owner
            self.receiver = receiver
            self.redirect = redirect
            self.sourceOrder = sourceOrder
            self.statementDescriptor = statementDescriptor
            self.token = token
            self.usage = usage
        }
    }
}

extension Stripe.PaymentMethods.Sources.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let amount: Int?

        public let mandate: Stripe.PaymentMethods.Sources.Mandate?

        public let metadata: [String: String]?

        public let owner: Stripe.PaymentMethods.Sources.Owner?

        public let sourceOrder: Stripe.PaymentMethods.Sources.SourceOrder?

        private enum CodingKeys: String, CodingKey {
            case amount
            case mandate
            case metadata
            case owner
            case sourceOrder = "source_order"
        }

        public init(
            amount: Int? = nil,
            mandate: Stripe.PaymentMethods.Sources.Mandate? = nil,
            metadata: [String: String]? = nil,
            owner: Stripe.PaymentMethods.Sources.Owner? = nil,
            sourceOrder: Stripe.PaymentMethods.Sources.SourceOrder? = nil
        ) {
            self.amount = amount
            self.mandate = mandate
            self.metadata = metadata
            self.owner = owner
            self.sourceOrder = sourceOrder
        }
    }
}

extension Stripe.PaymentMethods.Sources {
    public typealias Owner = Stripe.PaymentMethods.Sources.Create.Owner
    public typealias Mandate = Stripe.PaymentMethods.Sources.Create.Mandate
    public typealias Receiver = Stripe.PaymentMethods.Sources.Create.Receiver
    public typealias Redirect = Stripe.PaymentMethods.Sources.Create.Redirect
    public typealias SourceOrder = Stripe.PaymentMethods.Sources.Create.SourceOrder
}

extension Stripe.PaymentMethods.Sources.Create {
    public struct Owner: Codable, Equatable, Sendable {
        public let address: Address?
        public let email: String?
        public let name: String?
        public let phone: String?

        public init(
            address: Address? = nil,
            email: String? = nil,
            name: String? = nil,
            phone: String? = nil
        ) {
            self.address = address
            self.email = email
            self.name = name
            self.phone = phone
        }
    }

    public struct Mandate: Codable, Equatable, Sendable {
        public let acceptance: Acceptance?
        public let amount: Int?
        public let currency: Stripe.Currency?
        public let interval: String?
        public let notificationMethod: String?

        private enum CodingKeys: String, CodingKey {
            case acceptance
            case amount
            case currency
            case interval
            case notificationMethod = "notification_method"
        }

        public init(
            acceptance: Acceptance? = nil,
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            interval: String? = nil,
            notificationMethod: String? = nil
        ) {
            self.acceptance = acceptance
            self.amount = amount
            self.currency = currency
            self.interval = interval
            self.notificationMethod = notificationMethod
        }

        public struct Acceptance: Codable, Equatable, Sendable {
            public let date: Date?
            public let ip: String?
            public let status: String?
            public let userAgent: String?

            private enum CodingKeys: String, CodingKey {
                case date
                case ip
                case status
                case userAgent = "user_agent"
            }

            public init(
                date: Date? = nil,
                ip: String? = nil,
                status: String? = nil,
                userAgent: String? = nil
            ) {
                self.date = date
                self.ip = ip
                self.status = status
                self.userAgent = userAgent
            }
        }
    }

    public struct Receiver: Codable, Equatable, Sendable {
        public let refundAttributesMethod: String?

        private enum CodingKeys: String, CodingKey {
            case refundAttributesMethod = "refund_attributes_method"
        }

        public init(refundAttributesMethod: String? = nil) {
            self.refundAttributesMethod = refundAttributesMethod
        }
    }

    public struct Redirect: Codable, Equatable, Sendable {
        public let returnUrl: String?

        private enum CodingKeys: String, CodingKey {
            case returnUrl = "return_url"
        }

        public init(returnUrl: String? = nil) {
            self.returnUrl = returnUrl
        }
    }

    public struct SourceOrder: Codable, Equatable, Sendable {
        public let items: [Item]?
        public let shipping: Shipping?

        public init(
            items: [Item]? = nil,
            shipping: Shipping? = nil
        ) {
            self.items = items
            self.shipping = shipping
        }

        public struct Item: Codable, Equatable, Sendable {
            public let amount: Int?
            public let currency: Stripe.Currency?
            public let description: String?
            public let parent: String?
            public let quantity: Int?
            public let type: String?

            public init(
                amount: Int? = nil,
                currency: Stripe.Currency? = nil,
                description: String? = nil,
                parent: String? = nil,
                quantity: Int? = nil,
                type: String? = nil
            ) {
                self.amount = amount
                self.currency = currency
                self.description = description
                self.parent = parent
                self.quantity = quantity
                self.type = type
            }
        }

        public struct Shipping: Codable, Equatable, Sendable {
            public let address: Address?
            public let carrier: String?
            public let name: String?
            public let phone: String?
            public let trackingNumber: String?

            private enum CodingKeys: String, CodingKey {
                case address
                case carrier
                case name
                case phone
                case trackingNumber = "tracking_number"
            }

            public init(
                address: Address? = nil,
                carrier: String? = nil,
                name: String? = nil,
                phone: String? = nil,
                trackingNumber: String? = nil
            ) {
                self.address = address
                self.carrier = carrier
                self.name = name
                self.phone = phone
                self.trackingNumber = trackingNumber
            }
        }
    }
}
