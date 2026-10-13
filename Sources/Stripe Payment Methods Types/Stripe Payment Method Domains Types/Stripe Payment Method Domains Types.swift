import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.PaymentMethodDomains {
    public enum Create {}
    public enum Update {}
    public enum List {}
}

extension Stripe.PaymentMethodDomains.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let domainName: String
        public let enabled: Bool?

        private enum CodingKeys: String, CodingKey {
            case domainName = "domain_name"
            case enabled
        }

        public init(
            domainName: String,
            enabled: Bool? = nil
        ) {
            self.domainName = domainName
            self.enabled = enabled
        }
    }
}

extension Stripe.PaymentMethodDomains.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }
}

extension Stripe.PaymentMethodDomains.List {
    public struct Request: Codable, Equatable, Sendable {
        public let domainName: String?
        public let enabled: Bool?
        public let endingBefore: String?
        public let limit: Int?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case domainName = "domain_name"
            case enabled
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            domainName: String? = nil,
            enabled: Bool? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.domainName = domainName
            self.enabled = enabled
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.PaymentMethodDomain]

        public init(
            object: String,
            url: String,
            hasMore: Bool,
            data: [Stripe.PaymentMethodDomain]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}
