import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Events {
    public enum List {}
}

extension Stripe.Events.List {
    public struct Request: Codable, Equatable, Sendable {
        public let created: Stripe.DateFilter?
        public let deliverySuccess: Bool?
        public let endingBefore: String?
        public let limit: Int?
        public let startingAfter: String?
        public let type: String?
        public let types: [String]?

        private enum CodingKeys: String, CodingKey {
            case created
            case deliverySuccess = "delivery_success"
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
            case type
            case types
        }

        public init(
            created: Stripe.DateFilter? = nil,
            deliverySuccess: Bool? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil,
            type: String? = nil,
            types: [String]? = nil
        ) {
            self.created = created
            self.deliverySuccess = deliverySuccess
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
            self.type = type
            self.types = types
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Events.Event]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }

        public init(
            object: String,
            url: String,
            hasMore: Bool,
            data: [Stripe.Events.Event]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}
