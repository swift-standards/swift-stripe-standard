public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct Authorization: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var amount: Int?
    public var approved: Bool?
    public var card: IssuingCard?
    @Expandable<Cardholder, String> public var cardholder: String?
    public var currency: Stripe.Currency?
    public var metadata: [String: String]?
    public var status: AuthorizationStatus?
    public var object: String
    public var amountDetails: AuthorizationAmountDetails?
    public var authorizationMethod: AuthorizationMethod?
    public var balanceTransactions: [Stripe.Balance.Transaction]?
    public var created: Date
    public var livemode: Bool?
    public var merchantAmount: Int?
    public var merchantCurrency: Stripe.Currency?
    public var merchantData: AuthorizationMerchantData?
    public var networkData: AuthorizationNetworkData?
    public var pendingRequest: AuthorizationPendingRequest?
    public var requestHistory: [AuthorizationRequestHistory]?
    public var transactions: [Transaction]?
    public var verificationData: AuthorizationVerificationData?
    public var wallet: AuthorizationWallet?

    public init(
        id: ID,
        amount: Int? = nil,
        approved: Bool? = nil,
        card: IssuingCard? = nil,
        cardholder: String? = nil,
        currency: Stripe.Currency? = nil,
        metadata: [String: String]? = nil,
        status: AuthorizationStatus? = nil,
        object: String,
        amountDetails: AuthorizationAmountDetails? = nil,
        authorizationMethod: AuthorizationMethod? = nil,
        balanceTransactions: [Stripe.Balance.Transaction]? = nil,
        created: Date,
        livemode: Bool? = nil,
        merchantAmount: Int? = nil,
        merchantCurrency: Stripe.Currency? = nil,
        merchantData: AuthorizationMerchantData? = nil,
        networkData: AuthorizationNetworkData? = nil,
        pendingRequest: AuthorizationPendingRequest? = nil,
        requestHistory: [AuthorizationRequestHistory]? = nil,
        transactions: [Transaction]? = nil,
        verificationData: AuthorizationVerificationData? = nil,
        wallet: AuthorizationWallet? = nil
    ) {
        self.id = id
        self.amount = amount
        self.approved = approved
        self.card = card
        self._cardholder = Expandable(id: cardholder)
        self.currency = currency
        self.metadata = metadata
        self.status = status
        self.object = object
        self.amountDetails = amountDetails
        self.authorizationMethod = authorizationMethod
        self.balanceTransactions = balanceTransactions
        self.created = created
        self.livemode = livemode
        self.merchantAmount = merchantAmount
        self.merchantCurrency = merchantCurrency
        self.merchantData = merchantData
        self.networkData = networkData
        self.pendingRequest = pendingRequest
        self.requestHistory = requestHistory
        self.transactions = transactions
        self.verificationData = verificationData
        self.wallet = wallet
    }
}

public struct AuthorizationAmountDetails: Codable, Hashable, Sendable {
    public var atmFee: Int?

    public init(
        atmFee: Int? = nil
    ) {
        self.atmFee = atmFee
    }
}

public struct AuthorizationPendingRequest: Codable, Hashable, Sendable {
    public var amount: Int?
    public var amountDetails: AuthorizationPendingRequestAmountDetails?
    public var currency: Stripe.Currency?
    public var isAmountControllable: Bool?
    public var merchantAmount: Int?
    public var merchantCurrency: Stripe.Currency?

    public init(
        amount: Int? = nil,
        amountDetails: AuthorizationPendingRequestAmountDetails? = nil,
        currency: Stripe.Currency? = nil,
        isAmountControllable: Bool? = nil,
        merchantAmount: Int? = nil,
        merchantCurrency: Stripe.Currency? = nil
    ) {
        self.amount = amount
        self.amountDetails = amountDetails
        self.currency = currency
        self.isAmountControllable = isAmountControllable
        self.merchantAmount = merchantAmount
        self.merchantCurrency = merchantCurrency
    }
}

public struct AuthorizationPendingRequestAmountDetails: Codable, Hashable, Sendable {
    public var atmFee: Int?

    public init(
        atmFee: Int? = nil
    ) {
        self.atmFee = atmFee
    }
}

public enum AuthorizationMethod: String, Codable, Sendable {
    case keyedIn = "keyed_in"
    case swipe
    case chip
    case contactless
    case online
}

