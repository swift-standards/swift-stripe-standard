public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.FileLinks {
    public enum Create {}
    public enum Update {}
    public enum List {}
}

extension Stripe.FileLinks.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let file: String
        public let expiresAt: Date?
        public let metadata: [String: String]?

        private enum CodingKeys: String, CodingKey {
            case file
            case expiresAt = "expires_at"
            case metadata
        }

        public init(
            file: String,
            expiresAt: Date? = nil,
            metadata: [String: String]? = nil
        ) {
            self.file = file
            self.expiresAt = expiresAt
            self.metadata = metadata
        }
    }
}

extension Stripe.FileLinks.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let expiresAt: Date?
        public let metadata: [String: String]?

        private enum CodingKeys: String, CodingKey {
            case expiresAt = "expires_at"
            case metadata
        }

        public init(
            expiresAt: Date? = nil,
            metadata: [String: String]? = nil
        ) {
            self.expiresAt = expiresAt
            self.metadata = metadata
        }
    }
}

extension Stripe.FileLinks.List {
    public struct Request: Codable, Equatable, Sendable {
        public let created: Stripe.DateFilter?
        public let endingBefore: String?
        public let expired: Bool?
        public let file: String?
        public let limit: Int?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case created
            case endingBefore = "ending_before"
            case expired
            case file
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            created: Stripe.DateFilter? = nil,
            endingBefore: String? = nil,
            expired: Bool? = nil,
            file: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.created = created
            self.endingBefore = endingBefore
            self.expired = expired
            self.file = file
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.FileLinks.FileLink]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }

        public init(
            object: String,
            url: String,
            hasMore: Bool,
            data: [Stripe.FileLinks.FileLink]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}
