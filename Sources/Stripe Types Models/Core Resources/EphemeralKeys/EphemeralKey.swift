public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe {
    public struct EphemeralKey: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var object: String
        public var created: Date
        public var expires: Date
        public var livemode: Bool
        public var secret: String?

        public init(
            id: ID,
            object: String,
            created: Date,
            expires: Date,
            livemode: Bool,
            secret: String? = nil
        ) {
            self.id = id
            self.object = object
            self.created = created
            self.expires = expires
            self.livemode = livemode
            self.secret = secret
        }
    }
}
