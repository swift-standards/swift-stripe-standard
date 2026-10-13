public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct ReportRun: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var parameters: ReportRunParameters?
    public var reportType: String?
    public var result: Stripe.Files.File?
    public var status: ReportRunStatus?
    public var object: String
    public var created: Date
    public var error: String?
    public var livemode: Bool?
    public var succeededAt: Date?

    public init(
        id: ID,
        parameters: ReportRunParameters? = nil,
        reportType: String? = nil,
        result: Stripe.Files.File? = nil,
        status: ReportRunStatus? = nil,
        object: String,
        created: Date,
        error: String? = nil,
        livemode: Bool? = nil,
        succeededAt: Date? = nil
    ) {
        self.id = id
        self.parameters = parameters
        self.reportType = reportType
        self.result = result
        self.status = status
        self.object = object
        self.created = created
        self.error = error
        self.livemode = livemode
        self.succeededAt = succeededAt
    }
}

public struct ReportRunParameters: Codable, Hashable, Sendable {
    public var columns: [String]?
    public var connectedAccount: String?
    public var currency: Stripe.Currency?
    public var intervalEnd: Date?
    public var intervalStart: Date?
    public var payout: Stripe.Payouts.Payout.ID?
    public var reportingCategory: String?
    public var timezone: String?

    public init(
        columns: [String]? = nil,
        connectedAccount: String? = nil,
        currency: Stripe.Currency? = nil,
        intervalEnd: Date? = nil,
        intervalStart: Date? = nil,
        payout: Stripe.Payouts.Payout.ID? = nil,
        reportingCategory: String? = nil,
        timezone: String? = nil
    ) {
        self.columns = columns
        self.connectedAccount = connectedAccount
        self.currency = currency
        self.intervalEnd = intervalEnd
        self.intervalStart = intervalStart
        self.payout = payout
        self.reportingCategory = reportingCategory
        self.timezone = timezone
    }
}

public enum ReportRunStatus: String, Codable, Sendable {
    case pending
    case succeeded
    case failed
}

public struct ReportRunList: Codable, Hashable, Sendable {
    public var object: String
    public var data: [ReportRun]?
    public var hasMore: Bool?
    public var url: String?

    public init(
        object: String,
        data: [ReportRun]? = nil,
        hasMore: Bool? = nil,
        url: String? = nil
    ) {
        self.object = object
        self.data = data
        self.hasMore = hasMore
        self.url = url
    }
}
