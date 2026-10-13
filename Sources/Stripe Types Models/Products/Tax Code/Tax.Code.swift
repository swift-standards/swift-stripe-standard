import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Tax {
    public struct Code: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var object: String
        public var description: String
        public var name: String

        public init(
            id: ID,
            object: String,
            description: String,
            name: String
        ) {
            self.id = id
            self.object = object
            self.description = description
            self.name = name
        }
    }
}

extension Stripe.Tax.Code {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Tax.Code]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Tax.Code]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
