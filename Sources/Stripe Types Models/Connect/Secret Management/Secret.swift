public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Connect {
    public struct Secret: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var object: String
        public var created: Date
        public var deleted: Bool?
        public var expiresAt: Date?
        public var livemode: Bool
        public var name: String?
        public var payload: String?
        public var scope: Stripe.Connect.Secret.Scope?

        public init(
            id: ID,
            object: String,
            created: Date,
            deleted: Bool? = nil,
            expiresAt: Date? = nil,
            livemode: Bool,
            name: String? = nil,
            payload: String? = nil,
            scope: Stripe.Connect.Secret.Scope? = nil
        ) {
            self.id = id
            self.object = object
            self.created = created
            self.deleted = deleted
            self.expiresAt = expiresAt
            self.livemode = livemode
            self.name = name
            self.payload = payload
            self.scope = scope
        }
    }
}

extension Stripe.Connect.Secret {
    public struct Scope: Codable, Hashable, Sendable {
        public var type: Stripe.Connect.Secret.Scope.`Type`?
        public var user: String?

        public init(
            type: Stripe.Connect.Secret.Scope.`Type`? = nil,
            user: String? = nil
        ) {
            self.type = type
            self.user = user
        }
    }
}

extension Stripe.Connect.Secret.Scope {
    public enum `Type`: String, Codable, Sendable {
        case user
        case account
    }
}

extension Stripe.Connect.Secret {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Connect.Secret]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Connect.Secret]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
