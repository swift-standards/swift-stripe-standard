import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Refunds {
    public enum Create {}
    public enum Update {}
    public enum List {}
}

extension Stripe.Refunds.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let amount: Int?
        public let charge: Stripe.Charges.Charge.ID?
        public let instructionsEmail: String?
        public let metadata: [String: String]?
        public let origin: Origin?
        public let paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public let reason: Stripe.Refunds.Refund.Reason?
        public let refundApplicationFee: Bool?
        public let reverseTransfer: Bool?

        private enum CodingKeys: String, CodingKey {
            case amount
            case charge
            case instructionsEmail = "instructions_email"
            case metadata
            case origin
            case paymentIntent = "payment_intent"
            case reason
            case refundApplicationFee = "refund_application_fee"
            case reverseTransfer = "reverse_transfer"
        }

        public enum Origin: String, Codable, Equatable, Sendable {
            case customerBalance = "customer_balance"
        }

        public init(
            amount: Int? = nil,
            charge: Stripe.Charges.Charge.ID? = nil,
            instructionsEmail: String? = nil,
            metadata: [String: String]? = nil,
            origin: Origin? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            reason: Stripe.Refunds.Refund.Reason? = nil,
            refundApplicationFee: Bool? = nil,
            reverseTransfer: Bool? = nil
        ) {
            self.amount = amount
            self.charge = charge
            self.instructionsEmail = instructionsEmail
            self.metadata = metadata
            self.origin = origin
            self.paymentIntent = paymentIntent
            self.reason = reason
            self.refundApplicationFee = refundApplicationFee
            self.reverseTransfer = reverseTransfer
        }
    }
}

extension Stripe.Refunds.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let metadata: [String: String]?

        public init(metadata: [String: String]? = nil) {
            self.metadata = metadata
        }
    }
}

extension Stripe.Refunds.List {
    public struct Request: Codable, Equatable, Sendable {
        public let charge: Stripe.Charges.Charge.ID?
        public let created: Stripe.DateFilter?
        public let endingBefore: String?
        public let limit: Int?
        public let paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case charge
            case created
            case endingBefore = "ending_before"
            case limit
            case paymentIntent = "payment_intent"
            case startingAfter = "starting_after"
        }

        public init(
            charge: Stripe.Charges.Charge.ID? = nil,
            created: Stripe.DateFilter? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            startingAfter: String? = nil
        ) {
            self.charge = charge
            self.created = created
            self.endingBefore = endingBefore
            self.limit = limit
            self.paymentIntent = paymentIntent
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Refunds.Refund]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }

        public init(
            object: String,
            url: String,
            hasMore: Bool,
            data: [Stripe.Refunds.Refund]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}
