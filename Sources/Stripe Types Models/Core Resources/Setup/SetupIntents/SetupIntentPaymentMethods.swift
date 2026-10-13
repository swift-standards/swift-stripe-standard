public import Foundation
public import Stripe_Types_Shared

public struct SetupIntentPaymentMethodOptions: Codable, Hashable, Sendable {
    public var acssDebit: SetupIntentPaymentMethodOptionsAcssDebit?
    public var blik: SetupIntentPaymentMethodOptionsBlik?
    public var card: SetupIntentPaymentMethodOptionsCard?
    public var link: SetupIntentPaymentMethodOptionsLink?
    public var sepaDebit: SetupIntentPaymentMethodOptionsSepaDebit?
    public var usBankAccount: SetupIntentPaymentMethodOptionsUSBankAccount?

    public init(
        acssDebit: SetupIntentPaymentMethodOptionsAcssDebit? = nil,
        blik: SetupIntentPaymentMethodOptionsBlik? = nil,
        card: SetupIntentPaymentMethodOptionsCard? = nil,
        link: SetupIntentPaymentMethodOptionsLink? = nil,
        sepaDebit: SetupIntentPaymentMethodOptionsSepaDebit? = nil,
        usBankAccount: SetupIntentPaymentMethodOptionsUSBankAccount? = nil
    ) {
        self.acssDebit = acssDebit
        self.blik = blik
        self.card = card
        self.link = link
        self.sepaDebit = sepaDebit
        self.usBankAccount = usBankAccount
    }
}

public struct SetupIntentPaymentMethodOptionsAcssDebit: Codable, Hashable, Sendable {
    public var currency: Stripe.Currency?
    public var mandateOptions: SetupIntentPaymentMethodOptionsAcssDebitMandateOptions?
    public var verificationMethod: SetupIntentPaymentMethodOptionsAcssDebitMandateOptionsVerificationMethod?

    public init(
        currency: Stripe.Currency? = nil,
        mandateOptions: SetupIntentPaymentMethodOptionsAcssDebitMandateOptions? = nil,
        verificationMethod:
            SetupIntentPaymentMethodOptionsAcssDebitMandateOptionsVerificationMethod? =
            nil
    ) {
        self.currency = currency
        self.mandateOptions = mandateOptions
        self.verificationMethod = verificationMethod
    }
}

public struct SetupIntentPaymentMethodOptionsAcssDebitMandateOptions: Codable, Hashable, Sendable {
    public var customMandateUrl: String?
    public var defaultFor: [String]?
    public var intervalDescription: String?
    public var payoutSchedule: SetupIntentPaymentMethodOptionsAcssDebitMandateOptionsPayoutSchedule?
    public var transactionType: SetupIntentPaymentMethodOptionsAcssDebitMandateOptionsTransactionType?

    public init(
        customMandateUrl: String? = nil,
        defaultFor: [String]? = nil,
        intervalDescription: String? = nil,
        payoutSchedule: SetupIntentPaymentMethodOptionsAcssDebitMandateOptionsPayoutSchedule? = nil,
        transactionType: SetupIntentPaymentMethodOptionsAcssDebitMandateOptionsTransactionType? =
            nil
    ) {
        self.customMandateUrl = customMandateUrl
        self.defaultFor = defaultFor
        self.intervalDescription = intervalDescription
        self.payoutSchedule = payoutSchedule
        self.transactionType = transactionType
    }
}

public enum SetupIntentPaymentMethodOptionsAcssDebitMandateOptionsPayoutSchedule: String, Codable,
    Sendable
{
    case interval
    case sporadic
    case combined
}

public enum SetupIntentPaymentMethodOptionsAcssDebitMandateOptionsTransactionType: String, Codable,
    Sendable
{
    case personal
    case business
}

public enum SetupIntentPaymentMethodOptionsAcssDebitMandateOptionsVerificationMethod: String,
    Codable, Sendable
{
    case automatic
    case instant
    case microdeposits
}

public struct SetupIntentPaymentMethodOptionsBlik: Codable, Hashable, Sendable {
    public var mandateOptions: SetupIntentPaymentMethodOptionsBlikMandateOptions?

    public init(
        mandateOptions: SetupIntentPaymentMethodOptionsBlikMandateOptions? = nil
    ) {
        self.mandateOptions = mandateOptions
    }
}

public struct SetupIntentPaymentMethodOptionsBlikMandateOptions: Codable, Hashable, Sendable {
    public var expiresAfter: Date?
    public var offSession: SetupIntentPaymentMethodOptionsBlikMandateOptionsOffSession?
    public var type: SetupIntentPaymentMethodOptionsBlikMandateOptionsType?

    public init(
        expiresAfter: Date? = nil,
        offSession: SetupIntentPaymentMethodOptionsBlikMandateOptionsOffSession? = nil,
        type: SetupIntentPaymentMethodOptionsBlikMandateOptionsType? = nil
    ) {
        self.expiresAfter = expiresAfter
        self.offSession = offSession
        self.type = type
    }
}

