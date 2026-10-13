public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct PaymentMethodAcssDebit: Codable, Hashable, Sendable {
    public var bankName: String?
    public var fingerprint: String?
    public var institutionNumber: String?
    public var last4: String?
    public var transitNumber: String?

    public init(
        bankName: String? = nil,
        fingerprint: String? = nil,
        institutionNumber: String? = nil,
        last4: String? = nil,
        transitNumber: String? = nil
    ) {
        self.bankName = bankName
        self.fingerprint = fingerprint
        self.institutionNumber = institutionNumber
        self.last4 = last4
        self.transitNumber = transitNumber
    }
}

public struct PaymentMethodAffirm: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodAfterpayClearpay: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodAlipay: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodAuBecsDebit: Codable, Hashable, Sendable {
    public var bsbNumber: String?
    public var fingerprint: String?
    public var last4: String?

    public init(
        bsbNumber: String? = nil,
        fingerprint: String? = nil,
        last4: String? = nil
    ) {
        self.bsbNumber = bsbNumber
        self.fingerprint = fingerprint
        self.last4 = last4
    }
}

public struct PaymentMethodBacsDebit: Codable, Hashable, Sendable {
    public var fingerprint: String?
    public var last4: String?
    public var sortCode: String?

    public init(
        fingerprint: String? = nil,
        last4: String? = nil,
        sortCode: String? = nil
    ) {
        self.fingerprint = fingerprint
        self.last4 = last4
        self.sortCode = sortCode
    }
}

public struct PaymentMethodBancontact: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodBlik: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodBoleto: Codable, Hashable, Sendable {
    public var fingerprint: String?
    public var taxId: String?

    public init(
        fingerprint: String? = nil,
        taxId: String? = nil
    ) {
        self.fingerprint = fingerprint
        self.taxId = taxId
    }
}

public struct PaymentMethodCard: Codable, Hashable, Sendable {
    public var brand: PaymentMethodDetailsCardBrand?
    public var checks: PaymentMethodDetailsCardChecks?
    public var country: String?
    public var expMonth: Int?
    public var expYear: Int?
    public var fingerprint: String?
    public var funding: CardFundingType?
    public var generatedFrom: PaymentMethodCardGeneratedFrom?
    public var last4: String?
    public var networks: PaymentMethodCardNetworks?
    public var threeDSecureUsage: PaymentMethodCardThreeDSecureUsage?
    public var wallet: PaymentMethodCardWallet?
    public var iin: String?

    public init(
        brand: PaymentMethodDetailsCardBrand? = nil,
        checks: PaymentMethodDetailsCardChecks? = nil,
        country: String? = nil,
        expMonth: Int? = nil,
        expYear: Int? = nil,
        fingerprint: String? = nil,
        funding: CardFundingType? = nil,
        generatedFrom: PaymentMethodCardGeneratedFrom? = nil,
        last4: String? = nil,
        networks: PaymentMethodCardNetworks? = nil,
        threeDSecureUsage: PaymentMethodCardThreeDSecureUsage? = nil,
        wallet: PaymentMethodCardWallet? = nil,
        iin: String? = nil
    ) {
        self.brand = brand
        self.checks = checks
        self.country = country
        self.expMonth = expMonth
        self.expYear = expYear
        self.fingerprint = fingerprint
        self.funding = funding
        self.generatedFrom = generatedFrom
        self.last4 = last4
        self.networks = networks
        self.threeDSecureUsage = threeDSecureUsage
        self.wallet = wallet
        self.iin = iin
    }
}

public enum PaymentMethodDetailsCardBrand: String, Codable, Sendable {
    case amex
    case diners
    case discover
    case eftposAu = "eftpos_au"
    case jcb
    case mastercard
    case unionpay
    case visa
    case unknown
}

public enum PaymentMethodCardNetwork: String, Codable, Sendable {
    case amex
    case cartesBancaires = "cartes_bancaires"
    case diners
    case discover
    case eftposAu = "eftpos_au"
    case interac
    case jcb
    case mastercard
    case unionpay
    case visa
    case unknown
}

public struct PaymentMethodDetailsCardChecks: Codable, Hashable, Sendable {
    public var addressLine1Check: CardValidationCheck?
    public var addressPostalCodeCheck: CardValidationCheck?
    public var cvcCheck: CardValidationCheck?

