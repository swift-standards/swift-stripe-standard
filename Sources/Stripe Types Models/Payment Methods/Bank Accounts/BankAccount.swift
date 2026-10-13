public import Stripe_Types_Shared
public import Tagged

public struct BankAccount: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var accountHolderName: String?
    public var accountHolderType: BankAccountHolderType?
    public var bankName: String?
    public var country: String?
    public var currency: Stripe.Currency?
    @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
    public var fingerprint: String?
    public var last4: String?
    public var metadata: [String: String]?
    public var routingNumber: String?
    public var object: String
    @ExpandableOf<Stripe.Connect.Account> public var account
    public var accountType: String?
    public var availablePayoutMethods: [String]?
    public var status: BankAccountStatus?

    public init(
        id: ID,
        accountHolderName: String? = nil,
        accountHolderType: BankAccountHolderType? = nil,
        bankName: String? = nil,
        country: String? = nil,
        currency: Stripe.Currency? = nil,
        customer: Stripe.Customers.Customer.ID? = nil,
        fingerprint: String? = nil,
        last4: String? = nil,
        metadata: [String: String]? = nil,
        routingNumber: String? = nil,
        object: String,
        account: Stripe.Connect.Account.ID? = nil,
        accountType: String? = nil,
        availablePayoutMethods: [String]? = nil,
        status: BankAccountStatus? = nil
    ) {
        self.id = id
        self.accountHolderName = accountHolderName
        self.accountHolderType = accountHolderType
        self.bankName = bankName
        self.country = country
        self.currency = currency
        self._customer = Expandable(id: customer)
        self.fingerprint = fingerprint
        self.last4 = last4
        self.metadata = metadata
        self.routingNumber = routingNumber
        self.object = object
        self._account = Expandable(id: account)
        self.accountType = accountType
        self.availablePayoutMethods = availablePayoutMethods
        self.status = status
    }
}

public enum BankAccountStatus: String, Codable, Sendable {
    case new
    case validated
    case verified
    case verificationFailed = "verification_failed"
    case errored
}

public enum BankAccountHolderType: String, Codable, Sendable {
    case individual
    case company
}

public struct BankAccountList: Codable, Hashable, Sendable {
    public var object: String
    public var data: [BankAccount]?
    public var hasMore: Bool?
    public var url: String?

    public init(
        object: String,
        data: [BankAccount]? = nil,
        hasMore: Bool? = nil,
        url: String? = nil
    ) {
        self.object = object
        self.data = data
        self.hasMore = hasMore
        self.url = url
    }
}
