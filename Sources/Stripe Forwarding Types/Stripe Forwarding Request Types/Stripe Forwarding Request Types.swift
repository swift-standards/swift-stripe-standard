import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Forwarding.Request {
    public enum Create {}
    public enum List {}
}

extension Stripe.Forwarding.Request.Create {
    public struct Request: Codable, Equatable, Sendable {
        public var paymentMethod: String
        public var replacements: [Stripe.Forwarding.Request.Replacement]
        public var url: String
        public var requestHeaders: [Stripe.Forwarding.Request.Header]?
        public var requestBody: String?

        private enum CodingKeys: String, CodingKey {
            case paymentMethod = "payment_method"
            case replacements
            case url
            case requestHeaders = "request[headers]"
            case requestBody = "request[body]"
        }

        public init(
            paymentMethod: String,
            replacements: [Stripe.Forwarding.Request.Replacement],
            url: String,
            requestHeaders: [Stripe.Forwarding.Request.Header]? = nil,
            requestBody: String? = nil
        ) {
            self.paymentMethod = paymentMethod
            self.replacements = replacements
            self.url = url
            self.requestHeaders = requestHeaders
            self.requestBody = requestBody
        }
    }
}

extension Stripe.Forwarding.Request.List {
    public struct Request: Codable, Equatable, Sendable {
        public var endingBefore: String?
        public var limit: Int?
        public var startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }
}

extension Stripe.Forwarding.Request.List {
    public struct Response: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Forwarding.Request]?
        public var hasMore: Bool?
        public var url: String?

        private enum CodingKeys: String, CodingKey {
            case object
            case data
            case hasMore = "has_more"
            case url
        }

        public init(
            object: String,
            data: [Stripe.Forwarding.Request]? = nil,
            hasMore: Bool? = nil,
            url: String? = nil
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
        }
    }
}