    public init(
        addressLine1Check: CardValidationCheck? = nil,
        addressPostalCodeCheck: CardValidationCheck? = nil,
        cvcCheck: CardValidationCheck? = nil
    ) {
        self.addressLine1Check = addressLine1Check
        self.addressPostalCodeCheck = addressPostalCodeCheck
        self.cvcCheck = cvcCheck
    }
}

public struct PaymentMethodCardGeneratedFrom: Codable, Hashable, Sendable {
    public var charge: Stripe.Charges.Charge.ID?
    public var paymentMethodDetails: PaymentMethodCardGeneratedFromPaymentMethodDetails?
    @ExpandableOf<Stripe.Setup.Attempt> public var setupAttempt: Stripe.Setup.Attempt.ID?

    public init(
        charge: Stripe.Charges.Charge.ID? = nil,
        paymentMethodDetails: PaymentMethodCardGeneratedFromPaymentMethodDetails? = nil,
        setupAttempt: Stripe.Setup.Attempt.ID? = nil
    ) {
        self.charge = charge
        self.paymentMethodDetails = paymentMethodDetails
        self._setupAttempt = Expandable(id: setupAttempt)
    }
}

public struct PaymentMethodCardGeneratedFromPaymentMethodDetails: Codable, Hashable, Sendable {
    public var cardPresent: PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresent?
    public var type: String?

    public init(
        cardPresent: PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresent? = nil,
        type: String? = nil
    ) {
        self.cardPresent = cardPresent
        self.type = type
    }
}

