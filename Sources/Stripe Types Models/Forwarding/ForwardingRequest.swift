public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Forwarding {
    public struct Request: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var object: String
        public var created: Date
        public var livemode: Bool?
        public var metadata: [String: String]?
        public var paymentMethod: String
        public var replacements: [Replacement]?
        public var requestContext: RequestContext?
        public var requestDetails: RequestDetails?
        public var responseDetails: ResponseDetails?
        public var url: String?

        private enum CodingKeys: String, CodingKey {
            case id
            case object
            case created
            case livemode
            case metadata
            case paymentMethod = "payment_method"
            case replacements
            case requestContext = "request_context"
            case requestDetails = "request_details"
            case responseDetails = "response_details"
            case url
        }

        public init(
            id: ID,
            object: String,
            created: Date,
            livemode: Bool? = nil,
            metadata: [String: String]? = nil,
            paymentMethod: String,
            replacements: [Replacement]? = nil,
            requestContext: RequestContext? = nil,
            requestDetails: RequestDetails? = nil,
            responseDetails: ResponseDetails? = nil,
            url: String? = nil
        ) {
            self.id = id
            self.object = object
            self.created = created
            self.livemode = livemode
            self.metadata = metadata
            self.paymentMethod = paymentMethod
            self.replacements = replacements
            self.requestContext = requestContext
            self.requestDetails = requestDetails
            self.responseDetails = responseDetails
            self.url = url
        }
    }
}

extension Stripe.Forwarding.Request {
    public enum Replacement: String, Codable, Sendable {
        case cardCvc = "card_cvc"
        case cardExpiry = "card_expiry"
        case cardNumber = "card_number"
        case cardholderName = "cardholder_name"
        case requestSignature = "request_signature"
    }

    public struct RequestContext: Codable, Hashable, Sendable {
        public var destinationDuration: Int?
        public var destinationIpAddress: String?

        private enum CodingKeys: String, CodingKey {
            case destinationDuration = "destination_duration"
            case destinationIpAddress = "destination_ip_address"
        }

        public init(
            destinationDuration: Int? = nil,
            destinationIpAddress: String? = nil
        ) {
            self.destinationDuration = destinationDuration
            self.destinationIpAddress = destinationIpAddress
        }
    }

    public struct RequestDetails: Codable, Hashable, Sendable {
        public var body: String?
        public var headers: [Header]?
        public var httpMethod: HTTPMethod?

        private enum CodingKeys: String, CodingKey {
            case body
            case headers
            case httpMethod = "http_method"
        }

        public init(
            body: String? = nil,
            headers: [Header]? = nil,
            httpMethod: HTTPMethod? = nil
        ) {
            self.body = body
            self.headers = headers
            self.httpMethod = httpMethod
        }
    }

    public struct ResponseDetails: Codable, Hashable, Sendable {
        public var body: String?
        public var headers: [Header]?
        public var status: Int?

        public init(
            body: String? = nil,
            headers: [Header]? = nil,
            status: Int? = nil
        ) {
            self.body = body
            self.headers = headers
            self.status = status
        }
    }

    public struct Header: Codable, Hashable, Sendable {
        public var name: String?
        public var value: String?

        public init(name: String? = nil, value: String? = nil) {
            self.name = name
            self.value = value
        }
    }

    public enum HTTPMethod: String, Codable, Sendable {
        case get = "GET"
        case post = "POST"
        case put = "PUT"
        case patch = "PATCH"
        case delete = "DELETE"
    }
}
