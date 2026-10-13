public import Foundation
import Stripe_Types_Shared
public import Tagged

public struct ReportType: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var dataAvailableEnd: Date?
    public var dataAvailableStart: Date?
    public var name: String?
    public var object: String
    public var defaultColumns: [String]?
    public var livemode: Bool
    public var updated: Date?
    public var version: Int?

    public init(
        id: ID,
        dataAvailableEnd: Date? = nil,
        dataAvailableStart: Date? = nil,
        name: String? = nil,
        object: String,
        defaultColumns: [String]? = nil,
        livemode: Bool,
        updated: Date? = nil,
        version: Int? = nil
    ) {
        self.id = id
        self.dataAvailableEnd = dataAvailableEnd
        self.dataAvailableStart = dataAvailableStart
        self.name = name
        self.object = object
        self.defaultColumns = defaultColumns
        self.livemode = livemode
        self.updated = updated
        self.version = version
    }
}

public struct ReportTypeList: Codable, Hashable, Sendable {
    public var object: String
    public var data: [ReportType]?
    public var hasMore: Bool?
    public var url: String?

    public init(
        object: String,
        data: [ReportType]? = nil,
        hasMore: Bool? = nil,
        url: String? = nil
    ) {
        self.object = object
        self.data = data
        self.hasMore = hasMore
        self.url = url
    }
}
