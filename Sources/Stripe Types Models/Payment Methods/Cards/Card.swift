public import Stripe_Types_Shared
public import Tagged

public struct Card: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var addressCity: String?
    public var addressCountry: String?
    public var addressLine1: String?
    public var addressLine2: String?
    public var addressState: String?
    public var addressZip: String?
    public var addressZipCheck: CardValidationCheck?
    public var brand: CardBrand?
    public var country: String?
    @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
    public var cvcCheck: CardValidationCheck?
    public var defaultForCurrency: Bool?
    public var expMonth: Int?
    public var expYear: Int?
    public var fingerprint: String?
    public var funding: CardFundingType?
    public var last4: String?
    public var metadata: [String: String]?
    public var name: String?
    public var object: String
    @ExpandableOf<Stripe.Connect.Account> public var account: Stripe.Connect.Account.ID?
    public var addressLine1Check: CardValidationCheck?
    public var availablePayoutMethods: [String]?
    public var currency: Stripe.Currency?
    public var dynamicLast4: String?
    public var tokenizationMethod: CardTokenizedMethod?
    public var wallet: CardWallet?

    public init(
        id: ID,
        addressCity: String? = nil,
        addressCountry: String? = nil,
        addressLine1: String? = nil,
        addressLine2: String? = nil,
        addressState: String? = nil,
        addressZip: String? = nil,
        addressZipCheck: CardValidationCheck? = nil,
        brand: CardBrand? = nil,
        country: String? = nil,
        customer: Stripe.Customers.Customer.ID? = nil,
        cvcCheck: CardValidationCheck? = nil,
        expMonth: Int? = nil,
        expYear: Int? = nil,
        fingerprint: String? = nil,
        funding: CardFundingType? = nil,
        last4: String? = nil,
        metadata: [String: String]? = nil,
        name: String? = nil,
        object: String,
        account: Stripe.Connect.Account.ID? = nil,
        addressLine1Check: CardValidationCheck? = nil,
        availablePayoutMethods: [String]? = nil,
        currency: Stripe.Currency? = nil,
        defaultForCurrency: Bool? = nil,
        dynamicLast4: String? = nil,
        tokenizationMethod: CardTokenizedMethod? = nil,
        wallet: CardWallet? = nil
    ) {
        self.id = id
        self.addressCity = addressCity
        self.addressCountry = addressCountry
        self.addressLine1 = addressLine1
        self.addressLine2 = addressLine2
        self.addressState = addressState
        self.addressZip = addressZip
        self.addressZipCheck = addressZipCheck
        self.brand = brand
        self.country = country
        self._customer = Expandable(id: customer)
        self.cvcCheck = cvcCheck
        self.expMonth = expMonth
        self.expYear = expYear
        self.fingerprint = fingerprint
        self.funding = funding
        self.last4 = last4
        self.metadata = metadata
        self.name = name
        self.object = object
        self._account = Expandable(id: account)
        self.addressLine1Check = addressLine1Check
        self.availablePayoutMethods = availablePayoutMethods
        self.currency = currency
        self.defaultForCurrency = defaultForCurrency
        self.dynamicLast4 = dynamicLast4
        self.tokenizationMethod = tokenizationMethod
        self.wallet = wallet
    }
}

public enum CardValidationCheck: String, Codable, Sendable {
    case pass
    case fail
    case unavailable
    case unchecked
}

public enum CardBrand: String, Codable, Sendable {
    case americanExpress = "American Express"
    case dinersClub = "Diners Club"
    case discover = "Discover"
    case eftpos = "Eftpos"
    case australia = "Australia"
    case jcb = "JCB"
    case masterCard = "MasterCard"
    case unionPay = "UnionPay"
    case visa = "Visa"
    case unknown = "Unknown"
}

public enum CardFundingType: String, Codable, Sendable {
    case credit
    case debit
    case prepaid
    case unknown
}

public enum CardTokenizedMethod: String, Codable, Sendable {
    case androidPay = "android_pay"
    case applePay = "apple_pay"
    case masterpass
    case visaCheckout = "visa_checkout"
}

public struct CardWallet: Codable, Hashable, Sendable {
    public var applePay: CardWalletApplePay?
    public var type: String?

    public init(
        applePay: CardWalletApplePay? = nil,
        type: String? = nil
    ) {
        self.applePay = applePay
        self.type = type
    }
}

public struct CardWalletApplePay: Codable, Hashable, Sendable {
    public var type: String?

    public init(
        type: String? = nil
    ) {
        self.type = type
    }
}

public struct CardList: Codable, Hashable, Sendable {
    public var object: String
    public var data: [Card]?
    public var hasMore: Bool?
    public var url: String?

    init(
        object: String,
        data: [Card]? = nil,
        hasMore: Bool? = nil,
        url: String? = nil
    ) {
        self.object = object
        self.data = data
        self.hasMore = hasMore
        self.url = url
    }
}
