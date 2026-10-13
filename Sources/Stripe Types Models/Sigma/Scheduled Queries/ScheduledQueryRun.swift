public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct ScheduledQueryRun: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var dataLoadTime: Date?
    public var file: Stripe.Files.File?
    public var sql: String?
    public var status: ScheduledQueryRunStatus?
    public var title: String?
    public var object: String
    public var created: Date
    public var error: ScheduledQueryRunError?
    public var livemode: Bool?
    public var resultAvailableUntil: Date?

    public init(
        id: ID,
        dataLoadTime: Date? = nil,
        file: Stripe.Files.File? = nil,
        sql: String? = nil,
        status: ScheduledQueryRunStatus? = nil,
        title: String? = nil,
        object: String,
        created: Date,
        error: ScheduledQueryRunError? = nil,
        livemode: Bool? = nil,
        resultAvailableUntil: Date? = nil
    ) {
        self.id = id
        self.dataLoadTime = dataLoadTime
        self.file = file
        self.sql = sql
        self.status = status
        self.title = title
        self.object = object
        self.created = created
        self.error = error
        self.livemode = livemode
        self.resultAvailableUntil = resultAvailableUntil
    }
}

public struct ScheduledQueryRunList: Codable, Hashable, Sendable {
    public var object: String
    public var data: [ScheduledQueryRun]?
    public var hasMore: Bool?
    public var url: String?

    public init(
        object: String,
        data: [ScheduledQueryRun]? = nil,
        hasMore: Bool? = nil,
        url: String? = nil
    ) {
        self.object = object
        self.data = data
        self.hasMore = hasMore
        self.url = url
    }
}

public struct ScheduledQueryRunError: Codable, Hashable, Sendable {
    public var message: String?

    public init(
        message: String? = nil
    ) {
        self.message = message
    }
}

public enum ScheduledQueryRunStatus: String, Codable, Sendable {
    case completed
    case canceled
    case failed
    case timedOut = "time_out"
}
