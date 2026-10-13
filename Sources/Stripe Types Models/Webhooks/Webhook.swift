public import Foundation
import Stripe_Types_Shared
public import Tagged

public struct Webhook: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var apiVersion: String?
    public var description: String?
    public var enabledEvents: [String]?
    public var metadata: [String: String]?
    public var secret: String?
    public var status: WebhookStatus?
    public var url: String?
    public var object: String
    public var application: String?
    public var created: Date
    public var livemode: Bool?

    public init(
        id: ID,
        apiVersion: String? = nil,
        description: String? = nil,
        enabledEvents: [String]? = nil,
        metadata: [String: String]? = nil,
        secret: String? = nil,
        status: WebhookStatus? = nil,
        url: String? = nil,
        object: String,
        application: String? = nil,
        created: Date,
        livemode: Bool? = nil
    ) {
        self.id = id
        self.apiVersion = apiVersion
        self.description = description
        self.enabledEvents = enabledEvents
        self.metadata = metadata
        self.secret = secret
        self.status = status
        self.url = url
        self.object = object
        self.application = application
        self.created = created
        self.livemode = livemode
    }
}

public enum WebhookStatus: String, Codable, Sendable {
    case enabled
    case disabled
}

public struct WebhookList: Codable, Hashable, Sendable {
    public var object: String
    public var data: [Webhook]?
    public var hasMore: Bool?
    public var url: String?

    public init(
        object: String,
        data: [Webhook]? = nil,
        hasMore: Bool? = nil,
        url: String? = nil
    ) {
        self.object = object
        self.data = data
        self.hasMore = hasMore
        self.url = url
    }
}
