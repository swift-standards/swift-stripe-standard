import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Billing.UsageRecords {
    public struct UsageRecord: Codable, Equatable, Sendable, Identifiable {
        public let id: ID
        public let object: String
        public let livemode: Bool
        public let quantity: Int
        public let subscriptionItem: String
        public let timestamp: Int

        public typealias ID = Tagged<Self, String>

        private enum CodingKeys: String, CodingKey {
            case id
            case object
            case livemode
            case quantity
            case subscriptionItem = "subscription_item"
            case timestamp
        }
    }
}

extension Stripe.Billing.UsageRecords {
    public enum Create {}
}

extension Stripe.Billing.UsageRecords.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let quantity: Int

        public let timestamp: Either<Int, Keyword>

        public let action: Action?

        public enum Keyword: String, Codable, Equatable, Sendable {
            case now
        }

        public enum Action: String, Codable, Equatable, Sendable {
            case increment
            case set
        }

        public init(
            quantity: Int,
            timestamp: Either<Int, Keyword> = .right(.now),
            action: Action? = nil
        ) {
            self.quantity = quantity
            self.timestamp = timestamp
            self.action = action
        }
    }
}

extension Stripe.Billing.UsageRecords.Create.Request {
    public enum Either<A: Codable & Equatable & Sendable, B: Codable & Equatable & Sendable>:
        Codable,
        Equatable, Sendable
    {
        case left(A)
        case right(B)

        public init(from decoder: any Decoder) throws {
            let container = try decoder.singleValueContainer()
            if let a = try? container.decode(A.self) {
                self = .left(a)
            } else if let b = try? container.decode(B.self) {
                self = .right(b)
            } else {
                throw DecodingError.typeMismatch(
                    Either.self,
                    DecodingError.Context(
                        codingPath: decoder.codingPath,
                        debugDescription: "Could not decode Either"
                    )
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.singleValueContainer()
            switch self {
            case .left(let a):
                try container.encode(a)

            case .right(let b):
                try container.encode(b)
            }
        }
    }
}

extension Stripe.Billing.UsageRecords {
    public enum List {}
}

extension Stripe.Billing.UsageRecords.List {
    public struct Request: Codable, Equatable, Sendable {
        public let endingBefore: String?

        public let limit: Int?

        public let startingAfter: String?

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
        public let data: [Stripe.Billing.UsageRecords.UsageRecord]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}
