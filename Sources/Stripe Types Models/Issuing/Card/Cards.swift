public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct IssuingCard: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var cencellationReason: IssuingCardCancellationReason?
    public var cardholder: Cardholder?
    public var currency: Stripe.Currency?
    public var expMonth: Int?
    public var expYear: Int?
    public var last4: String?
    public var metadata: [String: String]?
    public var status: IssuingCardStatus?
    public var type: IssuingCardType?
    public var object: String
    public var brand: CardBrand?
    public var created: Date
    public var cvc: String?
    public var livemode: Bool?
    public var number: String?
    @Expandable<IssuingCard, String> public var replacedBy: String?
    @Expandable<IssuingCard, String> public var replacementFor: String?
    public var replacementReason: IssuingCardReplacementReason?
    public var shipping: IssuingCardShipping?
    public var spendingControls: IssuingCardSpendingControls?
    public var wallets: IssuingCardWallets?

    public init(
        id: ID,
        cencellationReason: IssuingCardCancellationReason? = nil,
        cardholder: Cardholder? = nil,
        currency: Stripe.Currency? = nil,
        expMonth: Int? = nil,
        expYear: Int? = nil,
        last4: String? = nil,
        metadata: [String: String]? = nil,
        status: IssuingCardStatus? = nil,
        type: IssuingCardType? = nil,
        object: String,
        brand: CardBrand? = nil,
        created: Date,
        cvc: String? = nil,
        livemode: Bool? = nil,
        number: String? = nil,
        replacedBy: String? = nil,
        replacementFor: String? = nil,
        replacementReason: IssuingCardReplacementReason? = nil,
        shipping: IssuingCardShipping? = nil,
        spendingControls: IssuingCardSpendingControls? = nil,
        wallets: IssuingCardWallets? = nil
    ) {
        self.id = id
        self.cencellationReason = cencellationReason
        self.cardholder = cardholder
        self.currency = currency
        self.expMonth = expMonth
        self.expYear = expYear
        self.last4 = last4
        self.metadata = metadata
        self.status = status
        self.type = type
        self.object = object
        self.brand = brand
        self.created = created
        self.cvc = cvc
        self.livemode = livemode
        self.number = number
        self._replacedBy = Expandable(id: replacedBy)
        self._replacementFor = Expandable(id: replacementFor)
        self.replacementReason = replacementReason
        self.shipping = shipping
        self.spendingControls = spendingControls
        self.wallets = wallets
    }
}

public struct IssuingCardList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [IssuingCard]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [IssuingCard]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}

public struct IssuingCardSpendingControls: Codable, Hashable, Sendable {
    public var allowedCategories: [String]?
    public var blockedCategories: [String]?
    public var spendingLimits: [CardholderSpendingControlSpendingLimit]?
    public var spendingLimitsCurrency: Stripe.Currency?

    public init(
        allowedCategories: [String]? = nil,
        blockedCategories: [String]? = nil,
        spendingLimits: [CardholderSpendingControlSpendingLimit]? = nil,
        spendingLimitsCurrency: Stripe.Currency? = nil
    ) {
        self.allowedCategories = allowedCategories
        self.blockedCategories = blockedCategories
        self.spendingLimits = spendingLimits
        self.spendingLimitsCurrency = spendingLimitsCurrency
    }
}

public enum IssuingCardReplacementReason: String, Codable, Sendable {
    case lost
    case stolen
    case damaged
    case expired
}

public struct IssuingCardShipping: Codable, Hashable, Sendable {
    public var address: Address?
    public var carrier: IssuingCardShippingCarrier?
    public var customs: [IssuingCardShippingCustom]?
    public var eta: Date?
    public var name: String?
    public var phoneNumber: String?
    public var requireSignature: Bool?
    public var service: IssuingCardShippingService?
    public var status: IssuingCardShippingStatus?
    public var trackingNumber: String?
    public var trackingUrl: String?
    public var type: IssuingCardShippingType?

