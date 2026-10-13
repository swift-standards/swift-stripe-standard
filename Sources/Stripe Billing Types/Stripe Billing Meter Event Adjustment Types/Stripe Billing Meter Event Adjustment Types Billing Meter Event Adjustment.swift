import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.MeterEventAdjustments {
    public struct MeterEventAdjustment: Codable, Equatable, Sendable {
        public let object: String
        public let livemode: Bool
        public let status: String
        public let eventName: String
        public let type: String
        public let cancel: Cancel?

        public struct Cancel: Codable, Equatable, Sendable {
            public let identifier: String?
        }

        private enum CodingKeys: String, CodingKey {
            case object
            case livemode
            case status
            case eventName = "event_name"
            case type
            case cancel
        }
    }
}

extension Stripe.Billing.MeterEventAdjustments {
    public enum Create {}
}

extension Stripe.Billing.MeterEventAdjustments.Create {
    public struct Request: Codable, Equatable, Sendable {
        public var eventName: String
        public var type: AdjustmentType
        public var cancel: Cancel?

        public enum AdjustmentType: String, Codable, Equatable, Sendable {
            case cancel
        }

        public struct Cancel: Codable, Equatable, Sendable {
            public var identifier: String?

            public init(identifier: String? = nil) {
                self.identifier = identifier
            }
        }

        public init(
            eventName: String,
            type: AdjustmentType = .cancel,
            cancel: Cancel? = nil
        ) {
            self.eventName = eventName
            self.type = type
            self.cancel = cancel
        }

        private enum CodingKeys: String, CodingKey {
            case eventName = "event_name"
            case type
            case cancel
        }
    }
}
