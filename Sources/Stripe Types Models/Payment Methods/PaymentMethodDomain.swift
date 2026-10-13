public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe {
    public struct PaymentMethodDomain: Codable, Hashable, Sendable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var object: String
        public var amazonPay: PaymentMethodStatus?
        public var applePay: PaymentMethodStatus?
        public var created: Date
        public var domainName: String
        public var enabled: Bool
        public var googlePay: PaymentMethodStatus?
        public var klarna: PaymentMethodStatus?
        public var link: PaymentMethodStatus?
        public var livemode: Bool?
        public var paypal: PaymentMethodStatus?

        private enum CodingKeys: String, CodingKey {
            case id
            case object
            case amazonPay = "amazon_pay"
            case applePay = "apple_pay"
            case created
            case domainName = "domain_name"
            case enabled
            case googlePay = "google_pay"
            case klarna
            case link
            case livemode
            case paypal
        }

        public init(
            id: ID,
            object: String,
            amazonPay: PaymentMethodStatus? = nil,
            applePay: PaymentMethodStatus? = nil,
            created: Date,
            domainName: String,
            enabled: Bool,
            googlePay: PaymentMethodStatus? = nil,
            klarna: PaymentMethodStatus? = nil,
            link: PaymentMethodStatus? = nil,
            livemode: Bool? = nil,
            paypal: PaymentMethodStatus? = nil
        ) {
            self.id = id
            self.object = object
            self.amazonPay = amazonPay
            self.applePay = applePay
            self.created = created
            self.domainName = domainName
            self.enabled = enabled
            self.googlePay = googlePay
            self.klarna = klarna
            self.link = link
            self.livemode = livemode
            self.paypal = paypal
        }

        public struct PaymentMethodStatus: Codable, Hashable, Sendable {
            public var status: Status?
            public var statusDetails: StatusDetails?

            private enum CodingKeys: String, CodingKey {
                case status
                case statusDetails = "status_details"
            }

            public init(
                status: Status? = nil,
                statusDetails: StatusDetails? = nil
            ) {
                self.status = status
                self.statusDetails = statusDetails
            }

            public enum Status: String, Codable, Sendable {
                case active
                case inactive
            }

            public struct StatusDetails: Codable, Hashable, Sendable {
                public init() {}
            }
        }
    }
}
