import Foundation
public import Stripe_Types_Shared

extension Stripe.Billing.Subscription.Payment.Settings {
    public struct MethodOptions: Codable, Hashable, Sendable {
        public var acssDebit: ACSSDebit.Configuration?
        public var bancontact: Bancontact.Configuration?
        public var card: Card.Configuration?
        public var customerBalance: CustomerBalance.Configuration?
        public var konbini: Konbini.Configuration?
        public var usBankAccount: USBankAccount.Configuration?

        private enum CodingKeys: String, CodingKey {
            case acssDebit = "acss_debit"
            case bancontact
            case card
            case customerBalance = "customer_balance"
            case konbini
            case usBankAccount = "us_bank_account"
        }

        public init(
            acssDebit: ACSSDebit.Configuration? = nil,
            bancontact: Bancontact.Configuration? = nil,
            card: Card.Configuration? = nil,
            customerBalance: CustomerBalance.Configuration? = nil,
            konbini: Konbini.Configuration? = nil,
            usBankAccount: USBankAccount.Configuration? = nil
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

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions {
    public enum ACSSDebit {}
}

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions.ACSSDebit {
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

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions {
    public enum Bancontact {}
}

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions.Bancontact {
    public struct Configuration: Codable, Hashable, Sendable {
        public var preferredLanguage: String?

        public init(
            preferredLanguage: String? = nil
        ) {
            self.preferredLanguage = preferredLanguage
        }
    }
}

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions {
    public enum Card {}
}

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions.Card {
    public struct Configuration: Codable, Hashable, Sendable {
        public var mandateOptions: MandateOptions?
        public var network: String?
        public var requestThreeDSecure: RequestThreeDSecure?

        public init(
            mandateOptions: MandateOptions? = nil,
            network: String? = nil,
            requestThreeDSecure: RequestThreeDSecure? = nil
        ) {
            self.mandateOptions = mandateOptions
            self.network = network
            self.requestThreeDSecure = requestThreeDSecure
        }
    }

    public struct MandateOptions: Codable, Hashable, Sendable {
        public var amount: Int?
        public var amountType: AmountType?

        public init(
            amount: Int? = nil,
            amountType: AmountType? = nil
        ) {
            self.amount = amount
            self.amountType = amountType
        }
    }

    public enum AmountType: String, Codable, Sendable {
        case fixed
        case maximum
    }

    public enum RequestThreeDSecure: String, Codable, Sendable {
        case automatic
        case any
    }
}

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions {
    public enum CustomerBalance {}
}

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions.CustomerBalance {
    public struct Configuration: Codable, Hashable, Sendable {
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

    public enum FundingType: String, Codable, Sendable {
        case bankTransfer = "bank_transfer"
    }
}

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions {
    public enum Konbini {}
}

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions.Konbini {
    public struct Configuration: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions {
    public enum USBankAccount {}
}

extension Stripe.Billing.Subscription.Payment.Settings.MethodOptions.USBankAccount {
    public struct Configuration: Codable, Hashable, Sendable {
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
