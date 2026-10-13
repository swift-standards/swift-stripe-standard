public import Foundation
public import Stripe_Types_Shared

extension Stripe.Connect.Account {
    public struct Session: Codable, Hashable, Sendable {
        public var account: String
        public var clientSecret: String?
        public var components: Components?
        public var expiresAt: Date?
        public var object: String
        public var livemode: Bool

        private enum CodingKeys: String, CodingKey {
            case account
            case clientSecret = "client_secret"
            case components
            case expiresAt = "expires_at"
            case object
            case livemode
        }

        public init(
            account: String,
            clientSecret: String? = nil,
            components: Components? = nil,
            expiresAt: Date? = nil,
            object: String,
            livemode: Bool
        ) {
            self.account = account
            self.clientSecret = clientSecret
            self.components = components
            self.expiresAt = expiresAt
            self.object = object
            self.livemode = livemode
        }

        public struct Components: Codable, Hashable, Sendable {
        }
    }
}
