public import Foundation
public import Stripe_Types_Shared

extension Stripe.Connect.Account {
    public struct Link: Codable, Hashable, Sendable {
        public var object: String
        public var created: Date
        public var expiresAt: Date?
        public var url: String?

        public init(
            object: String,
            created: Date,
            expiresAt: Date? = nil,
            url: String? = nil
        ) {
            self.object = object
            self.created = created
            self.expiresAt = expiresAt
            self.url = url
        }
    }
}

extension Stripe.Connect.Account.Link {
    public enum CreationType: String, Codable, Sendable {
        case accountOnboarding = "account_onboarding"
        case accountUpdate = "account_update"
    }
}

extension Stripe.Connect.Account.Link {
    public enum CreationCollectType: String, Codable, Sendable {
        case currentlyDue = "currently_due"
        case eventuallyDue = "eventually_due"
    }
}
