public import Foundation
public import Stripe_Types_Shared

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum ACHCredit {}

}

extension Stripe.Charges.Charge.PaymentMethod.Details.ACHCredit {
    public struct Transfer: Codable, Hashable, Sendable {
        public var accountNumber: String?
        public var bankName: String?
        public var routingNumber: String?
        public var swiftCode: String?

        public init(
            accountNumber: String? = nil,
            bankName: String? = nil,
            routingNumber: String? = nil,
            swiftCode: String? = nil
        ) {
            self.accountNumber = accountNumber
            self.bankName = bankName
            self.routingNumber = routingNumber
            self.swiftCode = swiftCode
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct ACHDebit: Codable, Hashable, Sendable {
        public var accountHolderType: Stripe.Charges.Charge.PaymentMethod.Details.ACHDebit.AccountHolder.`Type`?
        public var bankName: String?
        public var country: String?
        public var fingerprint: String?
        public var last4: String?
        public var routingNumber: String?

        public init(
            accountHolderType: Stripe.Charges.Charge.PaymentMethod.Details.ACHDebit.AccountHolder
                .`Type`? = nil,
            bankName: String? = nil,
            country: String? = nil,
            fingerprint: String? = nil,
            last4: String? = nil,
            routingNumber: String? = nil
        ) {
            self.accountHolderType = accountHolderType
            self.bankName = bankName
            self.country = country
            self.fingerprint = fingerprint
            self.last4 = last4
            self.routingNumber = routingNumber
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details.ACHDebit {
    public enum AccountHolder {}
}

extension Stripe.Charges.Charge.PaymentMethod.Details.ACHDebit.AccountHolder {
    public enum `Type`: String, Codable, Sendable {
        case individual
        case company
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct ACSSDebit: Codable, Hashable, Sendable {
        public var bankName: String?
        public var fingerprint: String?
        public var institutionNumber: String?
        public var last4: String?
        public var mandate: String?
        public var transitNumber: String?

        public init(
            bankName: String? = nil,
            fingerprint: String? = nil,
            institutionNumber: String? = nil,
            last4: String? = nil,
            mandate: String? = nil,
            transitNumber: String? = nil
        ) {
            self.bankName = bankName
            self.fingerprint = fingerprint
            self.institutionNumber = institutionNumber
            self.last4 = last4
            self.mandate = mandate
            self.transitNumber = transitNumber
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Affirm: Codable, Hashable, Sendable {

        public init() {}
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct AfterpayClearpay: Codable, Hashable, Sendable {

        public var reference: String?

        public init(
            reference: String? = nil
        ) {
            self.reference = reference
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Alipay: Codable, Hashable, Sendable {
        public var buyerId: String?
        public var fingerprint: String?
        public var transactionId: String?

        public init(
            buyerId: String? = nil,
            fingerprint: String? = nil,
            transactionId: String? = nil
        ) {
            self.buyerId = buyerId
            self.fingerprint = fingerprint
            self.transactionId = transactionId
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct AuBecsDebit: Codable, Hashable, Sendable {

        public var bsbNumber: String?
        public var fingerprint: String?
        public var last4: String?
        public var mandate: String?

        public init(
            bsbNumber: String? = nil,
            fingerprint: String? = nil,
            last4: String? = nil,
            mandate: String? = nil
        ) {
            self.bsbNumber = bsbNumber
            self.fingerprint = fingerprint
            self.last4 = last4
            self.mandate = mandate
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct BacsDebit: Codable, Hashable, Sendable {
        public var fingerprint: String?
        public var last4: String?
        public var mandate: String?
        public var sortCode: String?

        public init(
            fingerprint: String? = nil,
            last4: String? = nil,
            mandate: String? = nil,
            sortCode: String? = nil
        ) {
            self.fingerprint = fingerprint
            self.last4 = last4
            self.mandate = mandate
            self.sortCode = sortCode
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Bancontact: Codable, Hashable, Sendable {

        public var bankCode: String?
        public var bankName: String?
        public var bic: String?
        public var generatedSepaDebit: String?
        public var generatedSepaDebitMandate: String?
        public var ibanLast4: String?
        public var preferredLanguage: Stripe.Charges.Charge.PaymentMethod.Details.BancontactPreferredLanguage?
        public var verifiedName: String?

        public init(
            bankCode: String? = nil,
            bankName: String? = nil,
            bic: String? = nil,
            generatedSepaDebit: String? = nil,
            generatedSepaDebitMandate: String? = nil,
            ibanLast4: String? = nil,
            preferredLanguage: Stripe.Charges.Charge.PaymentMethod.Details
                .BancontactPreferredLanguage? =
                nil,
            verifiedName: String? = nil
        ) {
            self.bankCode = bankCode
            self.bankName = bankName
            self.bic = bic
            self.generatedSepaDebit = generatedSepaDebit
            self.generatedSepaDebitMandate = generatedSepaDebitMandate
            self.ibanLast4 = ibanLast4
            self.preferredLanguage = preferredLanguage
            self.verifiedName = verifiedName
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum BancontactPreferredLanguage: String, Codable, Sendable {
        case en
        case de
        case fr
        case nl
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Blik: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Boleto: Codable, Hashable, Sendable {
        public var taxId: String?

        public init(
            taxId: String? = nil
        ) {
            self.taxId = taxId
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Card: Codable, Hashable, Sendable {
        public var brand: PaymentMethodDetailsCardBrand?
        public var captureBefore: Date?
        public var checks: PaymentMethodDetailsCardChecks?
        public var country: String?
        public var expMonth: Int?
        public var expYear: Int?
        public var fingerprint: String?
        public var funding: CardFundingType?
        public var installments: Stripe.Charges.Charge.PaymentMethod.Details.CardInstallments?
        public var last4: String?
        public var network: PaymentMethodCardNetwork?
        public var threeDSecure: Stripe.Charges.Charge.PaymentMethod.Details.CardThreeDSecure?
        public var wallet: Stripe.Charges.Charge.PaymentMethod.Details.CardWallet?

        public init(
            brand: PaymentMethodDetailsCardBrand? = nil,
            captureBefore: Date? = nil,
            checks: PaymentMethodDetailsCardChecks? = nil,
            country: String? = nil,
            expMonth: Int? = nil,
            expYear: Int? = nil,
            fingerprint: String? = nil,
            funding: CardFundingType? = nil,
            installments: Stripe.Charges.Charge.PaymentMethod.Details.CardInstallments? = nil,
            last4: String? = nil,
            network: PaymentMethodCardNetwork? = nil,
            threeDSecure: Stripe.Charges.Charge.PaymentMethod.Details.CardThreeDSecure? = nil,
            wallet: Stripe.Charges.Charge.PaymentMethod.Details.CardWallet? = nil
        ) {
            self.brand = brand
            self.captureBefore = captureBefore
            self.checks = checks
            self.country = country
            self.expMonth = expMonth
            self.expYear = expYear
            self.fingerprint = fingerprint
            self.funding = funding
            self.installments = installments
            self.last4 = last4
            self.network = network
            self.threeDSecure = threeDSecure
            self.wallet = wallet
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct CardInstallments: Codable, Hashable, Sendable {
        public var plan: Stripe.Charges.Charge.PaymentMethod.Details.CardInstallmentPlan?

        public init(
            plan: Stripe.Charges.Charge.PaymentMethod.Details.CardInstallmentPlan? = nil
        ) {
            self.plan = plan
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct CardInstallmentPlan: Codable, Hashable, Sendable {

        public var count: Int?
        public var interval: Stripe.Billing.Plan.Interval?
        public var type: String?

        public init(
            count: Int? = nil,
            interval: Stripe.Billing.Plan.Interval? = nil,
            type: String? = nil
        ) {
            self.count = count
            self.interval = interval
            self.type = type
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct CardThreeDSecure: Codable, Hashable, Sendable {
        public var authenticationFlow: Stripe.Charges.Charge.PaymentMethod.Details.CardThreeDSecure.AuthenticationFlow?
        public var result: Stripe.Charges.Charge.PaymentMethod.Details.CardThreeDSecure.Result?
        public var resultReason: Stripe.Charges.Charge.PaymentMethod.Details.CardThreeDSecure.ResultReason?
        public var version: String?

        public init(
            authenticationFlow: Stripe.Charges.Charge.PaymentMethod.Details.CardThreeDSecure
                .AuthenticationFlow? = nil,
            result: Stripe.Charges.Charge.PaymentMethod.Details.CardThreeDSecure.Result? = nil,
            resultReason: Stripe.Charges.Charge.PaymentMethod.Details.CardThreeDSecure
                .ResultReason? =
                nil,
            version: String? = nil
        ) {
            self.authenticationFlow = authenticationFlow
            self.result = result
            self.resultReason = resultReason
            self.version = version
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details.CardThreeDSecure {
    public enum AuthenticationFlow: String, Codable, Sendable {
        case challenge
        case frictionless
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details.CardThreeDSecure {
    public enum Result: String, Codable, Sendable {
        case authenticated
        case attemptAcknowledged = "attempt_acknowledged"
        case exempted
        case notSupported = "not_supported"
        case failed
        case processingError = "processing_error"
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details.CardThreeDSecure {
    public enum ResultReason: String, Codable, Sendable {
        case cardNotEnrolled = "card_not_enrolled"
        case networkNotSupported = "network_not_supported"
        case abandoned
        case canceled
        case rejected
        case bypassed
        case protocolError = "protocol_error"
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct CashApp: Codable, Hashable, Sendable {
        public var buyerId: String?
        public var cashtag: String?

        public init(
            buyerId: String? = nil,
            cashtag: String? = nil
        ) {
            self.buyerId = buyerId
            self.cashtag = cashtag
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct CardWallet: Codable, Hashable, Sendable {

        public var amexExpressCheckout: Stripe.Charges.Charge.PaymentMethod.Details.AmexExpressCheckout?
        public var applePay: Stripe.Charges.Charge.PaymentMethod.Details.ApplePay?
        public var dynamicLast4: String?
        public var googlePay: Stripe.Charges.Charge.PaymentMethod.Details.GooglePay?
        public var masterpass: Stripe.Charges.Charge.PaymentMethod.Details.Masterpass?
        public var samsungPay: Stripe.Charges.Charge.PaymentMethod.Details.SamsungPay?
        public var type: PaymentMethodDetailsCardWalletType?
        public var visaCheckout: Stripe.Charges.Charge.PaymentMethod.Details.VisaCheckout?

        public init(
            amexExpressCheckout: Stripe.Charges.Charge.PaymentMethod.Details.AmexExpressCheckout? =
                nil,
            applePay: Stripe.Charges.Charge.PaymentMethod.Details.ApplePay? = nil,
            dynamicLast4: String? = nil,
            googlePay: Stripe.Charges.Charge.PaymentMethod.Details.GooglePay? = nil,
            masterpass: Stripe.Charges.Charge.PaymentMethod.Details.Masterpass? = nil,
            samsungPay: Stripe.Charges.Charge.PaymentMethod.Details.SamsungPay? = nil,
            type: PaymentMethodDetailsCardWalletType? = nil,
            visaCheckout: Stripe.Charges.Charge.PaymentMethod.Details.VisaCheckout? = nil
        ) {
            self.amexExpressCheckout = amexExpressCheckout
            self.applePay = applePay
            self.dynamicLast4 = dynamicLast4
            self.googlePay = googlePay
            self.masterpass = masterpass
            self.samsungPay = samsungPay
            self.type = type
            self.visaCheckout = visaCheckout
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct AmexExpressCheckout: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct ApplePay: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct GooglePay: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Masterpass: Codable, Hashable, Sendable {
        public var billingAddress: Address?
        public var email: String?
        public var name: String?
        public var shippingAddress: Address?

        public init(
            billingAddress: Address? = nil,
            email: String? = nil,
            name: String? = nil,
            shippingAddress: Address? = nil
        ) {
            self.billingAddress = billingAddress
            self.email = email
            self.name = name
            self.shippingAddress = shippingAddress
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct SamsungPay: Codable, Hashable, Sendable {

        public init() {}
    }
}
extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct VisaCheckout: Codable, Hashable, Sendable {

        public var billingAddress: Address?
        public var email: String?
        public var name: String?
        public var shippingAddress: Address?

        public init(
            billingAddress: Address? = nil,
            email: String? = nil,
            name: String? = nil,
            shippingAddress: Address? = nil
        ) {
            self.billingAddress = billingAddress
            self.email = email
            self.name = name
            self.shippingAddress = shippingAddress
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct CardPresent: Codable, Hashable, Sendable {
        public var authorizedAmount: Int?
        public var brand: PaymentMethodDetailsCardBrand?
        public var captureBefore: Date?
        public var cardholderName: String?
        public var country: String?
        public var emvAuthData: String?
        public var expMonth: Int?
        public var expYear: Int?
        public var fingerprint: String?
        public var funding: CardFundingType?
        public var generatedCard: String?
        public var incrementalAuthorizationSupported: Bool?
        public var last4: String?
        public var network: PaymentMethodCardNetwork?
        public var overCaptureSupported: Bool?
        public var readMethod: Stripe.Charges.Charge.PaymentMethod.Details.CardPresentReadMethod?
        public var receipt: Stripe.Charges.Charge.PaymentMethod.Details.CardPresentReceipt?

        public init(
            authorizedAmount: Int? = nil,
            brand: PaymentMethodDetailsCardBrand? = nil,
            captureBefore: Date? = nil,
            cardholderName: String? = nil,
            country: String? = nil,
            emvAuthData: String? = nil,
            expMonth: Int? = nil,
            expYear: Int? = nil,
            fingerprint: String? = nil,
            funding: CardFundingType? = nil,
            generatedCard: String? = nil,
            incrementalAuthorizationSupported: Bool? = nil,
            last4: String? = nil,
            network: PaymentMethodCardNetwork? = nil,
            overCaptureSupported: Bool? = nil,
            readMethod: Stripe.Charges.Charge.PaymentMethod.Details.CardPresentReadMethod? = nil,
            receipt: Stripe.Charges.Charge.PaymentMethod.Details.CardPresentReceipt? = nil
        ) {
            self.authorizedAmount = authorizedAmount
            self.brand = brand
            self.captureBefore = captureBefore
            self.cardholderName = cardholderName
            self.country = country
            self.emvAuthData = emvAuthData
            self.expMonth = expMonth
            self.expYear = expYear
            self.fingerprint = fingerprint
            self.funding = funding
            self.generatedCard = generatedCard
            self.incrementalAuthorizationSupported = incrementalAuthorizationSupported
            self.last4 = last4
            self.network = network
            self.overCaptureSupported = overCaptureSupported
            self.readMethod = readMethod
            self.receipt = receipt
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum CardPresentReadMethod: String, Codable, Sendable {
        case contactEmv = "contact_emv"
        case contactlessEmv = "contactless_emv"
        case magneticStripeTrack2 = "magnetic_stripe_track2"
        case magneticStripeFallback = "magnetic_stripe_fallback"
        case contactlessMagstripeMode = "contactless_magstripe_mode"
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct CardPresentReceipt: Codable, Hashable, Sendable {
        public var accountType: Stripe.Charges.Charge.PaymentMethod.Details.CardPresentReceipt.AccountType?
        public var applicationCryptogram: String?
        public var applicationPreferredName: String?
        public var authorizationCode: String?
        public var authorizationResponseCode: String?
        public var cardholderVerificationMethod: String?
        public var dedicatedFileName: String?
        public var terminalVerificationResults: String?
        public var transactionStatusInformation: String?

        public init(
            accountType: Stripe.Charges.Charge.PaymentMethod.Details.CardPresentReceipt
                .AccountType? =
                nil,
            applicationCryptogram: String? = nil,
            applicationPreferredName: String? = nil,
            authorizationCode: String? = nil,
            authorizationResponseCode: String? = nil,
            cardholderVerificationMethod: String? = nil,
            dedicatedFileName: String? = nil,
            terminalVerificationResults: String? = nil,
            transactionStatusInformation: String? = nil
        ) {
            self.accountType = accountType
            self.applicationCryptogram = applicationCryptogram
            self.applicationPreferredName = applicationPreferredName
            self.authorizationCode = authorizationCode
            self.authorizationResponseCode = authorizationResponseCode
            self.cardholderVerificationMethod = cardholderVerificationMethod
            self.dedicatedFileName = dedicatedFileName
            self.terminalVerificationResults = terminalVerificationResults
            self.transactionStatusInformation = transactionStatusInformation
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details.CardPresentReceipt {
    public enum AccountType: String, Codable, Sendable {
        case credit
        case checking
        case prepaid
        case unknown
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct CustomerBalance: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct EPS: Codable, Hashable, Sendable {
        public var bank: Stripe.Charges.Charge.PaymentMethod.Details.EPSBank?
        public var verifiedName: String?

        public init(
            bank: Stripe.Charges.Charge.PaymentMethod.Details.EPSBank? = nil,
            verifiedName: String? = nil
        ) {
            self.bank = bank
            self.verifiedName = verifiedName
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum EPSBank: String, Codable, Sendable {
        case arzteUndApothekerBank = "arzte_und_apotheker_bank"
        case austrianAnadiBankAg = "austrian_anadi_bank_ag"
        case bankAustria = "bank_austria"
        case bankhausCarlSpangler = "bankhaus_carl_spangler"
        case bankhausSchelhammerUndSchatteraAg = "bankhaus_schelhammer_und_schattera_ag"
        case bawagPskAg = "bawag_psk_ag"
        case bksBankAg = "bks_bank_ag"
        case brullKallmusBankAg = "brull_kallmus_bank_ag"
        case btvVierLanderBank = "btv_vier_lander_bank"
        case capitalBankGraweGruppeAg = "capital_bank_grawe_gruppe_ag"
        case deutscheBankAg = "deutsche_bank_ag"
        case dolomitenbank
        case easybankAg = "easybank_ag"
        case ersteBankUndSparkassen = "erste_bank_und_sparkassen"
        case hypoAlpeadriabankInternationalAg = "hypo_alpeadriabank_international_ag"
        case hypoNoeLbFurNiederosterreichUWien = "hypo_noe_lb_fur_niederosterreich_u_wien"
        case hypoOberosterreichSalzburgSteiermark = "hypo_oberosterreich_salzburg_steiermark"
        case hypoTirolBankAg = "hypo_tirol_bank_ag"
        case hypoVorarlbergBankAg = "hypo_vorarlberg_bank_ag"
        case hypoBankBurgenlandAktiengesellschaft = "hypo_bank_burgenland_aktiengesellschaft"
        case marchfelderBank = "marchfelder_bank"
        case oberbankAg = "oberbank_ag"
        case raiffeisenBankengruppeOsterreich = "raiffeisen_bankengruppe_osterreich"
        case schoellerbankAg = "schoellerbank_ag"
        case spardaBankWien = "sparda_bank_wien"
        case volksbankGruppe = "volksbank_gruppe"
        case volkskreditbankAg = "volkskreditbank_ag"
        case vrBankBrauna = "vr_bank_brauna"
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Fpx: Codable, Hashable, Sendable {
        public var bank: Stripe.Charges.Charge.PaymentMethod.Details.FpxBank?
        public var transactionId: String?

        public init(
            bank: Stripe.Charges.Charge.PaymentMethod.Details.FpxBank? = nil,
            transactionId: String? = nil
        ) {
            self.bank = bank
            self.transactionId = transactionId
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum FpxBank: String, Codable, Sendable {
        case affinBank = "affin_bank"
        case agrobank
        case allianceBank = "alliance_bank"
        case ambank
        case bankIslam = "bank_islam"
        case bankMuamalat = "bank_muamalat"
        case bankRakyat = "bank_rakyat"
        case bsn
        case cimb
        case hongLeongBank = "hong_leong_bank"
        case hsbc
        case kfh
        case maybank2u
        case ocbc
        case publicBank = "public_bank"
        case rhb
        case standardChartered = "standard_chartered"
        case uob
        case deutscheBank = "deutsche_bank"
        case maybank2e
        case pbEnterprise = "pb_enterprise"
        case bankOfChina = "bank_of_china"
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Grabpay: Codable, Hashable, Sendable {
        public var transactionId: String?

        public init(
            transactionId: String? = nil
        ) {
            self.transactionId = transactionId
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Giropay: Codable, Hashable, Sendable {

        public var bankCode: String?
        public var bankName: String?
        public var bic: String?
        public var verifiedName: String?

        public init(
            bankCode: String? = nil,
            bankName: String? = nil,
            bic: String? = nil,
            verifiedName: String? = nil
        ) {
            self.bankCode = bankCode
            self.bankName = bankName
            self.bic = bic
            self.verifiedName = verifiedName
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Ideal: Codable, Hashable, Sendable {
        public var bank: Stripe.Charges.Charge.PaymentMethod.Details.IdealBank?
        public var bic: String?
        public var generatedSepaDebit: String?
        public var generatedSepaDebitMandate: String?
        public var ibanLast4: String?
        public var verifiedName: String?

        public init(
            bank: Stripe.Charges.Charge.PaymentMethod.Details.IdealBank? = nil,
            bic: String? = nil,
            generatedSepaDebit: String? = nil,
            generatedSepaDebitMandate: String? = nil,
            ibanLast4: String? = nil,
            verifiedName: String? = nil
        ) {
            self.bank = bank
            self.bic = bic
            self.generatedSepaDebit = generatedSepaDebit
            self.generatedSepaDebitMandate = generatedSepaDebitMandate
            self.ibanLast4 = ibanLast4
            self.verifiedName = verifiedName
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum IdealBank: String, Codable, Sendable {
        case abnAmro = "abn_amro"
        case asnBank = "asn_bank"
        case bunq
        case handelsbanken
        case ing
        case knab
        case moneyou
        case rabobank
        case regiobank
        case revolut
        case snsBank = "sns_bank"
        case triodosBank = "triodos_bank"
        case vanLanschot = "van_lanschot"
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct InteracPresent: Codable, Hashable, Sendable {

        public var brand: Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent.Brand?
        public var cardholderName: String?
        public var country: String?
        public var emvAuthData: String?
        public var expMonth: Int?
        public var expYear: Int?
        public var fingerprint: String?
        public var funding: CardFundingType?
        public var generatedCard: String?
        public var last4: String?
        public var network: PaymentMethodCardNetwork?
        public var preferredLocales: [String]?
        public var readMethod: Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent.ReadMethod?
        public var receipt: Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent.Receipt?

        public init(
            brand: Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent.Brand? = nil,
            cardholderName: String? = nil,
            country: String? = nil,
            emvAuthData: String? = nil,
            expMonth: Int? = nil,
            expYear: Int? = nil,
            fingerprint: String? = nil,
            funding: CardFundingType? = nil,
            generatedCard: String? = nil,
            last4: String? = nil,
            network: PaymentMethodCardNetwork? = nil,
            preferredLocales: [String]? = nil,
            readMethod: Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent.ReadMethod? =
                nil,
            receipt: Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent.Receipt? = nil
        ) {
            self.brand = brand
            self.cardholderName = cardholderName
            self.country = country
            self.emvAuthData = emvAuthData
            self.expMonth = expMonth
            self.expYear = expYear
            self.fingerprint = fingerprint
            self.funding = funding
            self.generatedCard = generatedCard
            self.last4 = last4
            self.network = network
            self.preferredLocales = preferredLocales
            self.readMethod = readMethod
            self.receipt = receipt
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent {
    public enum Brand: String, Codable, Sendable {
        case interac
        case mastercard
        case visa
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent {
    public enum ReadMethod: String, Codable, Sendable {
        case contactEmv = "contact_emv"
        case contactlessEmv = "contactless_emv"
        case magneticStripeTrack2 = "magnetic_stripe_track2"
        case magneticStripeFallback = "magnetic_stripe_fallback"
        case contactlessMagstripeMode = "contactless_magstripe_mode"
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent {
    public struct Receipt: Codable, Hashable, Sendable {
        public var accountType: Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent.Receipt.AccountType?
        public var applicationCryptogram: String?
        public var applicationPreferredName: String?
        public var authorizationCode: String?
        public var authorizationResponseCode: String?
        public var cardholderVerificationMethod: String?
        public var dedicatedFileName: String?
        public var terminalVerificationResults: String?
        public var transactionStatusInformation: String?

        public init(
            accountType: Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent.Receipt
                .AccountType? =
                nil,
            applicationCryptogram: String? = nil,
            applicationPreferredName: String? = nil,
            authorizationCode: String? = nil,
            authorizationResponseCode: String? = nil,
            cardholderVerificationMethod: String? = nil,
            dedicatedFileName: String? = nil,
            terminalVerificationResults: String? = nil,
            transactionStatusInformation: String? = nil
        ) {
            self.accountType = accountType
            self.applicationCryptogram = applicationCryptogram
            self.applicationPreferredName = applicationPreferredName
            self.authorizationCode = authorizationCode
            self.authorizationResponseCode = authorizationResponseCode
            self.cardholderVerificationMethod = cardholderVerificationMethod
            self.dedicatedFileName = dedicatedFileName
            self.terminalVerificationResults = terminalVerificationResults
            self.transactionStatusInformation = transactionStatusInformation
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent.Receipt {
    public enum AccountType: String, Codable, Sendable {
        case checking
        case savings
        case unknown
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Klarna: Codable, Hashable, Sendable {

        public var paymentMethodCategory: Stripe.Charges.Charge.PaymentMethod.Details.KlarnaPaymentMethodCategory?
        public var preferredLocale: Stripe.Charges.Charge.PaymentMethod.Details.KlarnaPreferredLocale?

        public init(
            paymentMethodCategory: Stripe.Charges.Charge.PaymentMethod.Details
                .KlarnaPaymentMethodCategory? = nil,
            preferredLocale: Stripe.Charges.Charge.PaymentMethod.Details.KlarnaPreferredLocale? =
                nil
        ) {
            self.paymentMethodCategory = paymentMethodCategory
            self.preferredLocale = preferredLocale
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum KlarnaPaymentMethodCategory: String, Codable, Sendable {
        case payLater = "pay_later"
        case payNow = "pay_now"
        case payWithFinancing = "pay_with_financing"
        case payInInstallments = "pay_in_installments"
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum KlarnaPreferredLocale: String, Codable, Sendable {
        case deAT = "de-AT"
        case enAT = "en-AT"
        case nlBE = "nl-BE"
        case frBE = "fr-BE"
        case enBE = "en-BE"
        case deDE = "de-DE"
        case enDE = "en-DE"
        case daDK = "da-DK"
        case enDK = "en-DK"
        case esES = "es-ES"
        case enES = "en-ES"
        case fiFI = "fi-FI"
        case svFI = "sv-FI"
        case enFI = "en-FI"
        case enGB = "en-GB"
        case enIE = "en-IE"
        case itIT = "it-IT"
        case enIT = "en-IT"
        case nlNL = "nl-NL"
        case enNL = "en-NL"
        case nbNO = "nb-NO"
        case enNO = "en-NO"
        case svSE = "sv-SE"
        case enSE = "en-SE"
        case enUS = "en-US"
        case esUS = "es-US"
        case frFR = "fr-FR"
        case enFR = "en-FR"
        case csCZ = "cs-CZ"
        case enCZ = "en-CZ"
        case elGR = "el-GR"
        case enGR = "en-GR"
        case enAU = "en-AU"
        case enNZ = "en-NZ"
        case enCA = "en-CA"
        case frCA = "fr-CA"
        case plPL = "pl-PL"
        case enPL = "en-PL"
        case ptPT = "pt-PT"
        case enPT = "en-PT"
        case deCH = "de-CH"
        case frCH = "fr-CH"
        case itCH = "it-CH"
        case enCH = "en-CH"
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Kobini: Codable, Hashable, Sendable {
        public var store: Stripe.Charges.Charge.PaymentMethod.Details.KobiniStore?

        public init(
            store: Stripe.Charges.Charge.PaymentMethod.Details.KobiniStore? = nil
        ) {
            self.store = store
        }
    }
}
extension Stripe.Charges.Charge.PaymentMethod.Details {

    public struct KobiniStore: Codable, Hashable, Sendable {
        public var chain: String?

        public init(
            chain: String? = nil
        ) {
            self.chain = chain
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Link: Codable, Hashable, Sendable {
        public var country: String?

        public init(
            country: String?
        ) {
            self.country = country
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Multibanco: Codable, Hashable, Sendable {
        public var entity: String?
        public var reference: String?

        public init(
            entity: String? = nil,
            reference: String? = nil
        ) {
            self.entity = entity
            self.reference = reference
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct OXXO: Codable, Hashable, Sendable {
        public var number: String?

        public init(
            number: String? = nil
        ) {
            self.number = number
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct P24: Codable, Hashable, Sendable {
        public var bank: Stripe.Charges.Charge.PaymentMethod.Details.P24Bank?
        public var reference: String?
        public var verifiedName: String?

        public init(
            bank: Stripe.Charges.Charge.PaymentMethod.Details.P24Bank? = nil,
            reference: String? = nil,
            verifiedName: String? = nil
        ) {
            self.bank = bank
            self.reference = reference
            self.verifiedName = verifiedName
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum P24Bank: String, Codable, Sendable {
        case ing = "ing"
        case citiHandlowy = "citi_handlowy"
        case tmobileUsbugiBankowe = "tmobile_usbugi_bankowe"
        case plusBank = "plus_bank"
        case etransferPocztowy24 = "etransfer_pocztowy24"
        case bankiSpbdzielcze = "banki_spbdzielcze"
        case bankNowyBfgSa = "bank_nowy_bfg_sa"
        case getinBank = "getin_bank"
        case blik = "blik"
        case noblePay = "noble_pay"
        case ideabank = "ideabank"
        case envelobank = "envelobank"
        case santanderPrzelew24 = "santander_przelew24"
        case nestPrzelew = "nest_przelew"
        case mbankMtransfer = "mbank_mtransfer"
        case inteligo = "inteligo"
        case pbacZIpko = "pbac_z_ipko"
        case bnpParibas = "bnp_paribas"
        case creditAgricole = "credit_agricole"
        case toyotaBank = "toyota_bank"
        case bankPekaoSa = "bank_pekao_sa"
        case volkswagenBank = "volkswagen_bank"
        case bankMillennium = "bank_millennium"
        case aliorBank = "alior_bank"
        case boz = "boz"
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Paynow: Codable, Hashable, Sendable {
        public var reference: String?

        public init(
            reference: String? = nil
        ) {
            self.reference = reference
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Paypal: Codable, Hashable, Sendable {
        public var payerEmail: String?
        public var payerId: String?
        public var payerName: String?
        public var sellerProtection: Stripe.Charges.Charge.PaymentMethod.Details.PaypalSellerProtection?
        public var transactionId: String?
    }
}
extension Stripe.Charges.Charge.PaymentMethod.Details {

    public struct PaypalSellerProtection: Codable, Hashable, Sendable {
        public var disputeCategories: [Stripe.Charges.Charge.PaymentMethod.Details.PaypalSellerProtectionDisputeCategory]?
        public var status: Stripe.Charges.Charge.PaymentMethod.Details.PaypalSellerProtectionStatus?

        public init(
            disputeCategories: [Stripe.Charges.Charge.PaymentMethod.Details
                .PaypalSellerProtectionDisputeCategory]? = nil,
            status: Stripe.Charges.Charge.PaymentMethod.Details.PaypalSellerProtectionStatus? = nil
        ) {
            self.disputeCategories = disputeCategories
            self.status = status
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum PaypalSellerProtectionDisputeCategory: String, Codable, Sendable {
        case productNotReceived = "product_not_received"
        case fraudulent
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum PaypalSellerProtectionStatus: String, Codable, Sendable {
        case eligible
        case partiallyEligible = "partially_eligible"
        case notEligible = "not_eligible"
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Pix: Codable, Hashable, Sendable {
        public var bankTransactionId: String?

        public init(
            bankTransactionId: String? = nil
        ) {
            self.bankTransactionId = bankTransactionId
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Promptpay: Codable, Hashable, Sendable {
        public var reference: String?

        public init(
            reference: String? = nil
        ) {
            self.reference = reference
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct SepaDebit: Codable, Hashable, Sendable {
        public var bankCode: String?
        public var branchCode: String?
        public var country: String?
        public var fingerprint: String?
        public var last4: String?
        public var mandate: String?

        public init(
            bankCode: String? = nil,
            branchCode: String? = nil,
            country: String? = nil,
            fingerprint: String? = nil,
            last4: String? = nil,
            mandate: String? = nil
        ) {
            self.bankCode = bankCode
            self.branchCode = branchCode
            self.country = country
            self.fingerprint = fingerprint
            self.last4 = last4
            self.mandate = mandate
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Sofort: Codable, Hashable, Sendable {
        public var bankCode: String?
        public var bankName: String?
        public var bic: String?
        public var country: String?
        public var generatedSepaDebit: String?
        public var generatedSepaDebitMandate: String?
        public var ibanLast4: String?
        public var preferredLanguage: String?
        public var verifiedName: String?

        public init(
            bankCode: String? = nil,
            bankName: String? = nil,
            bic: String? = nil,
            country: String? = nil,
            generatedSepaDebit: String? = nil,
            generatedSepaDebitMandate: String? = nil,
            ibanLast4: String? = nil,
            preferredLanguage: String? = nil,
            verifiedName: String? = nil
        ) {
            self.bankCode = bankCode
            self.bankName = bankName
            self.bic = bic
            self.country = country
            self.generatedSepaDebit = generatedSepaDebit
            self.generatedSepaDebitMandate = generatedSepaDebitMandate
            self.ibanLast4 = ibanLast4
            self.preferredLanguage = preferredLanguage
            self.verifiedName = verifiedName
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct StripeAccount: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct USBankAccount: Codable, Hashable, Sendable {
        public var accountHolderType: Stripe.Charges.Charge.PaymentMethod.Details.USBankAccountAccountHolderType?
        public var accountType: Stripe.Charges.Charge.PaymentMethod.Details.USBankAccount.AccountType?
        public var bankName: String?
        public var fingerprint: String?
        public var last4: String?
        public var routingNumber: String?

        public init(
            accountHolderType: Stripe.Charges.Charge.PaymentMethod.Details
                .USBankAccountAccountHolderType? = nil,
            accountType: Stripe.Charges.Charge.PaymentMethod.Details.USBankAccount.AccountType? =
                nil,
            bankName: String? = nil,
            fingerprint: String? = nil,
            last4: String? = nil,
            routingNumber: String? = nil
        ) {
            self.accountHolderType = accountHolderType
            self.accountType = accountType
            self.bankName = bankName
            self.fingerprint = fingerprint
            self.last4 = last4
            self.routingNumber = routingNumber
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum USBankAccountAccountHolderType: String, Codable, Sendable {
        case individual
        case company
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details.USBankAccount {
    public enum AccountType: String, Codable, Sendable {
        case checking
        case savings
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Wechat: Codable, Hashable, Sendable {
        public init() {}
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct WechatPay: Codable, Hashable, Sendable {
        public var fingerprint: String?
        public var transactionId: String?

        public init(
            fingerprint: String? = nil,
            transactionId: String? = nil
        ) {
            self.fingerprint = fingerprint
            self.transactionId = transactionId
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public struct Zip: Codable, Hashable, Sendable {
        public init() {}
    }
}
