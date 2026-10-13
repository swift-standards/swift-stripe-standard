public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.MeterEvents {
    public struct MeterEvent: Codable, Equatable, Sendable {
        public let object: String
        public let created: Date
        public let eventName: String
        public let livemode: Bool
        public let identifier: String
        public let timestamp: Date
        public let payload: [String: String]?

        private enum CodingKeys: String, CodingKey {
            case object
            case created
            case eventName = "event_name"
            case livemode
            case identifier
            case timestamp
            case payload
        }
    }
}

extension Stripe.Billing.MeterEvents {
    public enum Create {}
}

extension Stripe.Billing.MeterEvents.Create {
    public struct Request: Codable, Equatable, Sendable {
        public var eventName: String
        public var identifier: String?
        public var timestamp: Date
        public var payload: [String: String]

        public init(
            eventName: String,
            identifier: String? = nil,
            timestamp: Date,
            payload: [String: String]
        ) {
            self.eventName = eventName
            self.identifier = identifier
            self.timestamp = timestamp
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case eventName = "event_name"
            case identifier
            case timestamp
            case payload
        }
    }
}
