import Foundation
public import Stripe_Types_Shared

extension Stripe.Checkout.Session.PaymentMethod {
    public struct Options: Codable, Hashable, Sendable {
        public var acssDebit: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit?
        public var affirm: Stripe.Checkout.Session.PaymentMethod.Options.Affirm?
        public var afterpayClearpay: Stripe.Checkout.Session.PaymentMethod.Options.AfterpayClearpay?
        public var alipay: Stripe.Checkout.Session.PaymentMethod.Options.Alipay?
        public var auBecsDebit: Stripe.Checkout.Session.PaymentMethod.Options.AuBecsDebit?
        public var bacsDebit: Stripe.Checkout.Session.PaymentMethod.Options.BacsDebit?
        public var bancontact: Stripe.Checkout.Session.PaymentMethod.Options.Bancontact?
        public var boleto: Stripe.Checkout.Session.PaymentMethod.Options.Boleto?
        public var card: Stripe.Checkout.Session.PaymentMethod.Options.Card?
        public var cashapp: Stripe.Checkout.Session.PaymentMethod.Options.Cashapp?
        public var customerBalance: Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance?
        public var eps: Stripe.Checkout.Session.PaymentMethod.Options.Eps?
        public var fpx: Stripe.Checkout.Session.PaymentMethod.Options.Fpx?
        public var giropay: Stripe.Checkout.Session.PaymentMethod.Options.Giropay?
        public var grabpay: Stripe.Checkout.Session.PaymentMethod.Options.Grabpay?
        public var ideal: Stripe.Checkout.Session.PaymentMethod.Options.Ideal?
        public var klarna: Stripe.Checkout.Session.PaymentMethod.Options.Klarna?
        public var konbini: Stripe.Checkout.Session.PaymentMethod.Options.Konbini?
        public var link: Stripe.Checkout.Session.PaymentMethod.Options.Link?
        public var oxxo: Stripe.Checkout.Session.PaymentMethod.Options.OXXO?
        public var p24: Stripe.Checkout.Session.PaymentMethod.Options.P24?
        public var paynow: Stripe.Checkout.Session.PaymentMethod.Options.Paynow?
        public var pix: Stripe.Checkout.Session.PaymentMethod.Options.Pix?
        public var sepaDebit: Stripe.Checkout.Session.PaymentMethod.Options.SepaDebit?
        public var sofort: Stripe.Checkout.Session.PaymentMethod.Options.Sofort?
        public var usBankAccount: Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount?