public struct AuthorizationMerchantData: Codable, Hashable, Sendable {
    public var category: String?
    public var categoryCode: String?
    public var city: String?
    public var country: String?
    public var name: String?
    public var networkId: String?
    public var postalCode: String?
    public var state: String?
    public var terminalId: String?

    public init(
        category: String? = nil,
        categoryCode: String? = nil,
        city: String? = nil,
        country: String? = nil,
        name: String? = nil,
        networkId: String? = nil,
        postalCode: String? = nil,
        state: String? = nil,
        terminalId: String? = nil
    ) {
        self.category = category
        self.categoryCode = categoryCode
        self.city = city
        self.country = country
        self.name = name
        self.networkId = networkId
        self.postalCode = postalCode
        self.state = state
        self.terminalId = terminalId
    }
}

public struct AuthorizationNetworkData: Codable, Hashable, Sendable {
    public var acquiringInstitutionId: String?

    public init(
        acquiringInstitutionId: String? = nil
    ) {
        self.acquiringInstitutionId = acquiringInstitutionId
    }
}

public struct AuthorizationRequestHistory: Codable, Hashable, Sendable {
    public var amount: Int?
    public var amountDetails: AuthorizationRequestHistoryAmountDetails?
    public var approved: Bool?
    public var created: Date
    public var currency: Stripe.Currency?
    public var merchantAmount: Int?
    public var merchantCurrency: Stripe.Currency?
    public var reason: AuthorizationRequestHistoryReason?

    public init(
        amount: Int? = nil,
        amountDetails: AuthorizationRequestHistoryAmountDetails? = nil,
        approved: Bool? = nil,
        created: Date,
        currency: Stripe.Currency? = nil,
        merchantAmount: Int? = nil,
        merchantCurrency: Stripe.Currency? = nil,
        reason: AuthorizationRequestHistoryReason? = nil
    ) {
        self.amount = amount
        self.amountDetails = amountDetails
        self.approved = approved
        self.created = created
        self.currency = currency
        self.merchantAmount = merchantAmount
        self.merchantCurrency = merchantCurrency
        self.reason = reason
    }
}

public struct AuthorizationRequestHistoryAmountDetails: Codable, Hashable, Sendable {
    public var atmFee: Int?

    public init(
        atmFee: Int? = nil
    ) {
        self.atmFee = atmFee
    }
}

public enum AuthorizationRequestHistoryReason: String, Codable, Sendable {
    case accountDisabled = "account_disabled"
    case spendingControls = "spending_controls"
    case cardActive = "card_active"
    case cardInactive = "card_inactive"
    case cardholderInactive = "cardholder_inactive"
    case insufficientFunds = "insufficient_funds"
    case cardholderVerificationRequired = "cardholder_verification_required"
    case notAllowed = "not_allowed"
    case suspectedFraud = "suspected_fraud"
    case webhookApproved = "webhook_approved"
    case webhookDeclined = "webhook_declined"
    case webhookTimeout = "webhook_timeout"
    case webhookError = "webhook_error"
    case verificationFailed = "verification_failed"
}

public enum AuthorizationStatus: String, Codable, Sendable {
    case pending
    case reversed
    case closed
}

public struct AuthorizationVerificationData: Codable, Hashable, Sendable {
    public var addressLine1Check: AuthorizationVerificationDataCheck?
    public var addressPostalCodeCheck: AuthorizationVerificationDataCheck?
    public var cvcCheck: AuthorizationVerificationDataCheck?
    public var expiryCheck: AuthorizationVerificationDataCheck?

    public init(
        addressLine1Check: AuthorizationVerificationDataCheck? = nil,
        addressPostalCodeCheck: AuthorizationVerificationDataCheck? = nil,
        cvcCheck: AuthorizationVerificationDataCheck? = nil,
        expiryCheck: AuthorizationVerificationDataCheck? = nil
    ) {
        self.addressLine1Check = addressLine1Check
        self.addressPostalCodeCheck = addressPostalCodeCheck
        self.cvcCheck = cvcCheck
        self.expiryCheck = expiryCheck
    }
}

public enum AuthorizationVerificationDataCheck: String, Codable, Sendable {
    case match
    case mismatch
    case notProvided = "not_provided"
}

public enum AuthorizationWallet: String, Codable, Sendable {
    case applePay = "apple_pay"
    case googlePay = "google_pay"
    case samsungPay = "samsung_pay"
}

public struct AuthorizationList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [Authorization]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [Authorization]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}
