public import Foundation
public import Stripe_Types_Shared

extension Stripe.PaymentMethods.PaymentMethod {
    public enum Options {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum ACSSDebit {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.ACSSDebit {
    public struct Configuration: Codable, Hashable, Sendable {
        public var mandateOptions: MandateOptions?
        public var verificationMethod: VerificationMethod?

        public init(
            mandateOptions: MandateOptions? = nil,
            verificationMethod: VerificationMethod? = nil
        ) {
            self.mandateOptions = mandateOptions
            self.verificationMethod = verificationMethod
        }
    }

    public struct MandateOptions: Codable, Hashable, Sendable {
        public var customMandateUrl: String?
        public var intervalDescription: String?
        public var paymentSchedule: PaymentSchedule?
        public var transactionType: TransactionType?

        public init(
            customMandateUrl: String? = nil,
            intervalDescription: String? = nil,
            paymentSchedule: PaymentSchedule? = nil,
            transactionType: TransactionType? = nil
        ) {
            self.customMandateUrl = customMandateUrl
            self.intervalDescription = intervalDescription
            self.paymentSchedule = paymentSchedule
            self.transactionType = transactionType
        }
    }

    public enum PaymentSchedule: String, Codable, Sendable {
        case interval
        case sporadic
        case combined
    }

    public enum TransactionType: String, Codable, Sendable {
        case personal
        case business
    }

