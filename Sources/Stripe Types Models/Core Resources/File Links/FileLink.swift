public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.FileLinks {
    public struct FileLink: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var object: String
        public var created: Date
        public var expired: Bool?
        public var expiresAt: Date?
        @ExpandableOf<Stripe.Files.File> public var file: Stripe.Files.File.ID?
        public var livemode: Bool?
        public var metadata: [String: String]?
        public var url: String?

        public init(
            id: ID,
            object: String,
            created: Date,
            expired: Bool? = nil,
            expiresAt: Date? = nil,
            file: Stripe.Files.File.ID? = nil,
            livemode: Bool? = nil,
            metadata: [String: String]? = nil,
            url: String? = nil
        ) {
            self.id = id
            self.object = object
            self.created = created
            self.expired = expired
            self.expiresAt = expiresAt
            self._file = Expandable(id: file)
            self.livemode = livemode
            self.metadata = metadata
            self.url = url
        }
    }
}