public struct PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresent: Codable, Hashable,
    Sendable
{
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
    public var readMethod: PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresentReadMethod?
    public var receipt: PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresentReceipt?

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
        readMethod: PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresentReadMethod? = nil,
        receipt: PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresentReceipt? = nil
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

public enum PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresentReadMethod: String,
    Codable, Sendable
{
    case contactEmv = "contact_emv"
    case contactlessEmv = "contactless_emv"
    case magneticStripeTrack2 = "magnetic_stripe_track2"
    case magneticStripeFallback = "magnetic_stripe_fallback"
    case contactlessMagstripeMode = "contactless_magstripe_mode"
}

public struct PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresentReceipt: Codable,
    Hashable, Sendable
{
    public var accountType: PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresentReceiptAccountType?
    public var applicationCryptogram: String?
    public var applicationPreferredName: String?
    public var authorizationCode: String?
    public var authorizationResponseCode: String?
    public var cardholderVerificationMethod: String?
    public var dedicatedFileName: String?
    public var terminalVerificationResults: String?
    public var transactionStatusInformation: String?

    public init(
        accountType:
            PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresentReceiptAccountType? =
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

public enum PaymentMethodCardGeneratedFromPaymentMethodDetailsCardPresentReceiptAccountType: String,
    Codable, Sendable
{
    case credit
    case checking
    case prepaid
    case unknown
}

public struct PaymentMethodCardNetworks: Codable, Hashable, Sendable {
    public var available: [String]?
    public var preferred: String?

    public init(
        available: [String]? = nil,
        preferred: String? = nil
    ) {
        self.available = available
        self.preferred = preferred
    }
}

public struct PaymentMethodCardThreeDSecureUsage: Codable, Hashable, Sendable {
    public var supported: Bool?

    public init(
        supported: Bool? = nil
    ) {
        self.supported = supported
    }
}

public struct PaymentMethodCardWallet: Codable, Hashable, Sendable {
    public var amexExpressCheckout: PaymentMethodCardWalletAmexExpressCheckout?
    public var applePay: PaymentMethodCardWalletApplePay?
    public var dynamicLast4: String?
    public var googlePay: PaymentMethodCardWalletGooglePay?
    public var masterpass: PaymentMethodCardWalletMasterPass?
    public var samsungPay: PaymentMethodCardWalletSamsungPay?
    public var type: PaymentMethodDetailsCardWalletType?
    public var visaCheckout: PaymentMethodCardWalletVisaCheckout?

    public init(
        amexExpressCheckout: PaymentMethodCardWalletAmexExpressCheckout? = nil,
        applePay: PaymentMethodCardWalletApplePay? = nil,
        dynamicLast4: String? = nil,
        googlePay: PaymentMethodCardWalletGooglePay? = nil,
        masterpass: PaymentMethodCardWalletMasterPass? = nil,
        samsungPay: PaymentMethodCardWalletSamsungPay? = nil,
        type: PaymentMethodDetailsCardWalletType? = nil,
        visaCheckout: PaymentMethodCardWalletVisaCheckout? = nil
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

public struct PaymentMethodCardWalletAmexExpressCheckout: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodCardWalletApplePay: Codable, Hashable, Sendable {
    public var type: String?

    public init(
        type: String? = nil
    ) {
        self.type = type
    }
}

public struct PaymentMethodCardWalletGooglePay: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodCardWalletMasterPass: Codable, Hashable, Sendable {
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

public struct PaymentMethodCardWalletSamsungPay: Codable, Hashable, Sendable {
    public init() {}
}

public enum PaymentMethodDetailsCardWalletType: String, Codable, Sendable {
    case amexExpressCheckout = "amex_express_checkout"
    case applePay = "apple_pay"
    case googlePay = "google_pay"
    case masterpass
    case samsungPay = "samsung_pay"
    case visaCheckout = "visa_checkout"
    case link
}

public struct PaymentMethodCardWalletVisaCheckout: Codable, Hashable, Sendable {
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

public struct PaymentMethodCardPresent: Codable, Hashable, Sendable {
    public var brand: PaymentMethodDetailsCardBrand?
    public var cardholderName: String?
    public var country: String?
    public var expMonth: Int?
    public var expYear: Int?
    public var fingerprint: String?
    public var funding: CardFundingType?
    public var last4: String?
    public var networks: PaymentMethodCardNetworks?
    public var readMethod: PaymentMethodCardPresentReadMethod?

    public init(
        brand: PaymentMethodDetailsCardBrand? = nil,
        cardholderName: String? = nil,
        country: String? = nil,
        expMonth: Int? = nil,
        expYear: Int? = nil,
        fingerprint: String? = nil,
        funding: CardFundingType? = nil,
        last4: String? = nil,
        networks: PaymentMethodCardNetworks? = nil,
        readMethod: PaymentMethodCardPresentReadMethod? = nil
    ) {
        self.brand = brand
        self.cardholderName = cardholderName
        self.country = country
        self.expMonth = expMonth
        self.expYear = expYear
        self.fingerprint = fingerprint
        self.funding = funding
        self.last4 = last4
        self.networks = networks
        self.readMethod = readMethod
    }
}

public enum PaymentMethodCardPresentReadMethod: String, Codable, Sendable {
    case contactEmv = "contact_emv"
    case contactlessEmv = "contactless_emv"
    case magneticStripeTrack2 = "magnetic_stripe_track2"
    case magneticStripeFallback = "magnetic_stripe_fallback"
    case contactlessMagstripeMode = "contactless_magstripe_mode"
}

public struct PaymentMethodCashapp: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodCustomerBalance: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodEps: Codable, Hashable, Sendable {
    public var bank: PaymentMethodEpsBank?

    public init(bank: PaymentMethodEpsBank? = nil) {
        self.bank = bank
    }
}

public enum PaymentMethodEpsBank: String, Codable, Sendable {
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
    case dolomitenbank = "dolomitenbank"
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
    case vrBankBraunau = "vr_bank_braunau"
}

public struct PaymentMethodFpx: Codable, Hashable, Sendable {
    public var bank: PaymentMethodFpxBank?
}

public enum PaymentMethodFpxBank: String, Codable, Sendable {
    case affinBank = "affin_bank"
    case agrobank = "agrobank"
    case allianceBank = "alliance_bank"
    case ambank = "ambank"
    case bankIslam = "bank_islam"
    case bankMuamalat = "bank_muamalat"
    case bankRakyat = "bank_rakyat"
    case bsn = "bsn"
    case cimb = "cimb"
    case hongLeongBank = "hong_leong_bank"
    case hsbc = "hsbc"
    case kfh = "kfh"
    case maybank2u = "maybank2u"
    case ocbc = "ocbc"
    case publicBank = "public_bank"
    case rhb = "rhb"
    case standardChartered = "standard_chartered"
    case uob = "uob"
    case deutscheBank = "deutsche_bank"
    case maybank2e = "maybank2e"
    case pbEnterprise = "pb_enterprise"
    case bankOfChina = "bank_of_china"
}

public struct PaymentMethodGiropay: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodGrabpay: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodIdeal: Codable, Hashable, Sendable {
    public var bank: PaymentMethodIdealBank?
    public var bic: String?

    public init(bank: PaymentMethodIdealBank? = nil, bic: String? = nil) {
        self.bank = bank
        self.bic = bic
    }
}

public enum PaymentMethodIdealBank: String, Codable, Sendable {
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
    case yoursafe
}

public struct PaymentMethodInteractPresent: Codable, Hashable, Sendable {
    public var brand: String?
    public var cardholderName: String?
    public var country: String?
    public var expMonth: Int?
    public var expYear: Int?
    public var fingerprint: String?
    public var funding: CardFundingType?
    public var last4: String?
    public var networks: PaymentMethodCardNetworks?
    public var preferredLocales: [String]?
    public var readMethod: PaymentMethodInteractPresentReadMethod?

    public init(
        brand: String? = nil,
        cardholderName: String? = nil,
        country: String? = nil,
        expMonth: Int? = nil,
        expYear: Int? = nil,
        fingerprint: String? = nil,
        funding: CardFundingType? = nil,
        last4: String? = nil,
        networks: PaymentMethodCardNetworks? = nil,
        preferredLocales: [String]? = nil,
        readMethod: PaymentMethodInteractPresentReadMethod? = nil
    ) {
        self.brand = brand
        self.cardholderName = cardholderName
        self.country = country
        self.expMonth = expMonth
        self.expYear = expYear
        self.fingerprint = fingerprint
        self.funding = funding
        self.last4 = last4
        self.networks = networks
        self.preferredLocales = preferredLocales
        self.readMethod = readMethod
    }
}

public enum PaymentMethodInteractPresentReadMethod: String, Codable, Sendable {
    case contactEmv = "contact_emv"
    case contactlessEmv = "contactless_emv"
    case magneticStripeTrack2 = "magnetic_stripe_track2"
    case magneticStripeFallback = "magnetic_stripe_fallback"
    case contactlessMagstripeMode = "contactless_magstripe_mode"
}

public struct PaymentMethodKlarna: Codable, Hashable, Sendable {
    public var dob: Stripe.Connect.Person.DOB?

    public init(dob: Stripe.Connect.Person.DOB? = nil) {
        self.dob = dob
    }
}

public struct PaymentMethodKonbini: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodLink: Codable, Hashable, Sendable {
    public var email: String?
    public var persistentToken: String?

    public init(email: String? = nil, persistentToken: String? = nil) {
        self.email = email
        self.persistentToken = persistentToken
    }
}

public struct PaymentMethodOXXO: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodP24: Codable, Hashable, Sendable {
    public var bank: PaymentMethodP24Bank?

    public init(bank: PaymentMethodP24Bank? = nil) {
        self.bank = bank
    }
}

public enum PaymentMethodP24Bank: String, Codable, Sendable {
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

public struct PaymentMethodPaynow: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodPix: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodPromptPay: Codable, Hashable, Sendable {
    public init() {}
}

public struct PaymentMethodSepaDebit: Codable, Hashable, Sendable {
    public var bankCode: String?
    public var branchCode: String?
    public var country: String?
    public var fingerprint: String?
    public var generatedFrom: PaymentMethodSepaDebitGeneratedFrom?
    public var last4: String?

    public init(
        bankCode: String? = nil,
        branchCode: String? = nil,
        country: String? = nil,
        fingerprint: String? = nil,
        generatedFrom: PaymentMethodSepaDebitGeneratedFrom? = nil,
        last4: String? = nil
    ) {
        self.bankCode = bankCode
        self.branchCode = branchCode
        self.country = country
        self.fingerprint = fingerprint
        self.generatedFrom = generatedFrom
        self.last4 = last4
    }
}

public struct PaymentMethodSepaDebitGeneratedFrom: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Charges.Charge> public var charge: Stripe.Charges.Charge.ID?
    @ExpandableOf<Stripe.Setup.Attempt> public var setupAttempt: Stripe.Setup.Attempt.ID?

    public init(
        charge: Stripe.Charges.Charge.ID? = nil,
        setupAttempt: Stripe.Setup.Attempt.ID? = nil
    ) {
        self._charge = Expandable(id: charge)
        self._setupAttempt = Expandable(id: setupAttempt)
    }
}

public struct PaymentMethodSofort: Codable, Hashable, Sendable {
    public var country: String?

    public init(country: String? = nil) {
        self.country = country
    }
}

public struct PaymentMethodUSBankAccount: Codable, Hashable, Sendable {
    public var accountHolderType: PaymentMethodUSBankAccountAccountHolderType?
    public var accountType: PaymentMethodUSBankAccountAccountType?
    public var bankName: String?
    public var financialConnectionsAccount: String?
    public var fingerprint: String?
    public var last4: String?
    public var networks: PaymentMethodUSBankAccountNetworks?
    public var routingNumber: String?
    public var statusDetails: PaymentMethodUSBankAccountStatusDetails?

    public init(
        accountHolderType: PaymentMethodUSBankAccountAccountHolderType? = nil,
        accountType: PaymentMethodUSBankAccountAccountType? = nil,
        bankName: String? = nil,
        financialConnectionsAccount: String? = nil,
        fingerprint: String? = nil,
        last4: String? = nil,
        networks: PaymentMethodUSBankAccountNetworks? = nil,
        routingNumber: String? = nil,
        statusDetails: PaymentMethodUSBankAccountStatusDetails? = nil
    ) {
        self.accountHolderType = accountHolderType
        self.accountType = accountType
        self.bankName = bankName
        self.financialConnectionsAccount = financialConnectionsAccount
        self.fingerprint = fingerprint
        self.last4 = last4
        self.networks = networks
        self.routingNumber = routingNumber
        self.statusDetails = statusDetails
    }
}

public enum PaymentMethodUSBankAccountAccountHolderType: String, Codable, Sendable {
    case individual
    case company
}

public enum PaymentMethodUSBankAccountAccountType: String, Codable, Sendable {
    case checking
    case savings
}

public struct PaymentMethodUSBankAccountNetworks: Codable, Hashable, Sendable {
    public var available: [String]?
    public var preferred: String?

    public init(available: [String]? = nil, preferred: String? = nil) {
        self.available = available
        self.preferred = preferred
    }
}

public struct PaymentMethodUSBankAccountStatusDetails: Codable, Hashable, Sendable {
    public var blocked: PaymentMethodUSBankAccountStatusDetailsBlocked?

    public init(blocked: PaymentMethodUSBankAccountStatusDetailsBlocked? = nil) {
        self.blocked = blocked
    }
}

public struct PaymentMethodUSBankAccountStatusDetailsBlocked: Codable, Hashable, Sendable {
    public var network: PaymentMethodUSBankAccountStatusDetailsBlockedNetwork?
    public var reason: PaymentMethodUSBankAccountStatusDetailsBlockedReason?

    public init(
        network: PaymentMethodUSBankAccountStatusDetailsBlockedNetwork? = nil,
        reason: PaymentMethodUSBankAccountStatusDetailsBlockedReason? = nil
    ) {
        self.network = network
        self.reason = reason
    }
}

public enum PaymentMethodUSBankAccountStatusDetailsBlockedNetwork: String, Codable, Sendable {
    case r02 = "R02"
    case r03 = "R03"
    case r04 = "R04"
    case r05 = "R05"
    case r07 = "R07"
    case r08 = "R08"
    case r10 = "R10"
    case r11 = "R11"
    case r16 = "R16"
    case r20 = "R20"
    case r29 = "R29"
    case r31 = "R31"
}

public enum PaymentMethodUSBankAccountStatusDetailsBlockedReason: String, Codable, Sendable {
    case debitNotAuthorized = "debit_not_authorized"
    case bankAccountClosed = "bank_account_closed"
    case bankAccountFrozen = "bank_account_frozen"
    case bankAccountInvalidDetails = "bank_account_invalid_details"
    case bankAccountRestricted = "bank_account_restricted"
    case bankAccountUnusable = "bank_account_unusable"
}

public struct PaymentMethodWechatPay: Codable, Hashable, Sendable {
    public init() {}
}
