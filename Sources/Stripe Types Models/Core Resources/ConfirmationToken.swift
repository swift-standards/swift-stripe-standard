public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct ConfirmationToken: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>

    public var id: ID
    public var object: String
    public var created: Date
    public var expiresAt: Date?
    public var livemode: Bool?
    public var mandateData: MandateData?
    public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
    public var paymentMethodPreview: PaymentMethodPreview?
    public var returnUrl: String?
    public var setupFutureUsage: SetupFutureUsage?
    public var setupIntent: Stripe.Setup.Intent.ID?
    public var shipping: Shipping?
    public var useStripeSdk: Bool?

    private enum CodingKeys: String, CodingKey {
        case id
        case object
        case created
        case expiresAt = "expires_at"
        case livemode
        case mandateData = "mandate_data"
        case paymentIntent = "payment_intent"
        case paymentMethodPreview = "payment_method_preview"
        case returnUrl = "return_url"
        case setupFutureUsage = "setup_future_usage"
        case setupIntent = "setup_intent"
        case shipping
        case useStripeSdk = "use_stripe_sdk"
    }

    public init(
        id: ID,
        object: String,
        created: Date,
        expiresAt: Date? = nil,
        livemode: Bool? = nil,
        mandateData: MandateData? = nil,
        paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
        paymentMethodPreview: PaymentMethodPreview? = nil,
        returnUrl: String? = nil,
        setupFutureUsage: SetupFutureUsage? = nil,
        setupIntent: Stripe.Setup.Intent.ID? = nil,
        shipping: Shipping? = nil,
        useStripeSdk: Bool? = nil
    ) {
        self.id = id
        self.object = object
        self.created = created
        self.expiresAt = expiresAt
        self.livemode = livemode
        self.mandateData = mandateData
        self.paymentIntent = paymentIntent
        self.paymentMethodPreview = paymentMethodPreview
        self.returnUrl = returnUrl
        self.setupFutureUsage = setupFutureUsage
        self.setupIntent = setupIntent
        self.shipping = shipping
        self.useStripeSdk = useStripeSdk
    }
}

extension ConfirmationToken {
    public struct MandateData: Codable, Hashable, Sendable {
        public var customerAcceptance: CustomerAcceptance?

        private enum CodingKeys: String, CodingKey {
            case customerAcceptance = "customer_acceptance"
        }

        public init(customerAcceptance: CustomerAcceptance? = nil) {
            self.customerAcceptance = customerAcceptance
        }
    }

    public struct CustomerAcceptance: Codable, Hashable, Sendable {
        public var acceptedAt: Date?
        public var online: OnlineAcceptance?
        public var type: AcceptanceType?

        private enum CodingKeys: String, CodingKey {
            case acceptedAt = "accepted_at"
            case online
            case type
        }

        public init(
            acceptedAt: Date? = nil,
            online: OnlineAcceptance? = nil,
            type: AcceptanceType? = nil
        ) {
            self.acceptedAt = acceptedAt
            self.online = online
            self.type = type
        }
    }

    public struct OnlineAcceptance: Codable, Hashable, Sendable {
        public var ipAddress: String?
        public var userAgent: String?

        private enum CodingKeys: String, CodingKey {
            case ipAddress = "ip_address"
            case userAgent = "user_agent"
        }

        public init(ipAddress: String? = nil, userAgent: String? = nil) {
            self.ipAddress = ipAddress
            self.userAgent = userAgent
        }
    }

    public enum AcceptanceType: String, Codable, Sendable {
        case offline
        case online
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case offSession = "off_session"
        case onSession = "on_session"
    }

    public struct PaymentMethodPreview: Codable, Hashable, Sendable {
        public var type: String?
        public var billingDetails: BillingModel.Details?

        private enum CodingKeys: String, CodingKey {
            case type
            case billingDetails = "billing_details"
        }

        public init(type: String? = nil, billingDetails: BillingModel.Details? = nil) {
            self.type = type
            self.billingDetails = billingDetails
        }
    }

    public struct Shipping: Codable, Hashable, Sendable {
        public var address: Address?
        public var name: String?
        public var phone: String?

        public init(address: Address? = nil, name: String? = nil, phone: String? = nil) {
            self.address = address
            self.name = name
            self.phone = phone
        }
    }
}
