import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct CashBalance: Codable, Hashable, Sendable {
    public var object: String
    public var available: [String: Int]?
    public var customer: Stripe.Customers.Customer.ID?
    public var livemode: Bool?
    public var settings: CashBalanceSettings?

    public init(
        object: String,
        available: [String: Int]? = nil,
        customer: Stripe.Customers.Customer.ID? = nil,
        livemode: Bool? = nil,
        settings: CashBalanceSettings? = nil
    ) {
        self.object = object
        self.available = available
        self.customer = customer
        self.livemode = livemode
        self.settings = settings
    }
}

public struct CashBalanceSettings: Codable, Hashable, Sendable {
    public var reconciliationMode: String?
    public var usingMerchantDefault: Bool?

    public init(
        reconciliationMode: String? = nil,
        usingMerchantDefault: Bool? = nil
    ) {
        self.reconciliationMode = reconciliationMode
        self.usingMerchantDefault = usingMerchantDefault
    }
}
