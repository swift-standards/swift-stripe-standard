import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Connect {
    public enum AccountLinks {}
}

extension Stripe.Connect.AccountLinks {
    public enum Create {}
}

extension Stripe.Connect.AccountLinks.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let account: String

        public let type: LinkType

        public let refreshUrl: String

        public let returnUrl: String

        public let collect: CollectType?

        public let collectionOptions: CollectionOptions?

        public init(
            account: String,
            type: LinkType,
            refreshUrl: String,
            returnUrl: String,
            collect: CollectType? = nil,
            collectionOptions: CollectionOptions? = nil
        ) {
            self.account = account
            self.type = type
            self.refreshUrl = refreshUrl
            self.returnUrl = returnUrl
            self.collect = collect
            self.collectionOptions = collectionOptions
        }

        private enum CodingKeys: String, CodingKey {
            case account
            case type
            case refreshUrl = "refresh_url"
            case returnUrl = "return_url"
            case collect
            case collectionOptions = "collection_options"
        }
    }

    public enum LinkType: String, Codable, Equatable, Sendable {
        case accountOnboarding = "account_onboarding"
        case accountUpdate = "account_update"
    }

    public enum CollectType: String, Codable, Equatable, Sendable {
        case currentlyDue = "currently_due"
        case eventuallyDue = "eventually_due"
    }

    public struct CollectionOptions: Codable, Equatable, Sendable {
        public let fields: FieldsType?

        public let futureRequirements: FutureRequirementsType?

        public init(
            fields: FieldsType? = nil,
            futureRequirements: FutureRequirementsType? = nil
        ) {
            self.fields = fields
            self.futureRequirements = futureRequirements
        }

        private enum CodingKeys: String, CodingKey {
            case fields
            case futureRequirements = "future_requirements"
        }
    }

    public enum FieldsType: String, Codable, Equatable, Sendable {
        case currentlyDue = "currently_due"
        case eventuallyDue = "eventually_due"
    }

    public enum FutureRequirementsType: String, Codable, Equatable, Sendable {
        case include
        case omit
    }
}
