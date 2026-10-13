public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Fraud.ValueListItems {
    public struct ValueListItem: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var value: String?
        public var valueList: Stripe.Fraud.ValueLists.ValueList.ID?
        public var object: String
        public var created: Date
        public var createdBy: String?
        public var livemode: Bool?

        public init(
            id: ID,
            value: String? = nil,
            valueList: Stripe.Fraud.ValueLists.ValueList.ID? = nil,
            object: String,
            created: Date,
            createdBy: String? = nil,
            livemode: Bool? = nil
        ) {
            self.id = id
            self.value = value
            self.valueList = valueList
            self.object = object
            self.created = created
            self.createdBy = createdBy
            self.livemode = livemode
        }
    }

    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [ValueListItem]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [ValueListItem]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
