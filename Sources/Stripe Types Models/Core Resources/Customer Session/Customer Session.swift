import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Customers.Customer {
    public struct Session: Codable, Hashable, Sendable {
        public var clientSecret: String

        public var components: Components

        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?

        public var expiresAt: Int

        public var livemode: Bool

        public var object: String

        public init(
            clientSecret: String,
            components: Components,
            customer: Stripe.Customers.Customer.ID,
            expiresAt: Int,
            livemode: Bool,
            object: String
        ) {
            self.clientSecret = clientSecret
            self.components = components
            self._customer = Expandable(id: customer)
            self.expiresAt = expiresAt
            self.livemode = livemode
            self.object = object
        }
    }
}

extension Stripe.Customers.Customer.Session {
    public struct Components: Codable, Hashable, Sendable {
        public var buyButton: BuyButton?

        public var paymentElement: PaymentElement?

        public var pricingTable: PricingTable?

        private enum CodingKeys: String, CodingKey {
            case buyButton = "buy_button"
            case paymentElement = "payment_element"
            case pricingTable = "pricing_table"
        }

        public init(
            buyButton: BuyButton? = nil,
            paymentElement: PaymentElement? = nil,
            pricingTable: PricingTable? = nil
        ) {
            self.buyButton = buyButton
            self.paymentElement = paymentElement
            self.pricingTable = pricingTable
        }
    }
}

extension Stripe.Customers.Customer.Session.Components {
    public struct BuyButton: Codable, Hashable, Sendable {
        public var enabled: Bool

        public init(enabled: Bool) {
            self.enabled = enabled
        }
    }

    public struct PaymentElement: Codable, Hashable, Sendable {
        public var enabled: Bool

        public var features: Features?

        public init(
            enabled: Bool,
            features: Features? = nil
        ) {
            self.enabled = enabled
            self.features = features
        }
    }

    public struct PricingTable: Codable, Hashable, Sendable {
        public var enabled: Bool

        public init(enabled: Bool) {
            self.enabled = enabled
        }
    }
}

extension Stripe.Customers.Customer.Session.Components.PaymentElement {
    public struct Features: Codable, Hashable, Sendable {
        public var paymentMethodAllowRedisplayFilters: [AllowRedisplayFilter]?

        public var paymentMethodRedisplay: Feature?

        public var paymentMethodRedisplayLimit: Int?

        public var paymentMethodRemove: Feature?

        public var paymentMethodSave: Feature?

        public var paymentMethodSaveUsage: SaveUsage?

        private enum CodingKeys: String, CodingKey {
            case paymentMethodAllowRedisplayFilters = "payment_method_allow_redisplay_filters"
            case paymentMethodRedisplay = "payment_method_redisplay"
            case paymentMethodRedisplayLimit = "payment_method_redisplay_limit"
            case paymentMethodRemove = "payment_method_remove"
            case paymentMethodSave = "payment_method_save"
            case paymentMethodSaveUsage = "payment_method_save_usage"
        }

        public init(
            paymentMethodAllowRedisplayFilters: [AllowRedisplayFilter]? = nil,
            paymentMethodRedisplay: Feature? = nil,
            paymentMethodRedisplayLimit: Int? = nil,
            paymentMethodRemove: Feature? = nil,
            paymentMethodSave: Feature? = nil,
            paymentMethodSaveUsage: SaveUsage? = nil
        ) {
            self.paymentMethodAllowRedisplayFilters = paymentMethodAllowRedisplayFilters
            self.paymentMethodRedisplay = paymentMethodRedisplay
            self.paymentMethodRedisplayLimit = paymentMethodRedisplayLimit
            self.paymentMethodRemove = paymentMethodRemove
            self.paymentMethodSave = paymentMethodSave
            self.paymentMethodSaveUsage = paymentMethodSaveUsage
        }
    }
}

extension Stripe.Customers.Customer.Session.Components.PaymentElement.Features {
    public enum AllowRedisplayFilter: String, Codable, Sendable {
        case always
        case limited
        case unspecified
    }

    public enum Feature: String, Codable, Sendable {
        case disabled
        case enabled
    }

    public enum SaveUsage: String, Codable, Sendable {
        case offSession = "off_session"
        case onSession = "on_session"
    }
}
