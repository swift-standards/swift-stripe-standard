public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Files {
    public enum Create {}
    public enum List {}
}

extension Stripe.Files.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let file: Data
        public let purpose: Stripe.Files.File.Purpose
        public let expand: [String]?
        public let fileLinkData: FileLinkData?

        private enum CodingKeys: String, CodingKey {
            case file
            case purpose
            case expand
            case fileLinkData = "file_link_data"
        }

        public init(
            file: Data,
            purpose: Stripe.Files.File.Purpose,
            expand: [String]? = nil,
            fileLinkData: FileLinkData? = nil
        ) {
            self.file = file
            self.purpose = purpose
            self.expand = expand
            self.fileLinkData = fileLinkData
        }
    }
}

extension Stripe.Files.Create.Request {
    public struct FileLinkData: Codable, Equatable, Sendable {
        public let create: Bool
        public let expiresAt: Date?
        public let metadata: [String: String]?

        private enum CodingKeys: String, CodingKey {
            case create
            case expiresAt = "expires_at"
            case metadata
        }

        public init(
            create: Bool,
            expiresAt: Date? = nil,
            metadata: [String: String]? = nil
        ) {
            self.create = create
            self.expiresAt = expiresAt
            self.metadata = metadata
        }
    }
}

extension Stripe.Files.List {
    public struct Request: Codable, Equatable, Sendable {
        public let created: Stripe.DateFilter?
        public let endingBefore: String?
        public let limit: Int?
        public let purpose: Stripe.Files.File.Purpose?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case created
            case endingBefore = "ending_before"
            case limit
            case purpose
            case startingAfter = "starting_after"
        }

        public init(
            created: Stripe.DateFilter? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            purpose: Stripe.Files.File.Purpose? = nil,
            startingAfter: String? = nil
        ) {
            self.created = created
            self.endingBefore = endingBefore
            self.limit = limit
            self.purpose = purpose
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Files.File]

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
            data: [Stripe.Files.File]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}
