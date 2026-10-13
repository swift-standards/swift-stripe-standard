public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Fraud.Reviews {
    public struct Review: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        @ExpandableOf<Stripe.Charges.Charge> public var charge
        public var open: Bool?
        @ExpandableOf<Stripe.PaymentIntents.PaymentIntent> public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public var reason: ReviewReason?
        public var object: String
        public var billingZip: String?
        public var closedReason: ReviewClosedReason?
        public var created: Date
        public var ipAddress: String?
        public var ipAddressLocation: ReviewIPAddressLocation?
        public var livemode: Bool?
        public var openedReason: ReviewOpenedReason?
        public var session: ReviewSession?

        public init(
            id: ID,
            charge: Stripe.Charges.Charge.ID? = nil,
            open: Bool? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            reason: ReviewReason? = nil,
            object: String,
            billingZip: String? = nil,
            closedReason: ReviewClosedReason? = nil,
            created: Date,
            ipAddress: String? = nil,
            ipAddressLocation: ReviewIPAddressLocation? = nil,
            livemode: Bool? = nil,
            openedReason: ReviewOpenedReason? = nil,
            session: ReviewSession? = nil
        ) {
            self.id = id
            self._charge = Expandable(id: charge)
            self.open = open
            self._paymentIntent = Expandable(id: paymentIntent)
            self.reason = reason
            self.object = object
            self.billingZip = billingZip
            self.closedReason = closedReason
            self.created = created
            self.ipAddress = ipAddress
            self.ipAddressLocation = ipAddressLocation
            self.livemode = livemode
            self.openedReason = openedReason
            self.session = session
        }
    }

    public enum ReviewReason: String, Codable, Sendable {
        case rule
        case manual
        case approved
        case refunded
        case refundedAsFraud = "refunded_as_fraud"
        case disputed
    }

    public enum ReviewClosedReason: String, Codable, Sendable {
        case approved
        case refunded
        case refundedAsFraud = "refunded_as_fraud"
        case disputed
        case redacted
    }

    public enum ReviewOpenedReason: String, Codable, Sendable {
        case rule
        case manual
    }

    public struct ReviewIPAddressLocation: Codable, Hashable, Sendable {
        public var city: String?
        public var country: String?
        public var latitude: Double?
        public var longitude: Double?
        public var region: String?

        public init(
            city: String? = nil,
            country: String? = nil,
            latitude: Double? = nil,
            longitude: Double? = nil,
            region: String? = nil
        ) {
            self.city = city
            self.country = country
            self.latitude = latitude
            self.longitude = longitude
            self.region = region
        }
    }

    public struct ReviewSession: Codable, Hashable, Sendable {
        public var browser: String?
        public var device: String?
        public var platform: String?
        public var version: String?

        public init(
            browser: String? = nil,
            device: String? = nil,
            platform: String? = nil,
            version: String? = nil
        ) {
            self.browser = browser
            self.device = device
            self.platform = platform
            self.version = version
        }
    }

    public struct ReviewList: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Review]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Review]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
