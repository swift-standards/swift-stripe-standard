public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Credit.Balance {
    public struct Transaction: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var object: String
        public var created: Date
        public var credit: Credit?
        public var creditGrant: String?
        public var debit: Debit?
        public var effectiveAt: Date?
        public var livemode: Bool?
        public var testClock: String?
        public var type: TransactionType?

        public init(
            id: ID,
            object: String,
            created: Date,
            credit: Credit? = nil,
            creditGrant: String? = nil,
            debit: Debit? = nil,
            effectiveAt: Date? = nil,
            livemode: Bool? = nil,
            testClock: String? = nil,
            type: TransactionType? = nil
        ) {
            self.id = id
            self.object = object
            self.created = created
            self.credit = credit
            self.creditGrant = creditGrant
            self.debit = debit
            self.effectiveAt = effectiveAt
            self.livemode = livemode
            self.testClock = testClock
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case object
            case created
            case credit
            case creditGrant = "credit_grant"
            case debit
            case effectiveAt = "effective_at"
            case livemode
            case testClock = "test_clock"
            case type
        }
    }

    public enum TransactionType: String, Codable, Sendable {
        case credit
        case debit
    }
}

extension Stripe.Billing.Credit.Balance.Transaction {
    public struct Credit: Codable, Hashable, Sendable {
        public var amount: Amount?

        public init(amount: Amount? = nil) {
            self.amount = amount
        }

        private enum CodingKeys: String, CodingKey {
            case amount
        }
    }

    public struct Debit: Codable, Hashable, Sendable {
        public var amount: Amount?
        public var creditsApplied: CreditsApplied?
        public var type: DebitType?

        public init(
            amount: Amount? = nil,
            creditsApplied: CreditsApplied? = nil,
            type: DebitType? = nil
        ) {
            self.amount = amount
            self.creditsApplied = creditsApplied
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case amount
            case creditsApplied = "credits_applied"
            case type
        }
    }

    public enum DebitType: String, Codable, Sendable {
        case creditsApplied = "credits_applied"
    }
}

extension Stripe.Billing.Credit.Balance.Transaction {
    public struct Amount: Codable, Hashable, Sendable {
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

    public struct CreditsApplied: Codable, Hashable, Sendable {
        public var invoice: Stripe.Billing.Invoice.ID?
        public var invoiceLineItem: String?

        public init(
            invoice: Stripe.Billing.Invoice.ID? = nil,
            invoiceLineItem: String? = nil
        ) {
            self.invoice = invoice
            self.invoiceLineItem = invoiceLineItem
        }

        private enum CodingKeys: String, CodingKey {
            case invoice
            case invoiceLineItem = "invoice_line_item"
        }
    }
}

extension Stripe.Billing.Credit.Balance.Transaction {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Billing.Credit.Balance.Transaction]?
        public var hasMore: Bool?
        public var url: String?

        public init(
            object: String,
            data: [Stripe.Billing.Credit.Balance.Transaction]? = nil,
            hasMore: Bool? = nil,
            url: String? = nil
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
        }

        private enum CodingKeys: String, CodingKey {
            case object
            case data
            case hasMore = "has_more"
            case url
        }
    }
}