    public enum VerificationMethod: String, Codable, Sendable {
        case automatic
        case instant
        case microdeposits
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Affirm {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Affirm {
    public struct Configuration: Codable, Hashable, Sendable {
        public var captureMethod: CaptureMethod?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            captureMethod: CaptureMethod? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.captureMethod = captureMethod
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum CaptureMethod: String, Codable, Sendable {
        case manual
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum AfterpayClearpay {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.AfterpayClearpay {
    public struct Configuration: Codable, Hashable, Sendable {
        public var captureMethod: CaptureMethod?
        public var reference: String?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            captureMethod: CaptureMethod? = nil,
            reference: String? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.captureMethod = captureMethod
            self.reference = reference
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum CaptureMethod: String, Codable, Sendable {
        case manual
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Alipay {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Alipay {
    public struct Configuration: Codable, Hashable, Sendable {
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case offSession = "off_session"
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum AUBecsDebit {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.AUBecsDebit {
    public struct Configuration: Codable, Hashable, Sendable {
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum BacsDebit {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.BacsDebit {
    public struct Configuration: Codable, Hashable, Sendable {
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Bancontact {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Bancontact {
    public struct Configuration: Codable, Hashable, Sendable {
        public var preferredLanguage: String?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            preferredLanguage: String? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.preferredLanguage = preferredLanguage
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case offSession = "off_session"
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Blik {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Blik {
    public struct Configuration: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Boleto {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Boleto {
    public struct Configuration: Codable, Hashable, Sendable {
        public var expiresAfterDays: Int?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            expiresAfterDays: Int? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.expiresAfterDays = expiresAfterDays
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Card {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Card {
    public struct Configuration: Codable, Hashable, Sendable {
        public var captureMethod: CaptureMethod?
        public var installments: Installments?
        public var mandateOptions: MandateOptions?
        public var network: String?
        public var requestThreeDSecure: String?
        public var setupFutureUsage: SetupFutureUsage?
        public var statementDescriptorSuffixKana: String?
        public var statementDescriptorSuffixKanji: String?

        public init(
            captureMethod: CaptureMethod? = nil,
            installments: Installments? = nil,
            mandateOptions: MandateOptions? = nil,
            network: String? = nil,
            requestThreeDSecure: String? = nil,
            setupFutureUsage: SetupFutureUsage? = nil,
            statementDescriptorSuffixKana: String? = nil,
            statementDescriptorSuffixKanji: String? = nil
        ) {
            self.captureMethod = captureMethod
            self.installments = installments
            self.mandateOptions = mandateOptions
            self.network = network
            self.requestThreeDSecure = requestThreeDSecure
            self.setupFutureUsage = setupFutureUsage
            self.statementDescriptorSuffixKana = statementDescriptorSuffixKana
            self.statementDescriptorSuffixKanji = statementDescriptorSuffixKanji
        }
    }

    public enum CaptureMethod: String, Codable, Sendable {
        case manual
    }

    public struct Installments: Codable, Hashable, Sendable {
        public var availablePlans: [InstallmentPlan]?
        public var enabled: Bool?
        public var plan: InstallmentPlan?

        public init(
            availablePlans: [InstallmentPlan]? = nil,
            enabled: Bool? = nil,
            plan: InstallmentPlan? = nil
        ) {
            self.availablePlans = availablePlans
            self.enabled = enabled
            self.plan = plan
        }
    }

    public struct InstallmentPlan: Codable, Hashable, Sendable {
        public var count: Int?
        public var interval: String?
        public var type: String?

        public init(
            count: Int? = nil,
            interval: String? = nil,
            type: String? = nil
        ) {
            self.count = count
            self.interval = interval
            self.type = type
        }
    }

    public struct MandateOptions: Codable, Hashable, Sendable {
        public var amount: Int?
        public var amountType: String?
        public var description: String?
        public var endDate: Date?
        public var interval: String?
        public var intervalCount: Int?
        public var reference: String?
        public var startDate: Date?
        public var supportedTypes: [String]?

        public init(
            amount: Int? = nil,
            amountType: String? = nil,
            description: String? = nil,
            endDate: Date? = nil,
            interval: String? = nil,
            intervalCount: Int? = nil,
            reference: String? = nil,
            startDate: Date? = nil,
            supportedTypes: [String]? = nil
        ) {
            self.amount = amount
            self.amountType = amountType
            self.description = description
            self.endDate = endDate
            self.interval = interval
            self.intervalCount = intervalCount
            self.reference = reference
            self.startDate = startDate
            self.supportedTypes = supportedTypes
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum CardPresent {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.CardPresent {
    public struct Configuration: Codable, Hashable, Sendable {
        public var captureMethod: CaptureMethod?
        public var requestExtendedAuthorization: Bool?
        public var requestIncrementalAuthorizationSupport: Bool?
        public var routing: Routing?

        public init(
            captureMethod: CaptureMethod? = nil,
            requestExtendedAuthorization: Bool? = nil,
            requestIncrementalAuthorizationSupport: Bool? = nil,
            routing: Routing? = nil
        ) {
            self.captureMethod = captureMethod
            self.requestExtendedAuthorization = requestExtendedAuthorization
            self.requestIncrementalAuthorizationSupport = requestIncrementalAuthorizationSupport
            self.routing = routing
        }
    }

    public enum CaptureMethod: String, Codable, Sendable {
        case manualPreferred = "manual_preferred"
    }

    public struct Routing: Codable, Hashable, Sendable {
        public var requestedPriority: RequestedPriority?

        public init(
            requestedPriority: RequestedPriority? = nil
        ) {
            self.requestedPriority = requestedPriority
        }
    }

    public enum RequestedPriority: String, Codable, Sendable {
        case domestic
        case international
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum CustomerBalance {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.CustomerBalance {
    public struct Configuration: Codable, Hashable, Sendable {
        public var bankTransfer: BankTransfer?
        public var fundingType: String?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            bankTransfer: BankTransfer? = nil,
            fundingType: String? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.bankTransfer = bankTransfer
            self.fundingType = fundingType
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public struct BankTransfer: Codable, Hashable, Sendable {
        public var euBankTransfer: EUBankTransfer?
        public var requestedAddressTypes: RequestedAddressType?
        public var type: TransferType?

        public init(
            euBankTransfer: EUBankTransfer? = nil,
            requestedAddressTypes: RequestedAddressType? = nil,
            type: TransferType? = nil
        ) {
            self.euBankTransfer = euBankTransfer
            self.requestedAddressTypes = requestedAddressTypes
            self.type = type
        }
    }

    public struct EUBankTransfer: Codable, Hashable, Sendable {
        public var country: String?

        public init(
            country: String? = nil
        ) {
            self.country = country
        }
    }

    public enum RequestedAddressType: String, Codable, Sendable {
        case sortCode = "sort_code"
        case zengin
        case sepa
        case spei
        case iban
    }

    public enum TransferType: String, Codable, Sendable {
        case euBankTransfer = "eu_bank_transfer"
        case gbBankTransfer = "gb_bank_transfer"
        case jpBankTransfer = "jp_bank_transfer"
        case mxBankTransfer = "mx_bank_transfer"
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum EPS {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.EPS {
    public struct Configuration: Codable, Hashable, Sendable {
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum FPX {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.FPX {
    public struct Configuration: Codable, Hashable, Sendable {
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Giropay {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Giropay {
    public struct Configuration: Codable, Hashable, Sendable {
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum GrabPay {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.GrabPay {
    public struct Configuration: Codable, Hashable, Sendable {
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Ideal {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Ideal {
    public struct Configuration: Codable, Hashable, Sendable {
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case offSession = "off_session"
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum InteracPresent {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.InteracPresent {
    public struct Configuration: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Klarna {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Klarna {
    public struct Configuration: Codable, Hashable, Sendable {
        public var captureMethod: CaptureMethod?
        public var preferredLocale: String?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            captureMethod: CaptureMethod? = nil,
            preferredLocale: String? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.captureMethod = captureMethod
            self.preferredLocale = preferredLocale
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum CaptureMethod: String, Codable, Sendable {
        case manual
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Konbini {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Konbini {
    public struct Configuration: Codable, Hashable, Sendable {
        public var confirmationNumber: String?
        public var expiringAfterdays: Int?
        public var expiresAt: Date?
        public var productDescription: String?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            confirmationNumber: String? = nil,
            expiringAfterdays: Int? = nil,
            expiresAt: Date? = nil,
            productDescription: String? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.confirmationNumber = confirmationNumber
            self.expiringAfterdays = expiringAfterdays
            self.expiresAt = expiresAt
            self.productDescription = productDescription
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Link {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Link {
    public struct Configuration: Codable, Hashable, Sendable {
        public var captureMethod: CaptureMethod?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            captureMethod: CaptureMethod? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.captureMethod = captureMethod
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum CaptureMethod: String, Codable, Sendable {
        case manual
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case offSession = "off_session"
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum OXXO {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.OXXO {
    public struct Configuration: Codable, Hashable, Sendable {
        public var expiresAfterDays: Int?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            expiresAfterDays: Int? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.expiresAfterDays = expiresAfterDays
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum P24 {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.P24 {
    public struct Configuration: Codable, Hashable, Sendable {
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Paynow {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Paynow {
    public struct Configuration: Codable, Hashable, Sendable {
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Pix {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Pix {
    public struct Configuration: Codable, Hashable, Sendable {
        public var expiresAfterSeconds: Int?
        public var expiresAt: Int?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            expiresAfterSeconds: Int? = nil,
            expiresAt: Int? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.expiresAfterSeconds = expiresAfterSeconds
            self.expiresAt = expiresAt
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum PromptPay {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.PromptPay {
    public struct Configuration: Codable, Hashable, Sendable {
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum SepaDebit {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.SepaDebit {
    public struct Configuration: Codable, Hashable, Sendable {
        public var mandateOptions: MandateOptions?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            mandateOptions: MandateOptions? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.mandateOptions = mandateOptions
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public struct MandateOptions: Codable, Hashable, Sendable {
        public init() {}
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum Sofort {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.Sofort {
    public struct Configuration: Codable, Hashable, Sendable {
        public var preferredLanguage: String?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            preferredLanguage: String? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.preferredLanguage = preferredLanguage
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case offSession = "off_session"
        case none
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum USBankAccount {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.USBankAccount {
    public struct Configuration: Codable, Hashable, Sendable {
        public var financialConnections: FinancialConnections?
        public var setupFutureUsage: SetupFutureUsage?
        public var verificationMethod: VerificationMethod?

        public init(
            financialConnections: FinancialConnections? = nil,
            setupFutureUsage: SetupFutureUsage? = nil,
            verificationMethod: VerificationMethod? = nil
        ) {
            self.financialConnections = financialConnections
            self.setupFutureUsage = setupFutureUsage
            self.verificationMethod = verificationMethod
        }
    }

    public struct FinancialConnections: Codable, Hashable, Sendable {
        public var permissions: [Permission]?

        public init(
            permissions: [Permission]? = nil
        ) {
            self.permissions = permissions
        }
    }

    public enum Permission: String, Codable, Sendable {
        case paymentMethod = "payment_method"
        case balances
        case transactions
        case ownership
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case none
    }

    public enum VerificationMethod: String, Codable, Sendable {
        case automatic
        case instant
        case microdeposits
    }
}

extension Stripe.PaymentMethods.PaymentMethod.Options {
    public enum WechatPay {}
}

extension Stripe.PaymentMethods.PaymentMethod.Options.WechatPay {
    public struct Configuration: Codable, Hashable, Sendable {
        public var appId: String?
        public var client: Client?
        public var setupFutureUsage: SetupFutureUsage?

        public init(
            appId: String? = nil,
            client: Client? = nil,
            setupFutureUsage: SetupFutureUsage? = nil
        ) {
            self.appId = appId
            self.client = client
            self.setupFutureUsage = setupFutureUsage
        }
    }

    public enum Client: String, Codable, Sendable {
        case web
        case ios
        case android
    }

    public enum SetupFutureUsage: String, Codable, Sendable {
        case none
    }
}