    public init(
        address: Address? = nil,
        carrier: IssuingCardShippingCarrier? = nil,
        customs: [IssuingCardShippingCustom]? = nil,
        eta: Date? = nil,
        name: String? = nil,
        phoneNumber: String? = nil,
        requireSignature: Bool? = nil,
        service: IssuingCardShippingService? = nil,
        status: IssuingCardShippingStatus? = nil,
        trackingNumber: String? = nil,
        trackingUrl: String? = nil,
        type: IssuingCardShippingType? = nil
    ) {
        self.address = address
        self.carrier = carrier
        self.customs = customs
        self.eta = eta
        self.name = name
        self.phoneNumber = phoneNumber
        self.requireSignature = requireSignature
        self.service = service
        self.status = status
        self.trackingNumber = trackingNumber
        self.trackingUrl = trackingUrl
        self.type = type
    }
}

public struct IssuingCardShippingCustom: Codable, Hashable, Sendable {
    public var eoriNumber: String?

    public init(
        eoriNumber: String? = nil
    ) {
        self.eoriNumber = eoriNumber
    }
}

public enum IssuingCardShippingCarrier: String, Codable, Sendable {
    case fedex
    case usps
    case royalMail = "royal_mail"
    case dhl
}

public enum IssuingCardShippingService: String, Codable, Sendable {
    case standard
    case express
    case priority
}

public enum IssuingCardShippingStatus: String, Codable, Sendable {
    case pending
    case shipped
    case delivered
    case returned
    case failure
    case canceled
}

public enum IssuingCardShippingType: String, Codable, Sendable {
    case bulk
    case individual
}

public enum IssuingCardStatus: String, Codable, Sendable {
    case active
    case inactive
    case canceled
}

public enum IssuingCardType: String, Codable, Sendable {
    case virtual
    case physical
}

public enum IssuingCardCancellationReason: String, Codable, Sendable {
    case lost
    case stolen
    case designRejected = "design_rejected"
}

public struct IssuingCardWallets: Codable, Hashable, Sendable {
    public var applePay: IssuingCardWalletsApplePay?
    public var googlePay: IssuingCardWalletsGooglePay?
    public var primaryAccountIdentifier: String?

    public init(
        applePay: IssuingCardWalletsApplePay? = nil,
        googlePay: IssuingCardWalletsGooglePay? = nil,
        primaryAccountIdentifier: String? = nil
    ) {
        self.applePay = applePay
        self.googlePay = googlePay
        self.primaryAccountIdentifier = primaryAccountIdentifier
    }
}

public struct IssuingCardWalletsApplePay: Codable, Hashable, Sendable {
    public var eligible: Bool?
    public var ineligibleReason: IssuingCardWalletsApplePayIneligibleReason?

    public init(
        eligible: Bool? = nil,
        ineligibleReason: IssuingCardWalletsApplePayIneligibleReason? = nil
    ) {
        self.eligible = eligible
        self.ineligibleReason = ineligibleReason
    }
}

public enum IssuingCardWalletsApplePayIneligibleReason: String, Codable, Sendable {
    case unsupportedReason = "unsupported_reason"
    case missingAgreement = "missing_agreement"
    case missingCardholderContact = "missing_cardholder_contact"
}

public struct IssuingCardWalletsGooglePay: Codable, Hashable, Sendable {
    public var eligible: Bool?
    public var ineligibleReason: IssuingCardWalletsGooglePayIneligibleReason?

    public init(
        eligible: Bool? = nil,
        ineligibleReason: IssuingCardWalletsGooglePayIneligibleReason? = nil
    ) {
        self.eligible = eligible
        self.ineligibleReason = ineligibleReason
    }
}

public enum IssuingCardWalletsGooglePayIneligibleReason: String, Codable, Sendable {
    case unsupportedReason = "unsupported_reason"
    case missingAgreement = "missing_agreement"
    case missingCardholderContact = "missing_cardholder_contact"
}
