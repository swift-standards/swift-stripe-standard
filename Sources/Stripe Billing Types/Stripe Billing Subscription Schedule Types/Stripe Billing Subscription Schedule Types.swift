public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Subscription.Schedule {
    public enum StartDate: Equatable, Sendable {
        case now
        case date(Date)
    }
}

extension Stripe.Billing.Subscription.Schedule.StartDate: Codable {
    public init(from decoder: any Decoder) throws {
        let container = try decoder.singleValueContainer()

        if let stringValue = try? container.decode(String.self), stringValue == "now" {
            self = .now
            return
        }

        if let date = try? container.decode(Date.self) {
            self = .date(date)
            return
        }

        if let timestamp = try? container.decode(Int.self) {
            self = .date(Date(timeIntervalSince1970: TimeInterval(timestamp)))
            return
        }

        throw DecodingError.dataCorruptedError(
            in: container,
            debugDescription: "StartDate must be either 'now' string or a timestamp"
        )
    }

    public func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()

        switch self {
        case .now:
            try container.encode("now")

        case .date(let date):
            try container.encode(Int(date.timeIntervalSince1970))
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public enum ProrationBehavior: String, Codable, Equatable, Sendable {
        case createProrations = "create_prorations"
        case none
        case alwaysInvoice = "always_invoice"
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct Discount: Codable, Equatable, Sendable {
        public var coupon: String?
        public var promotionCode: Promotion.Code.ID?

        public init(
            coupon: String? = nil,
            promotionCode: Promotion.Code.ID? = nil
        ) {
            self.coupon = coupon
            self.promotionCode = promotionCode
        }

        private enum CodingKeys: String, CodingKey {
            case coupon
            case promotionCode = "promotion_code"
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct BillingThresholds: Codable, Equatable, Sendable {
        public var usageGte: Int?

        public init(usageGte: Int? = nil) {
            self.usageGte = usageGte
        }

        private enum CodingKeys: String, CodingKey {
            case usageGte = "usage_gte"
        }
    }
}
