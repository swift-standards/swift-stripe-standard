import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Fraud.ValueLists.API {
    public enum Create {}
    public enum Update {}
    public enum List {}
}

extension Stripe.Fraud.ValueLists.API.Create {
    public struct Request: Codable, Equatable, Sendable {
        public var alias: String
        public var itemType: Stripe.Fraud.ValueLists.ItemType?
        public var name: String
        public var metadata: [String: String]?

        private enum CodingKeys: String, CodingKey {
            case alias
            case itemType = "item_type"
            case name
            case metadata
        }

        public init(
            alias: String,
            itemType: Stripe.Fraud.ValueLists.ItemType? = nil,
            name: String,
            metadata: [String: String]? = nil
        ) {
            self.alias = alias
            self.itemType = itemType
            self.name = name
            self.metadata = metadata
        }
    }
}

extension Stripe.Fraud.ValueLists.API.Update {
    public struct Request: Codable, Equatable, Sendable {
        public var alias: String?
        public var metadata: [String: String]?
        public var name: String?

        public init(
            alias: String? = nil,
            metadata: [String: String]? = nil,
            name: String? = nil
        ) {
            self.alias = alias
            self.metadata = metadata
            self.name = name
        }
    }
}

extension Stripe.Fraud.ValueLists.API.List {
    public struct Request: Codable, Equatable, Sendable {
        public var alias: String?
        public var contains: String?
        public var endingBefore: String?
        public var limit: Int?
        public var startingAfter: String?
        public var created: Stripe.DateFilter?

        private enum CodingKeys: String, CodingKey {
            case alias
            case contains
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
            case created
        }

        public init(
            alias: String? = nil,
            contains: String? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil,
            created: Stripe.DateFilter? = nil
        ) {
            self.alias = alias
            self.contains = contains
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
            self.created = created
        }
    }
}

extension Stripe.Fraud.ValueLists.API.List {
    public struct Response: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Fraud.ValueLists.ValueList]?
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
            data: [Stripe.Fraud.ValueLists.ValueList]? = nil,
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
