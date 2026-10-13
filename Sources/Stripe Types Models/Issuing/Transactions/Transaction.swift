public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct Transaction: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var amount: Int?
    @ExpandableOf<Authorization> public var authorization
    @Expandable<IssuingCard, String> public var card: String?
    @ExpandableOf<Cardholder> public var cardholder
    public var currency: Stripe.Currency?
    public var metadata: [String: String]?
    public var type: TransactionType?
    public var object: String
    public var amountDetails: TransactionAmountDetails?
    @ExpandableOf<Stripe.Balance.Transaction> public var balanceTransaction: Stripe.Balance.Transaction.ID?
    public var created: Date
    @ExpandableOf<IssuingDispute> public var dispute
    public var livemode: Bool?
    public var merchantAmount: Int?
    public var merchantCurrency: Stripe.Currency?
    public var merchantData: AuthorizationMerchantData?
    public var purchaseDetails: TransactionPurchaseDetails?
    public var wallet: TransactionWallet?

    public init(
        id: ID,
        amount: Int? = nil,
        authorization: Authorization.ID? = nil,
        card: String? = nil,
        cardholder: Cardholder.ID? = nil,
        currency: Stripe.Currency? = nil,
        metadata: [String: String]? = nil,
        type: TransactionType? = nil,
        object: String,
        amountDetails: TransactionAmountDetails? = nil,
        balanceTransaction: Stripe.Balance.Transaction.ID? = nil,
        created: Date,
        dispute: IssuingDispute.ID? = nil,
        livemode: Bool? = nil,
        merchantAmount: Int? = nil,
        merchantCurrency: Stripe.Currency? = nil,
        merchantData: AuthorizationMerchantData? = nil,
        purchaseDetails: TransactionPurchaseDetails? = nil,
        wallet: TransactionWallet? = nil
    ) {
        self.id = id
        self.amount = amount
        self._authorization = Expandable(id: authorization)
        self._card = Expandable(id: card)
        self._cardholder = Expandable(id: cardholder)
        self.currency = currency
        self.metadata = metadata
        self.type = type
        self.object = object
        self.amountDetails = amountDetails
        self._balanceTransaction = Expandable(id: balanceTransaction)
        self.created = created
        self._dispute = Expandable(id: dispute)
        self.livemode = livemode
        self.merchantAmount = merchantAmount
        self.merchantCurrency = merchantCurrency
        self.merchantData = merchantData
        self.purchaseDetails = purchaseDetails
        self.wallet = wallet
    }
}

public struct TransactionAmountDetails: Codable, Hashable, Sendable {
    public var atmFee: Int?

    public init(
        atmFee: Int? = nil
    ) {
        self.atmFee = atmFee
    }
}

public struct TransactionList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [Transaction]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [Transaction]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}

public enum TransactionType: String, Codable, Sendable {
    case capture
    case refund
}

public struct TransactionPurchaseDetails: Codable, Hashable, Sendable {
    public var flight: TransactionPurchaseDetailsFlight?
    public var fuel: TransactionPurchaseDetailsFuel?
    public var lodging: TransactionPurchaseDetailsLodging?
    public var receipt: [TransactionPurchaseDetailsReceipt]?
    public var reference: String?

    public init(
        flight: TransactionPurchaseDetailsFlight? = nil,
        fuel: TransactionPurchaseDetailsFuel? = nil,
        lodging: TransactionPurchaseDetailsLodging? = nil,
        receipt: [TransactionPurchaseDetailsReceipt]? = nil,
        reference: String? = nil
    ) {
        self.flight = flight
        self.fuel = fuel
        self.lodging = lodging
        self.receipt = receipt
        self.reference = reference
    }
}

public struct TransactionPurchaseDetailsFlight: Codable, Hashable, Sendable {
    public var departureAt: Int?
    public var passengerName: String?
    public var refundable: Bool?
    public var segments: [TransactionPurchaseDetailsFlightSegment]?
    public var travelAgency: String?

    public init(
        departureAt: Int? = nil,
        passengerName: String? = nil,
        refundable: Bool? = nil,
        segments: [TransactionPurchaseDetailsFlightSegment]? = nil,
        travelAgency: String? = nil
    ) {
        self.departureAt = departureAt
        self.passengerName = passengerName
        self.refundable = refundable
        self.segments = segments
        self.travelAgency = travelAgency
    }
}

public struct TransactionPurchaseDetailsFlightSegment: Codable, Hashable, Sendable {
    public var arrivalAirportCode: String?
    public var carrier: String?
    public var departureAirportCode: String?
    public var flightNumber: String?
    public var serviceCLass: String?
    public var stopoverAllowed: Bool?

    public init(
        arrivalAirportCode: String? = nil,
        carrier: String? = nil,
        departureAirportCode: String? = nil,
        flightNumber: String? = nil,
        serviceCLass: String? = nil,
        stopoverAllowed: Bool? = nil
    ) {
        self.arrivalAirportCode = arrivalAirportCode
        self.carrier = carrier
        self.departureAirportCode = departureAirportCode
        self.flightNumber = flightNumber
        self.serviceCLass = serviceCLass
        self.stopoverAllowed = stopoverAllowed
    }
}

public struct TransactionPurchaseDetailsFuel: Codable, Hashable, Sendable {
    public var type: TransactionPurchaseDetailsFuelType?
    public var unit: TransactionPurchaseDetailsFuelUnit?
    public var unitCostDecimal: String?
    public var volumeDecimal: String?

    public init(
        type: TransactionPurchaseDetailsFuelType? = nil,
        unit: TransactionPurchaseDetailsFuelUnit? = nil,
        unitCostDecimal: String? = nil,
        volumeDecimal: String? = nil
    ) {
        self.type = type
        self.unit = unit
        self.unitCostDecimal = unitCostDecimal
        self.volumeDecimal = volumeDecimal
    }
}

public enum TransactionPurchaseDetailsFuelType: String, Codable, Sendable {
    case diesel
    case unleadedPlus = "unleaded_plus"
    case unleadedRegular = "unleaded_regular"
    case unleadedSuper = "unleaded_super"
    case other
}

public enum TransactionPurchaseDetailsFuelUnit: String, Codable, Sendable {
    case usGallon = "us_gallon"
    case liter
}

public struct TransactionPurchaseDetailsLodging: Codable, Hashable, Sendable {
    public var checkInAt: Int?
    public var nights: Int?

    public init(
        checkInAt: Int? = nil,
        nights: Int? = nil
    ) {
        self.checkInAt = checkInAt
        self.nights = nights
    }
}

public struct TransactionPurchaseDetailsReceipt: Codable, Hashable, Sendable {
    public var description: String?
    public var quantity: Decimal?
    public var total: Int?
    public var unitCost: Int?

    public init(
        description: String? = nil,
        quantity: Decimal? = nil,
        total: Int? = nil,
        unitCost: Int? = nil
    ) {
        self.description = description
        self.quantity = quantity
        self.total = total
        self.unitCost = unitCost
    }
}

public enum TransactionWallet: String, Codable, Sendable {
    case applePay = "apple_pay"
    case googlePay = "google_pay"
    case samsungPay = "samsung_pay"
}