        public init(
            acssDebit: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit? = nil,
            affirm: Stripe.Checkout.Session.PaymentMethod.Options.Affirm? = nil,
            afterpayClearpay: Stripe.Checkout.Session.PaymentMethod.Options.AfterpayClearpay? = nil,
            alipay: Stripe.Checkout.Session.PaymentMethod.Options.Alipay? = nil,
            auBecsDebit: Stripe.Checkout.Session.PaymentMethod.Options.AuBecsDebit? = nil,
            bacsDebit: Stripe.Checkout.Session.PaymentMethod.Options.BacsDebit? = nil,
            bancontact: Stripe.Checkout.Session.PaymentMethod.Options.Bancontact? = nil,
            boleto: Stripe.Checkout.Session.PaymentMethod.Options.Boleto? = nil,
            card: Stripe.Checkout.Session.PaymentMethod.Options.Card? = nil,
            cashapp: Stripe.Checkout.Session.PaymentMethod.Options.Cashapp? = nil,
            customerBalance: Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance? = nil,
            eps: Stripe.Checkout.Session.PaymentMethod.Options.Eps? = nil,
            fpx: Stripe.Checkout.Session.PaymentMethod.Options.Fpx? = nil,
            giropay: Stripe.Checkout.Session.PaymentMethod.Options.Giropay? = nil,
            grabpay: Stripe.Checkout.Session.PaymentMethod.Options.Grabpay? = nil,
            ideal: Stripe.Checkout.Session.PaymentMethod.Options.Ideal? = nil,
            klarna: Stripe.Checkout.Session.PaymentMethod.Options.Klarna? = nil,
            konbini: Stripe.Checkout.Session.PaymentMethod.Options.Konbini? = nil,
            link: Stripe.Checkout.Session.PaymentMethod.Options.Link? = nil,
            oxxo: Stripe.Checkout.Session.PaymentMethod.Options.OXXO? = nil,
            p24: Stripe.Checkout.Session.PaymentMethod.Options.P24? = nil,
            paynow: Stripe.Checkout.Session.PaymentMethod.Options.Paynow? = nil,
            pix: Stripe.Checkout.Session.PaymentMethod.Options.Pix? = nil,
            sepaDebit: Stripe.Checkout.Session.PaymentMethod.Options.SepaDebit? = nil,
            sofort: Stripe.Checkout.Session.PaymentMethod.Options.Sofort? = nil,
            usBankAccount: Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount? = nil
        ) {
            self.acssDebit = acssDebit
            self.affirm = affirm
            self.afterpayClearpay = afterpayClearpay
            self.alipay = alipay
            self.auBecsDebit = auBecsDebit
            self.bacsDebit = bacsDebit
            self.bancontact = bancontact
            self.boleto = boleto
            self.card = card
            self.cashapp = cashapp
            self.customerBalance = customerBalance
            self.eps = eps
            self.fpx = fpx
            self.giropay = giropay
            self.grabpay = grabpay
            self.ideal = ideal
            self.klarna = klarna
            self.konbini = konbini
            self.link = link
            self.oxxo = oxxo
            self.p24 = p24
            self.paynow = paynow
            self.pix = pix
            self.sepaDebit = sepaDebit
            self.sofort = sofort
            self.usBankAccount = usBankAccount
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct AcssDebit: Codable, Hashable, Sendable {
        public var currency: Stripe.Currency?
        public var mandateOptions: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Mandate.Options?
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Setup.FutureUsage?
        public var verificationMethod: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Verification.Method?

        public init(
            currency: Stripe.Currency? = nil,
            mandateOptions: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Mandate
                .Options? =
                nil,
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Setup
                .FutureUsage? =
                nil,
            verificationMethod: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Verification
                .Method? = nil
        ) {
            self.currency = currency
            self.mandateOptions = mandateOptions
            self.setupFutureUsage = setupFutureUsage
            self.verificationMethod = verificationMethod
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit {
    public enum Mandate {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit {
    public enum Verification {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Mandate {
    public struct Options: Codable, Hashable, Sendable {
        public var customMandateUrl: String?
        public var defaultFor: [Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Mandate.Options.DefaultFor]?
        public var intervalDescription: String?
        public var paymentSchedule: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Mandate.Options.PaymentSchedule?
        public var transactionType: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Mandate.Options.TransactionType?

        public init(
            customMandateUrl: String? = nil,
            intervalDescription: String? = nil,
            paymentSchedule: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Mandate.Options
                .PaymentSchedule? = nil,
            transactionType: Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Mandate.Options
                .TransactionType? = nil
        ) {
            self.customMandateUrl = customMandateUrl
            self.intervalDescription = intervalDescription
            self.paymentSchedule = paymentSchedule
            self.transactionType = transactionType
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Mandate.Options {
    public enum DefaultFor: Codable, Hashable, Sendable {
        case invoice
        case subscription
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Mandate.Options {
    public enum PaymentSchedule: String, Codable, Sendable {
        case interval
        case sporadic
        case combined
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Mandate.Options {
    public enum TransactionType: String, Codable, Sendable {
        case personal
        case business
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AcssDebit.Verification {
    public enum Method: String, Codable, Sendable {
        case automatic
        case instant
        case microdeposits
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Affirm: Codable, Hashable, Sendable {

        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Affirm.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Affirm.Setup
                .FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Affirm {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Affirm.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct AfterpayClearpay: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.AfterpayClearpay.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.AfterpayClearpay.Setup
                .FutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AfterpayClearpay {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AfterpayClearpay.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Alipay: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Alipay.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Alipay.Setup
                .FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Alipay {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Alipay.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct AuBecsDebit: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.AuBecsDebit.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.AuBecsDebit.Setup
                .FutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AuBecsDebit {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.AuBecsDebit.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct BacsDebit: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.BacsDebit.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.BacsDebit.Setup
                .FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.BacsDebit {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.BacsDebit.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Bancontact: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Bancontact.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Bancontact.Setup
                .FutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Bancontact {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Bancontact.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Boleto: Codable, Hashable, Sendable {
        public var expiresAfterDays: Int?
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Boleto.Setup.FutureUsage?

        public init(
            expiresAfterDays: Int? = nil,
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Boleto.Setup
                .FutureUsage? =
                nil
        ) {
            self.expiresAfterDays = expiresAfterDays
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Boleto {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Boleto.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Card: Codable, Hashable, Sendable {
        public var installments: Stripe.Checkout.Session.PaymentMethod.Options.Card.Installments?
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Card.Setup.FutureUsage?
        public var statementDescriptorSuffixKana: String?
        public var statementDescriptorSuffixKanji: String?

        public init(
            installments: Stripe.Checkout.Session.PaymentMethod.Options.Card.Installments? = nil,
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Card.Setup
                .FutureUsage? = nil,
            statementDescriptorSuffixKana: String? = nil,
            statementDescriptorSuffixKanji: String? = nil
        ) {
            self.installments = installments
            self.setupFutureUsage = setupFutureUsage
            self.statementDescriptorSuffixKana = statementDescriptorSuffixKana
            self.statementDescriptorSuffixKanji = statementDescriptorSuffixKanji
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Card {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Card {
    public struct Installments: Codable, Hashable, Sendable {
        public var enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Card.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Cashapp: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Cashapp.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Cashapp.Setup
                .FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Cashapp {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Cashapp.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct CustomerBalance: Codable, Hashable, Sendable {
        public var bankTransfer: Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance.BankTransfer?
        public var fundingType: String?
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance.Setup.FutureUsage?

        public init(
            bankTransfer: Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance
                .BankTransfer? =
                nil,
            fundingType: String? = nil,
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance.Setup
                .FutureUsage? = nil
        ) {
            self.bankTransfer = bankTransfer
            self.fundingType = fundingType
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance {
    public struct BankTransfer: Codable, Hashable, Sendable {
        public var euBankTransfer:
            Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance.BankTransfer
                .EuBankTransfer?
        public var requestedAddressTypes:
            [Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance.BankTransfer
                .RequestedAddressType]?
        public var type: Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance.BankTransferType?

        public init(
            euBankTransfer: Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance
                .BankTransfer
                .EuBankTransfer? = nil,
            requestedAddressTypes: [Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance
                .BankTransfer.RequestedAddressType]? = nil,
            type: Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance.BankTransferType? =
                nil
        ) {
            self.euBankTransfer = euBankTransfer
            self.requestedAddressTypes = requestedAddressTypes
            self.type = type
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance.BankTransfer {
    public enum RequestedAddressType: String, Codable, Sendable {
        case sortCode = "sort_code"
        case zengin
        case sepa
        case spei
        case iban
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance {
    public enum BankTransferType: String, Codable, Sendable {
        case euBankTransfer = "eu_bank_transfer"
        case gbBankTransfer = "gb_bank_transfer"
        case jpBankTransfer = "jp_bank_transfer"
        case mxBankTransfer = "mx_bank_transfer"
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance.BankTransfer {
    public struct EuBankTransfer: Codable, Hashable, Sendable {
        public var country: String?

        public init(
            country: String? = nil
        ) {
            self.country = country
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.CustomerBalance.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Eps: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Eps.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Eps.Setup.FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Eps {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Eps.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Fpx: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Fpx.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Fpx.Setup.FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Fpx {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Fpx.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Giropay: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Giropay.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Giropay.Setup
                .FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Giropay {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Giropay.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Grabpay: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Grabpay.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Grabpay.Setup
                .FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Grabpay {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Grabpay.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Ideal: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Ideal.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Ideal.Setup
                .FutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Ideal {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Ideal.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Klarna: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Klarna.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Klarna.Setup
                .FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Klarna {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Klarna.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Konbini: Codable, Hashable, Sendable {
        public var expiresAfterDays: Int?
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Konbini.Setup.FutureUsage?

        public init(
            expiresAfterDays: Int? = nil,
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Konbini.Setup
                .FutureUsage? =
                nil
        ) {
            self.expiresAfterDays = expiresAfterDays
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Konbini {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Konbini.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Link: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Link.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Link.Setup
                .FutureUsage? = nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Link {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Link.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case offSession = "off_session"
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct OXXO: Codable, Hashable, Sendable {
        public var expiresAfterDays: Int?
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.OXXO.Setup.FutureUsage?

        public init(
            expiresAfterDays: Int? = nil,
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.OXXO.Setup
                .FutureUsage? = nil
        ) {
            self.expiresAfterDays = expiresAfterDays
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.OXXO {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.OXXO.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct P24: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.P24.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.P24.Setup.FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.P24 {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.P24.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Paynow: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Paynow.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Paynow.Setup
                .FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Paynow {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Paynow.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case offSession = "off_session"
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Pix: Codable, Hashable, Sendable {
        public var expiresAfterSeconds: Int?

        public init(
            expiresAfterSeconds: Int? = nil
        ) {
            self.expiresAfterSeconds = expiresAfterSeconds
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct SepaDebit: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.SepaDebit.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.SepaDebit.Setup
                .FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.SepaDebit {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.SepaDebit.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct Sofort: Codable, Hashable, Sendable {
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Sofort.Setup.FutureUsage?

        public init(
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.Sofort.Setup
                .FutureUsage? =
                nil
        ) {
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Sofort {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.Sofort.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options {
    public struct USBankAccount: Codable, Hashable, Sendable {
        public var financialConnections: Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount.FinancialConnections?
        public var setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount.Setup.FutureUsage?
        public var verificationMethod: Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount.Verification.Method?

        public init(
            financialConnections: Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount
                .FinancialConnections? = nil,
            setupFutureUsage: Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount.Setup
                .FutureUsage? = nil,
            verificationMethod: Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount
                .Verification
                .Method? = nil
        ) {
            self.financialConnections = financialConnections
            self.setupFutureUsage = setupFutureUsage
            self.verificationMethod = verificationMethod
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount {
    public enum Setup {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount {
    public enum Verification {}
}

extension Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount {
    public struct FinancialConnections: Codable, Hashable, Sendable {
        public var permissions:
            [Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount.FinancialConnections
                .Permission]?

        public init(
            permissions: [Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount
                .FinancialConnections
                .Permission]? = nil
        ) {
            self.permissions = permissions
        }
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount.FinancialConnections {
    public enum Permission: String, Codable, Sendable {
        case paymentMethod = "payment_method"
        case balances
        case transactions
        case ownership
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
        case `none`
    }
}

extension Stripe.Checkout.Session.PaymentMethod.Options.USBankAccount.Verification {
    public enum Method: String, Codable, Sendable {
        case automatic
        case instant
    }
}
