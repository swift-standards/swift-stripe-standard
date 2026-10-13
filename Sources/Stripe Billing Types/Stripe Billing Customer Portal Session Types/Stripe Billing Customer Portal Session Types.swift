import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Customer.Portal.Session {
    public enum Create {}
}

extension Stripe.Billing.Customer.Portal.Session.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let customer: Stripe.Customers.Customer.ID

        public let configuration: String?

        public let flowData: FlowData?

        public let locale: String?

        public let onBehalfOf: String?

        public let returnUrl: String?

        public struct FlowData: Codable, Equatable, Sendable {
            public let afterCompletion: AfterCompletion?

            public let type: FlowType

            public let subscriptionUpdate: SubscriptionUpdate?

            public let subscriptionUpdateConfirm: SubscriptionUpdateConfirm?

            public let subscriptionCancel: SubscriptionCancel?

            public enum FlowType: String, Codable, Equatable, Sendable {
                case paymentMethodUpdate = "payment_method_update"
                case subscriptionCancel = "subscription_cancel"
                case subscriptionUpdate = "subscription_update"
                case subscriptionUpdateConfirm = "subscription_update_confirm"
            }

            public struct AfterCompletion: Codable, Equatable, Sendable {
                public let hostedConfirmation: HostedConfirmation?

                public let redirect: Redirect?

                public let type: AfterCompletionType

                public enum AfterCompletionType: String, Codable, Equatable, Sendable {
                    case hostedConfirmation = "hosted_confirmation"
                    case portalHomepage = "portal_homepage"
                    case redirect
                }

                public struct HostedConfirmation: Codable, Equatable, Sendable {
                    public let customMessage: String?

                    private enum CodingKeys: String, CodingKey {
                        case customMessage = "custom_message"
                    }
                }

                public struct Redirect: Codable, Equatable, Sendable {
                    public let returnUrl: String

                    private enum CodingKeys: String, CodingKey {
                        case returnUrl = "return_url"
                    }
                }

                private enum CodingKeys: String, CodingKey {
                    case hostedConfirmation = "hosted_confirmation"
                    case redirect
                    case type
                }
            }

            public struct SubscriptionUpdate: Codable, Equatable, Sendable {
                public let subscription: Stripe.Billing.Subscription.ID
            }

            public struct SubscriptionUpdateConfirm: Codable, Equatable, Sendable {
                public let items: [Item]

                public let subscription: Stripe.Billing.Subscription.ID

                public struct Item: Codable, Equatable, Sendable {
                    public let id: Stripe.Billing.Subscription.Item.ID

                    public let quantity: Int?

                    public let price: Stripe.Products.Price.ID?
                }
            }

            public struct SubscriptionCancel: Codable, Equatable, Sendable {
                public let subscription: Stripe.Billing.Subscription.ID
            }

            private enum CodingKeys: String, CodingKey {
                case afterCompletion = "after_completion"
                case type
                case subscriptionUpdate = "subscription_update"
                case subscriptionUpdateConfirm = "subscription_update_confirm"
                case subscriptionCancel = "subscription_cancel"
            }
        }

        public init(
            customer: Stripe.Customers.Customer.ID,
            configuration: String? = nil,
            flowData: FlowData? = nil,
            locale: String? = nil,
            onBehalfOf: String? = nil,
            returnUrl: String? = nil
        ) {
            self.customer = customer
            self.configuration = configuration
            self.flowData = flowData
            self.locale = locale
            self.onBehalfOf = onBehalfOf
            self.returnUrl = returnUrl
        }

        private enum CodingKeys: String, CodingKey {
            case customer
            case configuration
            case flowData = "flow_data"
            case locale
            case onBehalfOf = "on_behalf_of"
            case returnUrl = "return_url"
        }
    }
}
