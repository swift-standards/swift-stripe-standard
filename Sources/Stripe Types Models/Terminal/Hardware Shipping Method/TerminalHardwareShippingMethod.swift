public import Foundation
import Stripe_Types_Shared
public import Tagged

public struct TerminalHardwareShippingMethod: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var country: String?
    public var estimatedDeliveryWindow: TerminalHardwareShippingMethodEstimatedDeliveryWindow?
    public var name: TerminalHardwareShippingMethodName?
    public var object: String
    public var status: TerminalHardwareShippingMethodStatus?
    public var unavailableAfter: Date?

    public init(
        id: ID,
        country: String? = nil,
        estimatedDeliveryWindow: TerminalHardwareShippingMethodEstimatedDeliveryWindow? = nil,
        name: TerminalHardwareShippingMethodName? = nil,
        object: String,
        status: TerminalHardwareShippingMethodStatus? = nil,
        unavailableAfter: Date? = nil
    ) {
        self.id = id
        self.country = country
        self.estimatedDeliveryWindow = estimatedDeliveryWindow
        self.name = name
        self.object = object
        self.status = status
        self.unavailableAfter = unavailableAfter
    }
}

public struct TerminalHardwareShippingMethodEstimatedDeliveryWindow: Codable, Hashable, Sendable {
    public var maximumDate: String?
    public var minimumDate: String?

    public init(
        maximumDate: String? = nil,
        minimumDate: String? = nil
    ) {
        self.maximumDate = maximumDate
        self.minimumDate = minimumDate
    }
}

public enum TerminalHardwareShippingMethodName: String, Codable, Sendable {
    case standard
    case express
    case priority
}

public enum TerminalHardwareShippingMethodStatus: String, Codable, Sendable {
    case available
    case unavailable
}

public struct TerminalHardwareShippingMethodList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [TerminalHardwareShippingMethod]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [TerminalHardwareShippingMethod]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}
