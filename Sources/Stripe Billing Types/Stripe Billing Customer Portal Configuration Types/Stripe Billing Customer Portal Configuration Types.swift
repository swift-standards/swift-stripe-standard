import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Customer.Portal.Configuration {
    public enum Create {}
}

extension Stripe.Billing.Customer.Portal.Configuration.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let businessProfile: BusinessProfile?

        public let defaultReturnUrl: String?

        public let features: Features

        public let loginPage: LoginPage?

        public let metadata: [String: String]?

        public init(
            businessProfile: BusinessProfile? = nil,
            defaultReturnUrl: String? = nil,
            features: Request.Features,
            loginPage: Request.LoginPage? = nil,
            metadata: [String: String]? = nil
        ) {
            self.businessProfile = businessProfile
            self.defaultReturnUrl = defaultReturnUrl
            self.features = features
            self.loginPage = loginPage
            self.metadata = metadata
        }

        public struct BusinessProfile: Codable, Equatable, Sendable {
            public let headline: String?

            public let privacyPolicyUrl: String?

            public let termsOfServiceUrl: String?

            public init(
                headline: String? = nil,
                privacyPolicyUrl: String? = nil,
                termsOfServiceUrl: String?
            ) {
                self.headline = headline
                self.privacyPolicyUrl = privacyPolicyUrl
                self.termsOfServiceUrl = termsOfServiceUrl
            }

            private enum CodingKeys: String, CodingKey {
                case headline
                case privacyPolicyUrl = "privacy_policy_url"
                case termsOfServiceUrl = "terms_of_service_url"
            }
        }

        public struct Features: Codable, Equatable, Sendable {
            public let customerUpdate: CustomerUpdate?

            public let invoiceHistory: InvoiceHistory?

            public let paymentMethodUpdate: PaymentMethodUpdate?

            public let subscriptionCancel: SubscriptionCancel?

            public let subscriptionPause: SubscriptionPause?

            public let subscriptionUpdate: SubscriptionUpdate?

            public init(
                customerUpdate: CustomerUpdate? = nil,
                invoiceHistory: InvoiceHistory? = nil,
                paymentMethodUpdate: PaymentMethodUpdate? = nil,
                subscriptionCancel: SubscriptionCancel? = nil,
                subscriptionPause: SubscriptionPause? = nil,
                subscriptionUpdate: SubscriptionUpdate? = nil
            ) {
                self.customerUpdate = customerUpdate
                self.invoiceHistory = invoiceHistory
                self.paymentMethodUpdate = paymentMethodUpdate
                self.subscriptionCancel = subscriptionCancel
                self.subscriptionPause = subscriptionPause
                self.subscriptionUpdate = subscriptionUpdate
            }

            public struct CustomerUpdate: Codable, Equatable, Sendable {
                public let allowedUpdates: [String]?

                public let enabled: Bool

                public init(
                    allowedUpdates: [String]? = nil,
                    enabled: Bool
                ) {
                    self.allowedUpdates = allowedUpdates
                    self.enabled = enabled
                }

                private enum CodingKeys: String, CodingKey {
                    case allowedUpdates = "allowed_updates"
                    case enabled
                }
            }

            public struct InvoiceHistory: Codable, Equatable, Sendable {
                public let enabled: Bool

                public init(
                    enabled: Bool
                ) {
                    self.enabled = enabled
                }
            }

            public struct PaymentMethodUpdate: Codable, Equatable, Sendable {
                public let enabled: Bool

                public init(
                    enabled: Bool
                ) {
                    self.enabled = enabled
                }
            }

            public struct SubscriptionCancel: Codable, Equatable, Sendable {
                public let cancellationReason: CancellationReason?

                public let enabled: Bool

                public let mode: String?

                public let prorationBehavior: String?

                public init(
                    cancellationReason: CancellationReason? = nil,
                    enabled: Bool,
                    mode: String? = nil,
                    prorationBehavior: String? = nil
                ) {
                    self.cancellationReason = cancellationReason
                    self.enabled = enabled
                    self.mode = mode
                    self.prorationBehavior = prorationBehavior
                }

                public struct CancellationReason: Codable, Equatable, Sendable {
                    public let enabled: Bool

                    public let options: [String]?
                }

                private enum CodingKeys: String, CodingKey {
                    case cancellationReason = "cancellation_reason"
                    case enabled
                    case mode
                    case prorationBehavior = "proration_behavior"
                }
            }

            public struct SubscriptionPause: Codable, Equatable, Sendable {
                public let enabled: Bool?

                public init(
                    enabled: Bool
                ) {
                    self.enabled = enabled
                }
            }

            public struct SubscriptionUpdate: Codable, Equatable, Sendable {
                public let defaultAllowedUpdates: [String]?

                public let enabled: Bool

                public let products: [Product]?

                public let prorationBehavior: String?

                public init(
                    defaultAllowedUpdates: [String]? = nil,
                    enabled: Bool,
                    products: [Product]? = nil,
                    prorationBehavior: String? = nil
                ) {
                    self.defaultAllowedUpdates = defaultAllowedUpdates
                    self.enabled = enabled
                    self.products = products
                    self.prorationBehavior = prorationBehavior
                }

                public struct Product: Codable, Equatable, Sendable {
                    public let prices: [String]

                    public let product: Stripe.Products.Product.ID

                    public init(prices: [String], product: Stripe.Products.Product.ID) {
                        self.prices = prices
                        self.product = product
                    }
                }

                private enum CodingKeys: String, CodingKey {
                    case defaultAllowedUpdates = "default_allowed_updates"
                    case enabled
                    case products
                    case prorationBehavior = "proration_behavior"
                }
            }

            private enum CodingKeys: String, CodingKey {
                case customerUpdate = "customer_update"
                case invoiceHistory = "invoice_history"
                case paymentMethodUpdate = "payment_method_update"
                case subscriptionCancel = "subscription_cancel"
                case subscriptionPause = "subscription_pause"
                case subscriptionUpdate = "subscription_update"
            }
        }

        public struct LoginPage: Codable, Equatable, Sendable {
            public let enabled: Bool

            public init(enabled: Bool) {
                self.enabled = enabled
            }
        }

        private enum CodingKeys: String, CodingKey {
            case businessProfile = "business_profile"
            case defaultReturnUrl = "default_return_url"
            case features
            case loginPage = "login_page"
            case metadata
        }
    }
}

