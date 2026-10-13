import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct SetupAttemptPaymentMethodDetails: Codable, Hashable, Sendable {
    public var acssDebit: SetupAttemptPaymentMethodDetailsACSSDebit?
    public var auBecsDebit: SetupAttemptPaymentMethodDetailsAuBecsDebit?
    public var bacsDebit: SetupAttemptPaymentMethodDetailsBacsDebit?
    public var bancontact: SetupAttemptPaymentMethodDetailsBancontact?
    public var blik: SetupAttemptPaymentMethodDetailsBlik?
    public var boleto: SetupAttemptPaymentMethodDetailsBoleto?
    public var card: SetupAttemptPaymentMethodDetailsCard?
    public var cardPresent: SetupAttemptPaymentMethodDetailsCardPresent?
    public var cashapp: StripeSetupAttemptPaymentMethodDetailsCashapp?
    public var ideal: SetupAttemptPaymentMethodDetailsIdeal?
    public var klarna: SetupAttemptPaymentMethodDetailsKlarna?
    public var link: SetupAttemptPaymentMethodDetailsLink?
    public var sepaDebit: SetupAttemptPaymentMethodDetailsSepaDebit?
    public var sofort: SetupAttemptPaymentMethodDetailsSofort?
    public var type: String?
    public var usBankAccount: SetupAttemptPaymentMethodDetailsUSBankAccount?

    public init(
        acssDebit: SetupAttemptPaymentMethodDetailsACSSDebit? = nil,
        auBecsDebit: SetupAttemptPaymentMethodDetailsAuBecsDebit? = nil,
        bacsDebit: SetupAttemptPaymentMethodDetailsBacsDebit? = nil,
        bancontact: SetupAttemptPaymentMethodDetailsBancontact? = nil,
        blik: SetupAttemptPaymentMethodDetailsBlik? = nil,
        boleto: SetupAttemptPaymentMethodDetailsBoleto? = nil,
        card: SetupAttemptPaymentMethodDetailsCard? = nil,
        cardPresent: SetupAttemptPaymentMethodDetailsCardPresent? = nil,
        cashapp: StripeSetupAttemptPaymentMethodDetailsCashapp? = nil,
        ideal: SetupAttemptPaymentMethodDetailsIdeal? = nil,
        klarna: SetupAttemptPaymentMethodDetailsKlarna? = nil,
        link: SetupAttemptPaymentMethodDetailsLink? = nil,
        sepaDebit: SetupAttemptPaymentMethodDetailsSepaDebit? = nil,
        sofort: SetupAttemptPaymentMethodDetailsSofort? = nil,
        type: String? = nil,
        usBankAccount: SetupAttemptPaymentMethodDetailsUSBankAccount? = nil
    ) {
        self.acssDebit = acssDebit
        self.auBecsDebit = auBecsDebit
        self.bacsDebit = bacsDebit
        self.bancontact = bancontact
        self.blik = blik
        self.boleto = boleto
        self.card = card
        self.cardPresent = cardPresent
        self.cashapp = cashapp
        self.ideal = ideal
        self.klarna = klarna
        self.link = link
        self.sepaDebit = sepaDebit
        self.sofort = sofort
        self.type = type
        self.usBankAccount = usBankAccount
    }
}

public struct SetupAttemptPaymentMethodDetailsACSSDebit: Codable, Hashable, Sendable {
    public init() {}
}

public struct SetupAttemptPaymentMethodDetailsAuBecsDebit: Codable, Hashable, Sendable {
    public init() {}
}

public struct SetupAttemptPaymentMethodDetailsBacsDebit: Codable, Hashable, Sendable {
    public init() {}
}

