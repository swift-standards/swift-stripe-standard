public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct TerminalHardwareSKU: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var amount: Int?
    public var currency: Stripe.Currency?
    public var object: String
    public var country: String?
    public var orderable: Int?
    @ExpandableOf<TerminalHardwareProduct> public var product
    public var status: TerminalHardwareSKUStatus?
    public var unavailableAfter: Date?

    public init(
        id: ID,
        amount: Int? = nil,
        currency: Stripe.Currency? = nil,
        object: String,
        country: String? = nil,
        orderable: Int? = nil,
        product: TerminalHardwareProduct.ID? = nil,
        status: TerminalHardwareSKUStatus? = nil,
        unavailableAfter: Date? = nil
    ) {
        self.id = id
        self.amount = amount
        self.currency = currency
        self.object = object
        self.country = country
        self.orderable = orderable
        self._product = Expandable(id: product)
        self.status = status
        self.unavailableAfter = unavailableAfter
    }
}

public enum TerminalHardwareSKUStatus: String, Codable, Sendable {
    case available
    case unavailable
}

public struct TerminalHardwareSKUList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [TerminalHardwareSKU]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [TerminalHardwareSKU]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}
