public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Customer.Portal {
    public struct Configuration: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var object: String
        public var active: Bool?
        public var application: String?
        public var businessProfile: PortalConfigurationBusinessProfile?
        public var created: Date
        public var defaultReturnUrl: String?
        public var features: PortalConfigurationFeatures?
        public var isDefault: Bool?
        public var livemode: Bool?
        public var loginPage: PortalConfigurationLoginPage?
        public var metadata: [String: String]?
        public var updated: Date?

        public init(
            id: ID,
            object: String,
            active: Bool? = nil,
            application: String? = nil,
            businessProfile: PortalConfigurationBusinessProfile? = nil,
            created: Date,
            defaultReturnUrl: String? = nil,
            features: PortalConfigurationFeatures? = nil,
            isDefault: Bool? = nil,
            livemode: Bool? = nil,
            loginPage: PortalConfigurationLoginPage? = nil,
            metadata: [String: String]? = nil,
            updated: Date? = nil
        ) {
            self.id = id
            self.object = object
            self.active = active
            self.application = application
            self.businessProfile = businessProfile
            self.created = created
            self.defaultReturnUrl = defaultReturnUrl
            self.features = features
            self.isDefault = isDefault
            self.livemode = livemode
            self.loginPage = loginPage
            self.metadata = metadata
            self.updated = updated
        }
    }

    public struct PortalConfigurationBusinessProfile: Codable, Hashable, Sendable {
        public var headline: String?
        public var privacyPolicyUrl: String?
        public var termsOfServiceUrl: String?

        public init(
            headline: String? = nil,
            privacyPolicyUrl: String? = nil,
            termsOfServiceUrl: String? = nil
        ) {
            self.headline = headline
            self.privacyPolicyUrl = privacyPolicyUrl
            self.termsOfServiceUrl = termsOfServiceUrl
        }
    }

    public struct PortalConfigurationFeatures: Codable, Hashable, Sendable {
        public var customerUpdate: PortalConfigurationFeaturesCustomerUpdate?
        public var invoiceHistory: PortalConfigurationFeaturesInvoiceHistory?
        public var paymentMethodUpdate: PortalConfigurationFeaturesPaymentMethodUpdate?
        public var subscriptionCancel: PortalConfigurationFeaturesSubscriptionCancel?
        public var subscriptionPause: PortalConfigurationFeaturesSubscriptionPause?
        public var subscriptionUpdate: PortalConfigurationFeaturesSubscriptionUpdate?

        public init(
            customerUpdate: PortalConfigurationFeaturesCustomerUpdate? = nil,
            invoiceHistory: PortalConfigurationFeaturesInvoiceHistory? = nil,
            paymentMethodUpdate: PortalConfigurationFeaturesPaymentMethodUpdate? = nil,
            subscriptionCancel: PortalConfigurationFeaturesSubscriptionCancel? = nil,
            subscriptionPause: PortalConfigurationFeaturesSubscriptionPause? = nil,
            subscriptionUpdate: PortalConfigurationFeaturesSubscriptionUpdate? = nil
        ) {
            self.customerUpdate = customerUpdate
            self.invoiceHistory = invoiceHistory
            self.paymentMethodUpdate = paymentMethodUpdate
            self.subscriptionCancel = subscriptionCancel
            self.subscriptionPause = subscriptionPause
            self.subscriptionUpdate = subscriptionUpdate
        }
    }

    public struct PortalConfigurationFeaturesCustomerUpdate: Codable, Hashable, Sendable {
        public var allowedUpdates: [PortalConfigurationFeaturesCustomerUpdateAllowedUpdate]?

        public init(
            allowedUpdates: [PortalConfigurationFeaturesCustomerUpdateAllowedUpdate]? = nil
        ) {
            self.allowedUpdates = allowedUpdates
        }
    }

    public enum PortalConfigurationFeaturesCustomerUpdateAllowedUpdate: String, Codable, Sendable {
        case email
        case address
        case shipping
        case phone
        case taxId = "tax_id"
    }

    public struct PortalConfigurationFeaturesInvoiceHistory: Codable, Hashable, Sendable {
        public var enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }

    public struct PortalConfigurationFeaturesPaymentMethodUpdate: Codable, Hashable, Sendable {
        public var enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }

    public struct PortalConfigurationFeaturesSubscriptionCancel: Codable, Hashable, Sendable {
        public var cancellationReason: PortalConfigurationFeaturesSubscriptionCancelationReason?
        public var enabled: Bool?
        public var mode: PortalConfigurationFeaturesSubscriptionCancelMode?
        public var prorationBehavior: String?

        public init(
            cancellationReason: PortalConfigurationFeaturesSubscriptionCancelationReason? = nil,
            enabled: Bool? = nil,
            mode: PortalConfigurationFeaturesSubscriptionCancelMode? = nil,
            prorationBehavior: String? = nil
        ) {
            self.cancellationReason = cancellationReason
            self.enabled = enabled
            self.mode = mode
            self.prorationBehavior = prorationBehavior
        }
    }

    public struct PortalConfigurationFeaturesSubscriptionCancelationReason: Codable, Hashable,
        Sendable
    {
        public var enabled: Bool?
        public var options: [PortalConfigurationFeaturesSubscriptionCancelationReasonOption]?

        public init(
            enabled: Bool? = nil,
            options: [PortalConfigurationFeaturesSubscriptionCancelationReasonOption]? = nil
        ) {
            self.enabled = enabled
            self.options = options
        }
    }

    public enum PortalConfigurationFeaturesSubscriptionCancelationReasonOption: String, Codable,
        Sendable
    {
        case tooExpensive = "too_expensive"
        case missingFeatures = "missing_features"
        case switchedService = "switched_service"
        case unused
        case customerService = "customer_service"
        case tooComplex = "too_complex"
        case lowQuality = "low_quality"
        case other
    }

    public enum PortalConfigurationFeaturesSubscriptionCancelMode: String, Codable, Sendable {
        case immediately
        case atPeriodEnd = "at_period_end"
    }

    public struct PortalConfigurationFeaturesSubscriptionPause: Codable, Hashable, Sendable {
        public var enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }

    public struct PortalConfigurationFeaturesSubscriptionUpdate: Codable, Hashable, Sendable {
        public var defaultAllowedUpdates: [PortalConfigurationFeaturesSubscriptionUpdateDefaultAllowedUpdate]?
        public var enabled: Bool?
        public var products: [PortalConfigurationFeaturesSubscriptionUpdateProduct]?
        public var prorationBehavior: String?

        public init(
            defaultAllowedUpdates:
                [PortalConfigurationFeaturesSubscriptionUpdateDefaultAllowedUpdate]? =
                nil,
            enabled: Bool? = nil,
            products: [PortalConfigurationFeaturesSubscriptionUpdateProduct]? = nil,
            prorationBehavior: String? = nil
        ) {
            self.defaultAllowedUpdates = defaultAllowedUpdates
            self.enabled = enabled
            self.products = products
            self.prorationBehavior = prorationBehavior
        }
    }

    public enum PortalConfigurationFeaturesSubscriptionUpdateDefaultAllowedUpdate: String, Codable,
        Sendable
    {
        case price
        case quantity
        case promotionCode = "promotion_code"
    }

    public struct PortalConfigurationFeaturesSubscriptionUpdateProduct: Codable, Hashable, Sendable {
        public var prices: [String]?
        public var product: String?

        public init(
            prices: [String]? = nil,
            product: String? = nil
        ) {
            self.prices = prices
            self.product = product
        }
    }

    public struct PortalConfigurationLoginPage: Codable, Hashable, Sendable {
        public var enabled: Bool?
        public var url: String?

        public init(
            enabled: Bool? = nil,
            url: String? = nil
        ) {
            self.enabled = enabled
            self.url = url
        }
    }

}
