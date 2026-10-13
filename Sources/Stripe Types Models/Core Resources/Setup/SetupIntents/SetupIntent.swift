public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Setup {
    public struct Intent: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var clientSecret: String?
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        public var description: String?
        public var lastSetupError: Setup.Error?
        public var metadata: [String: String]?
        public var nextAction: Stripe.Setup.Intent.NextAction?
        @ExpandableOf<Stripe.PaymentMethods.PaymentMethod> public var paymentMethod
        public var paymentMethodTypes: [String]?
        public var status: Stripe.Setup.Intent.Status?
        public var usage: String?
        public var object: String
        public var application: String?
        public var attachToSelf: Bool?
        public var automaticPaymentMethods: Stripe.Setup.Intent.AutomaticPaymentMethods?
        public var cancellationReason: Stripe.Setup.Intent.CancellationReason?
        public var created: Date
        public var flowDirections: [String]?
        @ExpandableOf<Stripe.Setup.Attempt> public var latestAttempt
        public var livemode: Bool?
        @ExpandableOf<Stripe.Mandates.Mandate> public var mandate
        @ExpandableOf<Stripe.Connect.Account> public var onBehalfOf
        public var paymentMethodOptions: Stripe.Setup.Intent.PaymentMethodOptions?
        @ExpandableOf<Stripe.Mandates.Mandate> public var singleUseMandate

        public init(
            id: ID,
            clientSecret: String? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            description: String? = nil,
            lastSetupError: Setup.Error? = nil,
            metadata: [String: String]? = nil,
            nextAction: Stripe.Setup.Intent.NextAction? = nil,
            paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            paymentMethodTypes: [String]? = nil,
            status: Stripe.Setup.Intent.Status? = nil,
            usage: String? = nil,
            object: String,
            application: String? = nil,
            attachToSelf: Bool? = nil,
            automaticPaymentMethods: Stripe.Setup.Intent.AutomaticPaymentMethods? = nil,
            cancellationReason: Stripe.Setup.Intent.CancellationReason? = nil,
            created: Date,
            flowDirections: [String]? = nil,
            latestAttempt: Stripe.Setup.Attempt.ID? = nil,
            livemode: Bool? = nil,
            mandate: Stripe.Mandates.Mandate.ID? = nil,
            onBehalfOf: Stripe.Connect.Account.ID? = nil,
            paymentMethodOptions: Stripe.Setup.Intent.PaymentMethodOptions,
            singleUseMandate: Stripe.Mandates.Mandate.ID? = nil
        ) {
            self.id = id
            self.clientSecret = clientSecret
            self._customer = Expandable(id: customer)
            self.description = description
            self.lastSetupError = lastSetupError
            self.metadata = metadata
            self.nextAction = nextAction
            self._paymentMethod = Expandable(id: paymentMethod)
            self.paymentMethodTypes = paymentMethodTypes
            self.status = status
            self.usage = usage
            self.object = object
            self.application = application
            self.attachToSelf = attachToSelf
            self.automaticPaymentMethods = automaticPaymentMethods
            self.cancellationReason = cancellationReason
            self.created = created
            self.flowDirections = flowDirections
            self._latestAttempt = Expandable(id: latestAttempt)
            self.livemode = livemode
            self._mandate = Expandable(id: mandate)
            self._onBehalfOf = Expandable(id: onBehalfOf)
            self.paymentMethodOptions = paymentMethodOptions
            self._singleUseMandate = Expandable(id: singleUseMandate)
        }
    }
}

extension Stripe.Setup.Intent {
    public struct PaymentMethodOptions: Codable, Hashable, Sendable {}
}

extension Stripe.Setup.Intent {
    public enum CancellationReason: String, Codable, Sendable {
        case abandoned
        case requestedByCustomer = "requested_by_customer"
        case duplicate
    }
}

extension Stripe.Setup.Intent {
    public struct NextAction: Codable, Hashable, Sendable {
        public var cashappHandleRedirectOrDisplayQrCode: Stripe.Setup.Intent.NextAction.CashappHandleRedirectOrDisplayQrCode?
        public var redirectToUrl: Stripe.Setup.Intent.NextAction.RedirectToUrl?
        public var type: Stripe.Setup.Intent.NextAction.`Type`?
        public var verifyWithMicrodeposits: Stripe.Setup.Intent.NextAction.VerifyMicroDeposits?

