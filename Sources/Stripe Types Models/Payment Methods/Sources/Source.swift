public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct Source: Codable, Hashable, Sendable {
    public typealias ID = Tagged<Self, String>

    public var id: ID
    public var object: String
    public var amount: Int?
    public var clientSecret: String?
    public var codeVerification: StripeSourceCodeVerification?
    public var created: Date
    public var currency: Stripe.Currency?
    public var customer: Stripe.Customers.Customer.ID?
    public var flow: StripeSourceFlow?
    public var livemode: Bool?
    public var metadata: [String: String]?
    public var owner: StripeSourceOwner?
    public var receiver: StripeSourceReceiver?
    public var redirect: StripeSourceRedirect?
    public var statementDescriptor: Stripe.StatementDescriptor?
    public var status: StripeSourceStatus?
    public var type: StripeSourceType?
    public var usage: StripeSourceUsage?

    public var achCreditTransfer: StripeSourceACHCreditTransfer?
    public var achDebit: StripeSourceACHDebit?
    public var alipay: StripeSourceAlipay?
    public var bancontact: StripeSourceBancontact?
    public var card: StripeSourceCard?
    public var cardPresent: StripeSourceCardPresent?
    public var eps: StripeSourceEPS?
    public var giropay: StripeSourceGiropay?
    public var ideal: StripeSourceIDEAL?
    public var multibanco: StripeSourceMultibanco?
    public var p24: StripeSourceP24?
    public var sepaDebit: StripeSourceSepaDebit?
    public var sofort: StripeSourceSofort?
    public var threeDSecure: StripeSourceThreeDSecure?
    public var wechat: StripeSourceWechat?
}

public struct StripeSourceCodeVerification: Codable, Hashable, Sendable {
    public var attemptsRemaining: Int?
    public var status: StripeSourceCodeVerificationStatus?
}

public enum StripeSourceCodeVerificationStatus: String, Codable, Sendable {
    case pending
    case succeeded
    case failed
}

public enum StripeSourceFlow: String, Codable, Sendable {
    case redirect
    case receiver
    case codeVerification = "code_verification"
    case none
}

public struct StripeSourceOwner: Codable, Hashable, Sendable {
    public var address: Address?
    public var email: String?
    public var name: String?
    public var phone: String?
    public var verifiedAddress: Address?
    public var verifiedEmail: String?
    public var verifiedName: String?
    public var verifiedPhone: String?
}

public struct StripeSourceReceiver: Codable, Hashable, Sendable {
    public var address: String?
    public var amountCharged: Int?
    public var amountReceived: Int?
    public var amountReturned: Int?
    public var refundAttributesMethod: StripeSourceReceiverRefundAttributesMethod?
    public var refundAttributesStatus: StripeSourceReceiverRefundAttributesStatus?
}

public enum StripeSourceReceiverRefundAttributesMethod: String, Codable, Sendable {
    case email
    case manual
    case none
}

public enum StripeSourceReceiverRefundAttributesStatus: String, Codable, Sendable {
    case missing
    case requested
    case available
}

public struct StripeSourceRedirect: Codable, Hashable, Sendable {
    public var failureReason: StripeSourceRedirectFailureReason?
    public var returnUrl: String?
    public var status: StripeSourceRedirectReason?
    public var url: String?
}

public enum StripeSourceRedirectFailureReason: String, Codable, Sendable {
    case userAbort = "user_abort"
    case declined
    case processingError = "processing_error"
    case failed
}

public enum StripeSourceRedirectReason: String, Codable, Sendable {
    case pending
    case succeeded
    case notRequired = "not_required"
    case failed
}

public enum StripeSourceStatus: String, Codable, Sendable {
    case canceled
    case chargeable
    case consumed
    case failed
    case pending
}

public enum StripeSourceType: String, Codable, Sendable {
    case achCreditTransfer = "ach_credit_transfer"
    case achDebit = "ach_debit"
    case alipay
    case bancontact
    case card
    case cardPresent = "card_present"
    case eps
    case giropay
    case ideal
    case multibanco
    case p24
    case sepaDebit = "sepa_debit"
    case sofort
    case threeDSecure = "three_d_secure"
    case wechat
}

public enum StripeSourceUsage: String, Codable, Sendable {
    case reusable
    case singleUse = "single_use"
}

public struct StripeSourceACHCreditTransfer: Codable, Hashable, Sendable {
    public var accountNumber: String?
    public var bankName: String?
    public var fingerprint: String?
    public var routingNumber: String?
    public var swiftCode: String?
}

