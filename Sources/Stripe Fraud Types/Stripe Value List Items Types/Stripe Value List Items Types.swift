import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Fraud.ValueListItems.API {
    public enum Create {}
    public enum List {}
}

extension Stripe.Fraud.ValueListItems.API.Create {
    public struct Request: Codable, Equatable, Sendable {
        public var value: String
        public var valueList: Stripe.Fraud.ValueLists.ValueList.ID

        private enum CodingKeys: String, CodingKey {
            case value
            case valueList = "value_list"
        }

        public init(
            value: String,
            valueList: Stripe.Fraud.ValueLists.ValueList.ID
        ) {
            self.value = value
            self.valueList = valueList
        }
    }
}

extension Stripe.Fraud.ValueListItems.API.List {
    public struct Request: Codable, Equatable, Sendable {
        public var valueList: Stripe.Fraud.ValueLists.ValueList.ID?
        public var value: String?
        public var endingBefore: String?
        public var limit: Int?
        public var startingAfter: String?
        public var created: Stripe.DateFilter?

        private enum CodingKeys: String, CodingKey {
            case valueList = "value_list"
            case value
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
            case created
        }

        public init(
            valueList: Stripe.Fraud.ValueLists.ValueList.ID? = nil,
            value: String? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil,
            created: Stripe.DateFilter? = nil
        ) {
            self.valueList = valueList
            self.value = value
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
            self.created = created
        }
    }
}

extension Stripe.Fraud.ValueListItems.API.List {
    public struct Response: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Fraud.ValueListItems.ValueListItem]?
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
            data: [Stripe.Fraud.ValueListItems.ValueListItem]? = nil,
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
