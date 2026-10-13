import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Connect {
    public struct Application: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var name: String?
        public var object: String

        public init(
            id: ID,
            name: String? = nil,
            object: String
        ) {
            self.id = id
            self.name = name
            self.object = object
        }
    }
}
