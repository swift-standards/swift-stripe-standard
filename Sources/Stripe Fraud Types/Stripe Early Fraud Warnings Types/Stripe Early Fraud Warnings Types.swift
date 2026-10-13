import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Fraud.EarlyFraudWarnings.API {
    public enum List {}
}

extension Stripe.Fraud.EarlyFraudWarnings.API.List {
    public struct Request: Codable, Equatable, Sendable {
        public var charge: Stripe.Charges.Charge.ID?
        public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public var endingBefore: String?
        public var limit: Int?
        public var startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case charge
            case paymentIntent = "payment_intent"
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            charge: Stripe.Charges.Charge.ID? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.charge = charge
            self.paymentIntent = paymentIntent
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }
}

extension Stripe.Fraud.EarlyFraudWarnings.API.List {
    public struct Response: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Fraud.EarlyFraudWarnings.EarlyFraudWarning]?
        public var hasMore: Bool?
        public var url: String?

        private enum CodingKeys: String, CodingKey {
            case object
            case data
            case hasMore = "has_more"
            case url
        }

        public init(
            object: String,
            data: [Stripe.Fraud.EarlyFraudWarnings.EarlyFraudWarning]? = nil,
            hasMore: Bool? = nil,
            url: String? = nil
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
        }
    }
}
