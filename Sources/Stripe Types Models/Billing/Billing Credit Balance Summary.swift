import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Credit.Balance {
    public struct Summary: Codable, Hashable, Sendable {
        public var object: String
        public var balances: [Balance]?
        public var customer: Stripe.Customers.Customer.ID?
        public var livemode: Bool?

        public init(
            object: String,
            balances: [Balance]? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            livemode: Bool? = nil
        ) {
            self.object = object
            self.balances = balances
            self.customer = customer
            self.livemode = livemode
        }

        private enum CodingKeys: String, CodingKey {
            case object
            case balances
            case customer
            case livemode
        }
    }
}

extension Stripe.Billing.Credit.Balance.Summary {
    public struct Balance: Codable, Hashable, Sendable {
        public var availableBalance: BalanceAmount?
        public var ledgerBalance: BalanceAmount?

        public init(
            availableBalance: BalanceAmount? = nil,
            ledgerBalance: BalanceAmount? = nil
        ) {
            self.availableBalance = availableBalance
            self.ledgerBalance = ledgerBalance
        }

        private enum CodingKeys: String, CodingKey {
            case availableBalance = "available_balance"
            case ledgerBalance = "ledger_balance"
        }
    }

    public struct BalanceAmount: Codable, Hashable, Sendable {
        public var monetary: Monetary?
        public var type: String?

        public init(
            monetary: Monetary? = nil,
            type: String? = nil
        ) {
            self.monetary = monetary
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case monetary
            case type
        }
    }

    public struct Monetary: Codable, Hashable, Sendable {
        public var currency: Stripe.Currency?
        public var value: Int?

        public init(
            currency: Stripe.Currency? = nil,
            value: Int? = nil
        ) {
            self.currency = currency
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case currency
            case value
        }
    }
}

extension Stripe.Billing.Credit.Balance.Summary {
    public struct Filter: Codable, Hashable, Sendable {
        public var type: FilterType
        public var applicabilityScope: ApplicabilityScope?
        public var creditGrant: String?

        public init(
            type: FilterType,
            applicabilityScope: ApplicabilityScope? = nil,
            creditGrant: String? = nil
        ) {
            self.type = type
            self.applicabilityScope = applicabilityScope
            self.creditGrant = creditGrant
        }

        private enum CodingKeys: String, CodingKey {
            case type
            case applicabilityScope = "applicability_scope"
            case creditGrant = "credit_grant"
        }
    }

    public enum FilterType: String, Codable, Sendable {
        case applicabilityScope = "applicability_scope"
        case creditGrant = "credit_grant"
    }

    public struct ApplicabilityScope: Codable, Hashable, Sendable {
        public var priceType: PriceType?
        public var prices: [String]?

        public init(
            priceType: PriceType? = nil,
            prices: [String]? = nil
        ) {
            self.priceType = priceType
            self.prices = prices
        }

        private enum CodingKeys: String, CodingKey {
            case priceType = "price_type"
            case prices
        }
    }

    public enum PriceType: String, Codable, Sendable {
        case metered
    }
}
