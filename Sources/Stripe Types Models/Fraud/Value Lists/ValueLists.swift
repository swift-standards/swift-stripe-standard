public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Fraud.ValueLists {
    public struct ValueList: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var alias: String?
        public var itemType: ItemType?
        public var listItems: ListItems?
        public var metadata: [String: String]?
        public var name: String?
        public var object: String
        public var created: Date
        public var createdBy: String?
        public var livemode: Bool?

        public init(
            id: ID,
            alias: String? = nil,
            itemType: ItemType? = nil,
            listItems: ListItems? = nil,
            metadata: [String: String]? = nil,
            name: String? = nil,
            object: String,
            created: Date,
            createdBy: String? = nil,
            livemode: Bool? = nil
        ) {
            self.id = id
            self.alias = alias
            self.itemType = itemType
            self.listItems = listItems
            self.metadata = metadata
            self.name = name
            self.object = object
            self.created = created
            self.createdBy = createdBy
            self.livemode = livemode
        }
    }

    public enum ItemType: String, Codable, Sendable {
        case cardFingerprint = "card_fingerprint"
        case cardBin = "card_bin"
        case email
        case ipAddress = "ip_address"
        case country
        case string
        case caseSensitiveString = "case_sensitive_string"
        case customerId = "customer_id"
    }

    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [ValueList]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [ValueList]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }

    public struct ListItems: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Fraud.ValueListItems.ValueListItem]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Fraud.ValueListItems.ValueListItem]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