public struct SetupIntentPaymentMethodOptionsBlikMandateOptionsOffSession: Codable, Hashable,
    Sendable
{
    public var amount: Int?
    public var currency: Stripe.Currency?
    public var interval: SetupIntentPaymentMethodOptionsBlikMandateOptionsOffSessionInterval?

    public init(
        amount: Int? = nil,
        currency: Stripe.Currency? = nil,
        interval: SetupIntentPaymentMethodOptionsBlikMandateOptionsOffSessionInterval? = nil
    ) {
        self.amount = amount
        self.currency = currency
        self.interval = interval
    }
}

public enum SetupIntentPaymentMethodOptionsBlikMandateOptionsOffSessionInterval: String, Codable,
    Sendable
{
    case day
    case week
    case month
    case year
}

public enum SetupIntentPaymentMethodOptionsBlikMandateOptionsType: String, Codable, Sendable {
    case onSession = "on_session"
    case offSession = "off_session"
}

public struct SetupIntentPaymentMethodOptionsCard: Codable, Hashable, Sendable {
    public var mandateOptions: SetupIntentPaymentMethodOptionsCardMandateOptions?
    public var network: String?
    public var requestThreeDSecure: String?

    public init(
        mandateOptions: SetupIntentPaymentMethodOptionsCardMandateOptions? = nil,
        network: String? = nil,
        requestThreeDSecure: String? = nil
    ) {
        self.mandateOptions = mandateOptions
        self.network = network
        self.requestThreeDSecure = requestThreeDSecure
    }
}

public struct SetupIntentPaymentMethodOptionsCardMandateOptions: Codable, Hashable, Sendable {
    public var amount: Int?
    public var amountType: SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType?
    public var currency: Stripe.Currency?
    public var description: String?
    public var endDate: Date?
    public var interval: SetupIntentPaymentMethodOptionsCardMandateOptionsInterval?
    public var intervalCount: Int?
    public var reference: String?
    public var startDate: Date?
    public var supportedTypes: [String]?

    public init(
        amount: Int? = nil,
        amountType: SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType? = nil,
        currency: Stripe.Currency? = nil,
        description: String? = nil,
        endDate: Date? = nil,
        interval: SetupIntentPaymentMethodOptionsCardMandateOptionsInterval? = nil,
        intervalCount: Int? = nil,
        reference: String? = nil,
        startDate: Date? = nil,
        supportedTypes: [String]? = nil
    ) {
        self.amount = amount
        self.amountType = amountType
        self.currency = currency
        self.description = description
        self.endDate = endDate
        self.interval = interval
        self.intervalCount = intervalCount
        self.reference = reference
        self.startDate = startDate
        self.supportedTypes = supportedTypes
    }
}

public enum SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType: String, Codable, Sendable {
    case fixed
    case maximum
}

public enum SetupIntentPaymentMethodOptionsCardMandateOptionsInterval: String, Codable, Sendable {
    case day
    case week
    case month
    case year
    case sporadic
}

public struct SetupIntentPaymentMethodOptionsLink: Codable, Hashable, Sendable {
    public var persistentToken: String?

    public init(
        persistentToken: String? = nil
    ) {
        self.persistentToken = persistentToken
    }
}

public struct SetupIntentPaymentMethodOptionsSepaDebit: Codable, Hashable, Sendable {
    public var mandateOptions: SetupIntentPaymentMethodOptionsSepaDebitMandateOptions?

    public init(
        mandateOptions: SetupIntentPaymentMethodOptionsSepaDebitMandateOptions? = nil
    ) {
        self.mandateOptions = mandateOptions
    }
}

public struct SetupIntentPaymentMethodOptionsSepaDebitMandateOptions: Codable, Hashable, Sendable {
    public init() {}
}

public struct SetupIntentPaymentMethodOptionsUSBankAccount: Codable, Hashable, Sendable {
    public var financialConnections: SetupIntentPaymentMethodOptionsUSBankAccountFinancialConnections?
    public var verificationMethod: SetupIntentPaymentMethodOptionsUSBankAccountVerificationMethod?

    public init(
        financialConnections: SetupIntentPaymentMethodOptionsUSBankAccountFinancialConnections? =
            nil,
        verificationMethod: SetupIntentPaymentMethodOptionsUSBankAccountVerificationMethod? = nil
    ) {
        self.financialConnections = financialConnections
        self.verificationMethod = verificationMethod
    }
}

public struct SetupIntentPaymentMethodOptionsUSBankAccountFinancialConnections: Codable, Hashable,
    Sendable
{
    public var permissions: [SetupIntentPaymentMethodOptionsUSBankAccountFinancialConnectionsPermission]?

    public init(
        permissions: [SetupIntentPaymentMethodOptionsUSBankAccountFinancialConnectionsPermission]? =
            nil
    ) {
        self.permissions = permissions
    }
}

public enum SetupIntentPaymentMethodOptionsUSBankAccountFinancialConnectionsPermission: String,
    Codable, Sendable
{
    case paymentMethod = "payment_method"
    case balances
    case transactions
    case ownership
}

public enum SetupIntentPaymentMethodOptionsUSBankAccountVerificationMethod: String, Codable,
    Sendable
{
    case automatic
    case instant
    case microdeposits
}