extension Stripe.Billing.Customer.Portal.Configuration {
    public enum Update {}
}

extension Stripe.Billing.Customer.Portal.Configuration.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let active: Bool?

        public let businessProfile: Stripe.Billing.Customer.Portal.Configuration.Create.Request.BusinessProfile?

        public let defaultReturnUrl: String?

        public let features: Stripe.Billing.Customer.Portal.Configuration.Create.Request.Features?

        public let loginPage: Stripe.Billing.Customer.Portal.Configuration.Create.Request.LoginPage?

        public let metadata: [String: String]?

        public init(
            active: Bool? = nil,
            businessProfile: Stripe.Billing.Customer.Portal.Configuration.Create.Request
                .BusinessProfile? = nil,
            defaultReturnUrl: String? = nil,
            features: Stripe.Billing.Customer.Portal.Configuration.Create.Request.Features? = nil,
            loginPage: Stripe.Billing.Customer.Portal.Configuration.Create.Request.LoginPage? = nil,
            metadata: [String: String]? = nil
        ) {
            self.active = active
            self.businessProfile = businessProfile
            self.defaultReturnUrl = defaultReturnUrl
            self.features = features
            self.loginPage = loginPage
            self.metadata = metadata
        }

        private enum CodingKeys: String, CodingKey {
            case active
            case businessProfile = "business_profile"
            case defaultReturnUrl = "default_return_url"
            case features
            case loginPage = "login_page"
            case metadata
        }
    }
}

extension Stripe.Billing.Customer.Portal.Configuration {
    public enum List {}
}

extension Stripe.Billing.Customer.Portal.Configuration.List {
    public struct Request: Codable, Equatable, Sendable {
        public let active: Bool?

        public let isDefault: Bool?

        public let endingBefore: String?

        public let startingAfter: String?

        public let limit: Int?

        public init(
            active: Bool? = nil,
            isDefault: Bool? = nil,
            endingBefore: String? = nil,
            startingAfter: String? = nil,
            limit: Int? = nil
        ) {
            self.active = active
            self.isDefault = isDefault
            self.endingBefore = endingBefore
            self.startingAfter = startingAfter
            self.limit = limit
        }

        private enum CodingKeys: String, CodingKey {
            case active
            case isDefault = "is_default"
            case endingBefore = "ending_before"
            case startingAfter = "starting_after"
            case limit
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String

        public let url: String

        public let hasMore: Bool

        public let data: [Stripe.Billing.Customer.Portal.Configuration]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}
