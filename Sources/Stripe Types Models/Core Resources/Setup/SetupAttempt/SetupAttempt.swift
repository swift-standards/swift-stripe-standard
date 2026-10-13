public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Setup {
    public struct Attempt: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var object: String
        public var application: String?
        public var attachToSelf: Bool?
        public var created: Date?
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        public var flowDirections: [String]?
        public var livemode: Bool?
        @ExpandableOf<Stripe.Connect.Account> public var onBehalfOf
        @ExpandableOf<Stripe.PaymentMethods.PaymentMethod> public var paymentMethod
        public var paymentMethodDetails: SetupAttemptPaymentMethodDetails?
        public var setupError: Setup.Error?
        @ExpandableOf<Stripe.Setup.Intent> public var setupIntent
        public var status: Stripe.Setup.Attempt.Status?
        public var usage: Stripe.Setup.Attempt.Usage?

        public init(
            id: ID,
            object: String,
            application: String? = nil,
            attachToSelf: Bool? = nil,
            created: Date? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            flowDirections: [String]? = nil,
            livemode: Bool? = nil,
            onBehalfOf: Stripe.Connect.Account.ID? = nil,
            paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            paymentMethodDetails: SetupAttemptPaymentMethodDetails? = nil,
            setupError: Setup.Error? = nil,
            setupIntent: Stripe.Setup.Intent.ID? = nil,
            status: Stripe.Setup.Attempt.Status? = nil,
            usage: Stripe.Setup.Attempt.Usage? = nil
        ) {
            self.id = id
            self.object = object
            self.application = application
            self.attachToSelf = attachToSelf
            self.created = created
            self._customer = Expandable(id: customer)
            self.flowDirections = flowDirections
            self.livemode = livemode
            self._onBehalfOf = Expandable(id: onBehalfOf)
            self._paymentMethod = Expandable(id: paymentMethod)
            self.paymentMethodDetails = paymentMethodDetails
            self.setupError = setupError
            self._setupIntent = Expandable(id: setupIntent)
            self.status = status
            self.usage = usage
        }
    }
}

extension Stripe.Setup.Attempt {
    public enum Status: String, Codable, Sendable {
        case requiresConfirmation = "requires_confirmation"
        case requiresAction = "requires_action"
        case processing
        case succeeded
        case failed
        case abandoned
    }
}

extension Stripe.Setup.Attempt {
    public enum Usage: String, Codable, Sendable {
        case offSession = "off_session"
        case onSession = "on_session"
    }
}

extension Setup.Error {
    public struct Container: Codable {
        public let setupError: Setup.Error?

        enum CodingKeys: String, CodingKey {
            case setupError = "setup_error"
        }
    }
}