public struct SetupAttemptPaymentMethodDetailsBancontact: Codable, Hashable, Sendable {
    public var bankCode: String?
    public var bankName: String?
    public var bic: String?
    @Expandable<PaymentMethodSepaDebit, String> public var generatedSepaDebit: String?
    @ExpandableOf<Stripe.Mandates.Mandate> public var generatedSepaDebitMandate: Stripe.Mandates.Mandate.ID?
    public var ibanLast4: String?
    public var preferredLanguage: SetupAttemptPaymentMethodDetailsBancontactPreferredLanguage?
    public var verifiedName: String?

    public init(
        bankCode: String? = nil,
        bankName: String? = nil,
        bic: String? = nil,
        generatedSepaDebit: String? = nil,
        generatedSepaDebitMandate: Stripe.Mandates.Mandate.ID? = nil,
        ibanLast4: String? = nil,
        preferredLanguage: SetupAttemptPaymentMethodDetailsBancontactPreferredLanguage? = nil,
        verifiedName: String? = nil
    ) {
        self.bankCode = bankCode
        self.bankName = bankName
        self.bic = bic
        self._generatedSepaDebit = Expandable(id: generatedSepaDebit)
        self._generatedSepaDebitMandate = Expandable(id: generatedSepaDebitMandate)
        self.ibanLast4 = ibanLast4
        self.preferredLanguage = preferredLanguage
        self.verifiedName = verifiedName
    }
}

public enum SetupAttemptPaymentMethodDetailsBancontactPreferredLanguage: String, Codable, Sendable {
    case en
    case de
    case fr
    case nl
}

public struct SetupAttemptPaymentMethodDetailsBlik: Codable, Hashable, Sendable {
    public init() {}
}

public struct SetupAttemptPaymentMethodDetailsBoleto: Codable, Hashable, Sendable {
    public init() {}
}

public struct SetupAttemptPaymentMethodDetailsCard: Codable, Hashable, Sendable {
    public var checks: SetupAttemptPaymentMethodDetailsCardChecks?
    public var threeDSecure: SetupAttemptPaymentMethodDetailsCardThreeDSecure?
}

public struct SetupAttemptPaymentMethodDetailsCardChecks: Codable, Hashable, Sendable {
    public var addressLine1Check: SetupAttemptPaymentMethodDetailsCardCheck?
    public var addressPostalCodeCheck: SetupAttemptPaymentMethodDetailsCardCheck?
    public var cvcCheck: SetupAttemptPaymentMethodDetailsCardCheck?

    public init(
        addressLine1Check: SetupAttemptPaymentMethodDetailsCardCheck? = nil,
        addressPostalCodeCheck: SetupAttemptPaymentMethodDetailsCardCheck? = nil,
        cvcCheck: SetupAttemptPaymentMethodDetailsCardCheck? = nil
    ) {
        self.addressLine1Check = addressLine1Check
        self.addressPostalCodeCheck = addressPostalCodeCheck
        self.cvcCheck = cvcCheck
    }
}

public enum SetupAttemptPaymentMethodDetailsCardCheck: String, Codable, Sendable {
    case pass
    case fail
    case unavailable
    case unchecked
}

public struct SetupAttemptPaymentMethodDetailsCardThreeDSecure: Codable, Hashable, Sendable {
    public var authenticationFlow: SetupAttemptPaymentMethodDetailsCardThreeDSecureAuthenticationFlow?
    public var result: SetupAttemptPaymentMethodDetailsCardThreeDSecureResult?
    public var resultReason: SetupAttemptPaymentMethodDetailsCardThreeDSecureResultReason?
    public var version: String?
}

public enum SetupAttemptPaymentMethodDetailsCardThreeDSecureAuthenticationFlow: String, Codable,
    Sendable
{
    case challenge
    case frictionless
}

public enum SetupAttemptPaymentMethodDetailsCardThreeDSecureResult: String, Codable, Sendable {
    case authenticated
    case attemptAcknowledged = "attempt_acknowledged"
    case exempted
    case notSupported = "not_supported"
    case failed
    case processingError = "processing_error"
}