public struct StripeSourceACHDebit: Codable, Hashable, Sendable {
    public var bankName: String?
    public var country: String?
    public var fingerprint: String?
    public var last4: String?
    public var routingNumber: String?
    public var type: String?
}

public struct StripeSourceAlipay: Codable, Hashable, Sendable {
    public var nativeUrl: String?
    public var statementDescriptor: Stripe.StatementDescriptor?
}

public struct StripeSourceBancontact: Codable, Hashable, Sendable {
    public var bankCode: String?
    public var bankName: String?
    public var bic: String?
    public var ibnLast4: String?
    public var preferredLanguage: String?
}

public struct StripeSourceCard: Codable, Hashable, Sendable {
    public var addressLine1Check: String?
    public var addressZipCheck: String?
    public var brand: CardBrand?
    public var country: String?
    public var cvcCheck: String?
    public var dynamicLast4: String?
    public var expMonth: Int?
    public var expYear: Int?
    public var fingerprint: String?
    public var funding: CardFundingType?
    public var last4: String?
    public var name: String?
    public var threeDSecure: String?
    public var tokenizationMethod: String?
}

public struct StripeSourceCardPresent: Codable, Hashable, Sendable {
    public var applicationCryptogram: String?
    public var applicationPreferredName: String?
    public var authorizationCode: String?
    public var authorizationResponseCode: String?
    public var brand: CardBrand?
    public var country: String?
    public var cvmType: String?
    public var dataType: String?
    public var dedicatedFileName: String?
    public var emvAuthdata: String?
    public var evidenceCustomerSignature: String?
    public var evidenceTransactionCertificate: String?
    public var expMonth: Int?
    public var expyear: Int?
    public var fingerprint: String?
    public var funding: CardFundingType?
    public var last4: String?
    public var posDeviceId: String?
    public var posEntryMode: String?
    public var readMethod: String?
    public var reader: String?
    public var terminalVerificationResults: String?
    public var transactionStatusInformation: String?
}

public struct StripeSourceEPS: Codable, Hashable, Sendable {
}

public struct StripeSourceGiropay: Codable, Hashable, Sendable {
    public var bankCode: String?
    public var bic: String?
    public var bankName: String?
}

public struct StripeSourceIDEAL: Codable, Hashable, Sendable {
    public var bank: String?
    public var bic: String?
    public var ibanLast4: String?
}

public struct StripeSourceMultibanco: Codable, Hashable, Sendable {
    public var entity: String?
    public var reference: String?
}

public struct StripeSourceP24: Codable, Hashable, Sendable {
    public var reference: String?
}

public struct StripeSourceSepaDebit: Codable, Hashable, Sendable {
    public var bankCode: String?
    public var branchCode: String?
    public var country: String?
    public var fingerprint: String?
    public var last4: String?
    public var mandateReference: String?
    public var mandateUrl: String?
}

public struct StripeSourceSofort: Codable, Hashable, Sendable {
    public var bankCode: String?
    public var bankName: String?
    public var bic: String?
    public var country: String?
    public var ibanLast4: String?
    public var verifiedName: String?
}

public struct StripeSourceThreeDSecure: Codable, Hashable, Sendable {
    public var addressLine1Check: String?
    public var addressZipCheck: String?
    public var authenticated: Bool?
    public var brand: CardBrand?
    public var card: String?
    public var country: String?
    public var customer: Stripe.Customers.Customer.ID?
    public var cvcCheck: String?
    public var dynamicLast4: String?
    public var expMonth: Int?
    public var expYear: Int?
    public var fingerprint: String?
    public var funding: CardFundingType?
    public var last4: String?
    public var threedSecure: StripeSourceThreeDSecureSupportStatus?
    public var tokenizationMethod: CardTokenizedMethod?
}

public enum StripeSourceThreeDSecureSupportStatus: String, Codable, Sendable {
    case notSupported = "not_supported"
    case required
    case recommended
    case optional
}

public struct StripeSourceWechat: Codable, Hashable, Sendable {
}

public struct StripeSourcesList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [StripePaymentSource]?
}

extension StripeSourcesList {
    public var bankAccounts: [BankAccount]? {
        return data?.compactMap { $0.bankAccount }
    }

    public var cards: [Card]? {
        return data?.compactMap { $0.card }
    }

    public var sources: [Source]? {
        return data?.compactMap { $0.source }
    }
}
