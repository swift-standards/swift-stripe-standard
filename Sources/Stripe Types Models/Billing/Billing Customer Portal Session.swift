public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Customer.Portal {
    public struct Session: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var object: String
        @ExpandableOf<Stripe.Billing.Customer.Portal.Configuration> public var configuration: Stripe.Billing.Customer.Portal.Configuration.ID?
        public var created: Date
        public var customer: Stripe.Customers.Customer.ID?
        public var flow: Flow?
        public var livemode: Bool?
        public var locale: String?
        public var onBehalfOf: String?
        public var returnUrl: String?
        public var url: String?

        public init(
            id: ID,
            object: String,
            configuration: Stripe.Billing.Customer.Portal.Configuration.ID? = nil,
            created: Date,
            customer: Stripe.Customers.Customer.ID? = nil,
            flow: Flow? = nil,
            livemode: Bool? = nil,
            locale: String? = nil,
            onBehalfOf: String? = nil,
            returnUrl: String? = nil,
            url: String? = nil
        ) {
            self.id = id
            self.object = object
            self._configuration = Expandable(id: configuration)
            self.created = created
            self.customer = customer
            self.flow = flow
            self.livemode = livemode
            self.locale = locale
            self.onBehalfOf = onBehalfOf
            self.returnUrl = returnUrl
            self.url = url
        }
    }
}

extension Stripe.Billing.Customer.Portal.Session {
    public struct Flow: Codable, Hashable, Sendable {
        public var afterCompletion: Flow.AfterCompletion?
        public var subscriptionCancel: Flow.Subscription.Cancel?
        public var type: Flow.`Type`?

        public init(
            afterCompletion: Flow.AfterCompletion? = nil,
            subscriptionCancel: Flow.Subscription.Cancel? = nil,
            type: Flow.`Type`? = nil
        ) {
            self.afterCompletion = afterCompletion
            self.subscriptionCancel = subscriptionCancel
            self.type = type
        }
    }
}

extension Stripe.Billing.Customer.Portal.Session.Flow {
    public struct AfterCompletion: Codable, Hashable, Sendable {
        public var hostedConfirmation: AfterCompletion.HostedConfirmation?
        public var redirect: AfterCompletion.Redirect?
        public var type: AfterCompletion.`Type`?

        public init(
            hostedConfirmation: AfterCompletion.HostedConfirmation? = nil,
            redirect: AfterCompletion.Redirect? = nil,
            type: AfterCompletion.`Type`? = nil
        ) {
            self.hostedConfirmation = hostedConfirmation
            self.redirect = redirect
            self.type = type
        }
    }

    public enum Subscription: Sendable {}

    public enum `Type`: String, Codable, Sendable {
        case subscriptionCancel = "subscription_cancel"
        case paymentMethodUpdate = "payment_method_update"
    }
}

extension Stripe.Billing.Customer.Portal.Session.Flow.AfterCompletion {
    public struct HostedConfirmation: Codable, Hashable, Sendable {
        public var customMessage: String?

        public init(
            customMessage: String? = nil
        ) {
            self.customMessage = customMessage
        }
    }

    public struct Redirect: Codable, Hashable, Sendable {
        public var returnUrl: String?

        public init(
            returnUrl: String? = nil
        ) {
            self.returnUrl = returnUrl
        }
    }

    public enum `Type`: String, Codable, Sendable {
        case redirect
        case hostedConfirmation = "hosted_confirmation"
        case portalHomepage = "portal_homepage"
    }
}

extension Stripe.Billing.Customer.Portal.Session.Flow.Subscription {
    public struct Cancel: Codable, Hashable, Sendable {
        public var subscription: Stripe.Billing.Subscription.ID?

        public init(
            subscription: Stripe.Billing.Subscription.ID? = nil
        ) {
            self.subscription = subscription
        }
    }
}
