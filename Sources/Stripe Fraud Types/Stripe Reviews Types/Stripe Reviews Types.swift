import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Fraud.Reviews.API {
    public enum List {}
    public enum Approve {}
}

extension Stripe.Fraud.Reviews.API.List {
    public struct Request: Codable, Equatable, Sendable {
        public var endingBefore: String?
        public var limit: Int?
        public var startingAfter: String?
        public var created: Stripe.DateFilter?

        private enum CodingKeys: String, CodingKey {
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
            case created
        }

        public init(
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil,
            created: Stripe.DateFilter? = nil
        ) {
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
            self.created = created
        }
    }
}

extension Stripe.Fraud.Reviews.API.List {
    public struct Response: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Fraud.Reviews.Review]?
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
            data: [Stripe.Fraud.Reviews.Review]? = nil,
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

extension Stripe.Fraud.Reviews.API.Approve {
    public struct Request: Codable, Equatable, Sendable {
        public var expand: [String]?

        public init(expand: [String]? = nil) {
            self.expand = expand
        }
    }
}
