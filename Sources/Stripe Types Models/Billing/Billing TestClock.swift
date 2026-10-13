public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.TestClocks {
    public struct TestClock: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var object: String
        public var created: Date
        public var deletesAfter: Date?
        public var frozenTime: Date?
        public var livemode: Bool
        public var name: String?
        public var status: TestClock.Status?

        public init(
            id: ID,
            object: String,
            created: Date,
            deletesAfter: Date? = nil,
            frozenTime: Date? = nil,
            livemode: Bool,
            name: String? = nil,
            status: TestClock.Status? = nil
        ) {
            self.id = id
            self.object = object
            self.created = created
            self.deletesAfter = deletesAfter
            self.frozenTime = frozenTime
            self.livemode = livemode
            self.name = name
            self.status = status
        }
    }
}

extension Stripe.Billing.TestClocks.TestClock {
    public enum Status: String, Codable, Sendable {
        case ready
        case advancing
        case intervalFailure = "interval_failure"
    }
}

extension Stripe.Billing.TestClocks.TestClock {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Billing.TestClocks.TestClock]?
        public var hasMore: Bool?
        public var url: String?
        public var nextPage: String?
        public var totalCount: Int?

        public init(
            object: String,
            data: [Stripe.Billing.TestClocks.TestClock]? = nil,
            hasMore: Bool? = nil,
            url: String? = nil,
            nextPage: String? = nil,
            totalCount: Int? = nil
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
            self.nextPage = nextPage
            self.totalCount = totalCount
        }
    }
}
