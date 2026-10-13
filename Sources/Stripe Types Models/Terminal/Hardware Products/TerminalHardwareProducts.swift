public import Foundation
import Stripe_Types_Shared
public import Tagged

public struct TerminalHardwareProduct: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var object: String
    public var status: TerminalHardwareProductStatus?
    public var type: String?
    public var unavailableAfter: Date?

    public init(
        id: ID,
        object: String,
        status: TerminalHardwareProductStatus? = nil,
        type: String? = nil,
        unavailableAfter: Date? = nil
    ) {
        self.id = id
        self.object = object
        self.status = status
        self.type = type
        self.unavailableAfter = unavailableAfter
    }
}

public enum TerminalHardwareProductStatus: String, Codable, Sendable {
    case available
    case unavailable
}

public struct TerminalHardwareProductList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [TerminalHardwareProduct]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [TerminalHardwareProduct]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}
