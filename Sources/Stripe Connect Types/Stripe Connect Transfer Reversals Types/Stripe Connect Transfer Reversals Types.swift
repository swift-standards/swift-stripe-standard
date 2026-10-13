import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Connect.Transfer {
    public enum Reversals {}
}

extension Stripe.Connect.Transfer.Reversals {
    public enum Create {}
}

extension Stripe.Connect.Transfer.Reversals.Create {
    public struct Request: Codable, Equatable, Sendable {
        public var amount: Int?

        public var description: String?

        public var metadata: [String: String]?

        public var refundApplicationFee: Bool?

        private enum CodingKeys: String, CodingKey {
            case amount
            case description
            case metadata
            case refundApplicationFee = "refund_application_fee"
        }

        public init(
            amount: Int? = nil,
            description: String? = nil,
            metadata: [String: String]? = nil,
            refundApplicationFee: Bool? = nil
        ) {
            self.amount = amount
            self.description = description
            self.metadata = metadata
            self.refundApplicationFee = refundApplicationFee
        }
    }
}

extension Stripe.Connect.Transfer.Reversals {
    public enum Update {}
}

extension Stripe.Connect.Transfer.Reversals.Update {
    public struct Request: Codable, Equatable, Sendable {
        public var description: String?

        public var metadata: [String: String]?

        public init(
            description: String? = nil,
            metadata: [String: String]? = nil
        ) {
            self.description = description
            self.metadata = metadata
        }
    }
}

extension Stripe.Connect.Transfer.Reversals {
    public enum List {}
}

extension Stripe.Connect.Transfer.Reversals.List {
    public struct Request: Codable, Equatable, Sendable {
        public var endingBefore: String?

        public var limit: Int?

        public var startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }

    public typealias Response = Stripe.Connect.Transfer.Reversal.List
}
