import Foundation
public import Stripe_Types_Shared

extension Stripe.Billing.Invoice.PaymentSettings {
    public struct PaymentMethodOptions: Codable, Hashable, Sendable {
        public var acssDebit: AcssDebit?
        public var bancontact: Bancontact?
        public var card: Card?
        public var customerBalance: CustomerBalance?
        public var konbini: Konbini?
        public var usBankAccount: USBankAccount?

        public init(
            acssDebit: AcssDebit? = nil,
            bancontact: Bancontact? = nil,
            card: Card? = nil,
            customerBalance: CustomerBalance? = nil,
            konbini: Konbini? = nil,
            usBankAccount: USBankAccount? = nil
        ) {
            self.acssDebit = acssDebit
            self.bancontact = bancontact
            self.card = card
            self.customerBalance = customerBalance
            self.konbini = konbini
            self.usBankAccount = usBankAccount
        }
    }
}

extension Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions {
    public struct AcssDebit: Codable, Hashable, Sendable {
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
}

extension Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions.AcssDebit {
    public struct MandateOptions: Codable, Hashable, Sendable {
        public var transactionType: TransactionType?

        public init(
            transactionType: TransactionType? = nil
        ) {
            self.transactionType = transactionType
        }
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

extension Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions {
    public struct Bancontact: Codable, Hashable, Sendable {
        public var preferredLanguage: String?

        public init(
            preferredLanguage: String? = nil
        ) {
            self.preferredLanguage = preferredLanguage
        }
    }
}

extension Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions {
    public struct Card: Codable, Hashable, Sendable {
        public var installments: Installments?

        public var requestThreeDSecure: RequestThreeDSecure?

        public init(
            installments: Installments? = nil,
            requestThreeDSecure: RequestThreeDSecure? = nil
        ) {
            self.installments = installments
            self.requestThreeDSecure = requestThreeDSecure
        }
    }
}

extension Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions.Card {
    public struct Installments: Codable, Hashable, Sendable {
        public var enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }

    public enum RequestThreeDSecure: String, Codable, Sendable {
        case automatic
        case any
    }
}

extension Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions {
    public struct CustomerBalance: Codable, Hashable, Sendable {
        public var bankTransfer: BankTransfer?
        public var fundingType: FundingType?

        public init(
            bankTransfer: BankTransfer? = nil,
            fundingType: FundingType? = nil
        ) {
            self.bankTransfer = bankTransfer
            self.fundingType = fundingType
        }
    }
}

extension Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions.CustomerBalance {
    public struct BankTransfer: Codable, Hashable, Sendable {
        public var euBankTransfer: EUBankTransfer?
        public var type: TransferType?

        public init(
            euBankTransfer: EUBankTransfer? = nil,
            type: TransferType? = nil
        ) {
            self.euBankTransfer = euBankTransfer
            self.type = type
        }
    }

    public enum FundingType: String, Codable, Sendable {
        case bankTransfer = "bank_transfer"
    }
}

extension Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions.CustomerBalance.BankTransfer {
    public struct EUBankTransfer: Codable, Hashable, Sendable {
        public var country: String?

        public init(
            country: String? = nil
        ) {
            self.country = country
        }
    }

    public enum TransferType: String, Codable, Sendable {
        case euBankTransfer = "eu_bank_transfer"
        case gbBankTransfer = "gb_bank_transfer"
        case jpBankTransfer = "jp_bank_transfer"
        case mxBankTransfer = "mx_bank_transfer"
    }
}

extension Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions {
    public struct Konbini: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions {
    public struct USBankAccount: Codable, Hashable, Sendable {
        public var financialConnections: FinancialConnections?
        public var verificationMethod: VerificationMethod?

        public init(
            financialConnections: FinancialConnections? = nil,
            verificationMethod: VerificationMethod? = nil
        ) {
            self.financialConnections = financialConnections
            self.verificationMethod = verificationMethod
        }
    }
}

extension Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions.USBankAccount {
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
    }

    public enum VerificationMethod: String, Codable, Sendable {
        case automatic
        case instant
        case microdeposits
    }
}
