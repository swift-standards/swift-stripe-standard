public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct UsageRecord: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var object: String
    public var livemode: Bool
    public var quantity: Int?
    public var subscriptionItem: String?
    public var timestamp: Date?

    public init(
        id: ID,
        object: String,
        livemode: Bool,
        quantity: Int? = nil,
        subscriptionItem: String? = nil,
        timestamp: Date? = nil
    ) {
        self.id = id
        self.object = object
        self.livemode = livemode
        self.quantity = quantity
        self.subscriptionItem = subscriptionItem
        self.timestamp = timestamp
    }
}

public enum UsageRecordAction: String, Codable, Sendable {
    case set
    case increment
}

public struct UsageRecordSummary: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var object: String
    public var invoice: Stripe.Billing.Invoice.ID?
    public var livemode: Bool
    public var period: UsageRecordSummaryPeriod?
    public var subscriptionItem: String?
    public var totalUsage: Int?

    public init(
        id: ID,
        object: String,
        invoice: Stripe.Billing.Invoice.ID? = nil,
        livemode: Bool,
        period: UsageRecordSummaryPeriod? = nil,
        subscriptionItem: String? = nil,
        totalUsage: Int? = nil
    ) {
        self.id = id
        self.object = object
        self.invoice = invoice
        self.livemode = livemode
        self.period = period
        self.subscriptionItem = subscriptionItem
        self.totalUsage = totalUsage
    }
}

public struct UsageRecordSummaryPeriod: Codable, Hashable, Sendable {
    public var end: Date?
    public var start: Date?

    public init(
        end: Date? = nil,
        start: Date? = nil
    ) {
        self.end = end
        self.start = start
    }
}

public struct UsageRecordSummaryList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [UsageRecordSummary]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [UsageRecordSummary]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}