        public init(
            cashappHandleRedirectOrDisplayQrCode: Stripe.Setup.Intent.NextAction
                .CashappHandleRedirectOrDisplayQrCode? = nil,
            redirectToUrl: Stripe.Setup.Intent.NextAction.RedirectToUrl? = nil,
            type: Stripe.Setup.Intent.NextAction.`Type`? = nil,
            verifyWithMicrodeposits: Stripe.Setup.Intent.NextAction.VerifyMicroDeposits? = nil
        ) {
            self.cashappHandleRedirectOrDisplayQrCode = cashappHandleRedirectOrDisplayQrCode
            self.redirectToUrl = redirectToUrl
            self.type = type
            self.verifyWithMicrodeposits = verifyWithMicrodeposits
        }
    }

}

extension Stripe.Setup.Intent.NextAction {
    public struct CashappHandleRedirectOrDisplayQrCode: Codable, Hashable, Sendable {
        public var hostedInstructionsUrl: String?
        public var mobileAuthUrl: String?
        public var qrCode: Stripe.Setup.Intent.NextAction.CashappQrCode?

        public init(
            hostedInstructionsUrl: String? = nil,
            mobileAuthUrl: String? = nil,
            qrCode: Stripe.Setup.Intent.NextAction.CashappQrCode? = nil
        ) {
            self.hostedInstructionsUrl = hostedInstructionsUrl
            self.mobileAuthUrl = mobileAuthUrl
            self.qrCode = qrCode
        }
    }

}

extension Stripe.Setup.Intent.NextAction {
    public struct CashappQrCode: Codable, Hashable, Sendable {
        public var expiresAt: Date?
        public var imageUrlPng: String?
        public var imageUrlSvg: String?

        public init(
            expiresAt: Date? = nil,
            imageUrlPng: String? = nil,
            imageUrlSvg: String? = nil
        ) {
            self.expiresAt = expiresAt
            self.imageUrlPng = imageUrlPng
            self.imageUrlSvg = imageUrlSvg
        }
    }

}

extension Stripe.Setup.Intent.NextAction {
    public struct RedirectToUrl: Codable, Hashable, Sendable {
        public var returnUrl: String?
        public var url: String?

        public init(
            returnUrl: String? = nil,
            url: String? = nil
        ) {
            self.returnUrl = returnUrl
            self.url = url
        }
    }

}

extension Stripe.Setup.Intent.NextAction {
    public enum `Type`: String, Codable, Sendable {
        case redirectToUrl = "redirect_to_url"
        case useStripeSDK = "use_stripe_sdk"
        case alipayHandleRedirect = "alipay_handle_redirect"
        case oxxoDisplayDetails = "oxxo_display_details"
        case verifyWithMicrodeposits = "verify_with_microdeposits"
    }

}

extension Stripe.Setup.Intent.NextAction {
    public struct VerifyMicroDeposits: Codable, Hashable, Sendable {
        public var arrivalDate: Date?
        public var hostedVerificationUrl: String?
        public var microdepositType: Stripe.Setup.Intent.NextAction.VerifyMicroDepositType?

        public init(
            arrivalDate: Date? = nil,
            hostedVerificationUrl: String? = nil,
            microdepositType: Stripe.Setup.Intent.NextAction.VerifyMicroDepositType? = nil
        ) {
            self.arrivalDate = arrivalDate
            self.hostedVerificationUrl = hostedVerificationUrl
            self.microdepositType = microdepositType
        }
    }

}

extension Stripe.Setup.Intent.NextAction {
    public enum VerifyMicroDepositType: String, Codable, Sendable {
        case descriptorCode = "descriptor_code"
        case amounts
    }

}

extension Stripe.Setup.Intent {
    public struct AutomaticPaymentMethods: Codable, Hashable, Sendable {
        public var enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }

}

extension Stripe.Setup.Intent {
    public enum Status: String, Codable, Sendable {
        case requiresPaymentMethod = "requires_payment_method"
        case requiresConfirmation = "requires_confirmation"
        case requiresAction = "requires_action"
        case processing
        case canceled
        case succeeded
    }

}