public enum SetupAttemptPaymentMethodDetailsCardThreeDSecureResultReason: String, Codable, Sendable {
    case cardNotEnrolled = "card_not_enrolled"
    case networkNotSupported = "network_not_supported"
    case abandoned
    case canceled
    case rejected
    case bypassed
    case protocolError = "protocol_error"
}

public struct SetupAttemptPaymentMethodDetailsCardPresent: Codable, Hashable, Sendable {
    @ExpandableOf<Card> public var generatedCard

    public init(
        generatedCard: Card.ID? = nil
    ) {
        self._generatedCard = Expandable(id: generatedCard)
    }
}

public struct StripeSetupAttemptPaymentMethodDetailsCashapp: Codable, Hashable, Sendable {
    public init() {}
}

public struct SetupAttemptPaymentMethodDetailsIdeal: Codable, Hashable, Sendable {
    public var bank: SetupAttemptPaymentMethodDetailsIdealBank?
    public var bic: String?
    @Expandable<PaymentMethodSepaDebit, String> public var generatedSepaDebit: String?
    @ExpandableOf<Stripe.Mandates.Mandate> public var generatedSepaDebitMandate
    public var ibanLast4: String?
    public var verifiedName: String?

    public init(
        bank: SetupAttemptPaymentMethodDetailsIdealBank? = nil,
        bic: String? = nil,
        generatedSepaDebit: String? = nil,
        generatedSepaDebitMandate: Stripe.Mandates.Mandate.ID? = nil,
        ibanLast4: String? = nil,
        verifiedName: String? = nil
    ) {
        self.bank = bank
        self.bic = bic
        self._generatedSepaDebit = Expandable(id: generatedSepaDebit)
        self._generatedSepaDebitMandate = Expandable(id: generatedSepaDebitMandate)
        self.ibanLast4 = ibanLast4
        self.verifiedName = verifiedName
    }
}

public enum SetupAttemptPaymentMethodDetailsIdealBank: String, Codable, Sendable {
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

public struct SetupAttemptPaymentMethodDetailsKlarna: Codable, Hashable, Sendable {
    public init() {}
}

public struct SetupAttemptPaymentMethodDetailsLink: Codable, Hashable, Sendable {
    public init() {}
}

public struct SetupAttemptPaymentMethodDetailsSepaDebit: Codable, Hashable, Sendable {
    public init() {}
}

public struct SetupAttemptPaymentMethodDetailsSofort: Codable, Hashable, Sendable {
    public var bankCode: String?
    public var bankName: String?
    public var bic: String?
    @Expandable<PaymentMethodSepaDebit, String> public var generatedSepaDebit: String?
    @ExpandableOf<Stripe.Mandates.Mandate> public var generatedSepaDebitMandate: Stripe.Mandates.Mandate.ID?
    public var ibanLast4: String?
    public var preferredLanguage: SetupAttemptPaymentMethodDetailsSofortPreferredLanguage?
    public var verifiedName: String?

    public init(
        bankCode: String? = nil,
        bankName: String? = nil,
        bic: String? = nil,
        generatedSepaDebit: String? = nil,
        generatedSepaDebitMandate: Stripe.Mandates.Mandate.ID? = nil,
        ibanLast4: String? = nil,
        preferredLanguage: SetupAttemptPaymentMethodDetailsSofortPreferredLanguage? = nil,
        verifiedName: String? = nil
    ) {
        self.bankCode = bankCode
        self.bankName = bankName
        self.bic = bic
        self._generatedSepaDebit = Expandable(id: generatedSepaDebit)
        self._generatedSepaDebitMandate = Expandable(id: generatedSepaDebitMandate)
        self.ibanLast4 = ibanLast4
        self.preferredLanguage = preferredLanguage
        self.verifiedName = verifiedName
    }
}

public enum SetupAttemptPaymentMethodDetailsSofortPreferredLanguage: String, Codable, Sendable {
    case en
    case de
    case fr
    case nl
}

public struct SetupAttemptPaymentMethodDetailsUSBankAccount: Codable, Hashable, Sendable {
    public init() {}
}
