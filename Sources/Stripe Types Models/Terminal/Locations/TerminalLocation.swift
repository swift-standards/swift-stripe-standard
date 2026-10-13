import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Terminal.Locations {
    public struct Location: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var address: Address?
        public var displayName: String?
        public var metadata: [String: String]?
        public var object: String
        public var configurationOverrides: String?
        public var livemode: Bool?

        public init(
            id: ID,
            address: Address? = nil,
            displayName: String? = nil,
            metadata: [String: String]? = nil,
            object: String,
            configurationOverrides: String? = nil,
            livemode: Bool? = nil
        ) {
            self.id = id
            self.address = address
            self.displayName = displayName
            self.metadata = metadata
            self.object = object
            self.configurationOverrides = configurationOverrides
            self.livemode = livemode
        }
    }
}
