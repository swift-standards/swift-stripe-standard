import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.TestClocks {
    public enum Create {}
}

extension Stripe.Billing.TestClocks.Create {
    public struct Request: Codable, Equatable, Sendable {
        public var frozenTime: Int
        public var name: String?

        public init(
            frozenTime: Int,
            name: String? = nil
        ) {
            self.frozenTime = frozenTime
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case frozenTime = "frozen_time"
            case name
        }
    }
}

extension Stripe.Billing.TestClocks {
    public enum List {}
}

extension Stripe.Billing.TestClocks.List {
    public struct Request: Codable, Equatable, Sendable {
        public var endingBefore: String?
        public var limit: Int?
        public var startingAfter: String?

        public init(
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }

        private enum CodingKeys: String, CodingKey {
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Billing.TestClocks.TestClock]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}

extension Stripe.Billing.TestClocks {
    public enum Advance {}
}

extension Stripe.Billing.TestClocks.Advance {
    public struct Request: Codable, Equatable, Sendable {
        public var frozenTime: Int

        public init(frozenTime: Int) {
            self.frozenTime = frozenTime
        }

        private enum CodingKeys: String, CodingKey {
            case frozenTime = "frozen_time"
        }
    }
}
