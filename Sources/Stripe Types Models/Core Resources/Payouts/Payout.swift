public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Payouts {
    public struct Payout: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var amount: Int?
        public var arrivalDate: Date?
        public var currency: Stripe.Currency?
        public var description: String?
        public var metadata: [String: String]?
        public var statementDescriptor: Stripe.StatementDescriptor?
        public var status: Stripe.Payouts.Payout.Status?
        public var object: String
        public var automatic: Bool?
        @ExpandableOf<Stripe.Balance.Transaction> public var balanceTransaction: Stripe.Balance.Transaction.ID?
        public var created: Date
        @DynamicExpandable<Card, BankAccount> public var destination: String?
        @ExpandableOf<Stripe.Balance.Transaction> public var failureBalanceTransaction: Stripe.Balance.Transaction.ID?
        public var failureCode: Stripe.Payouts.Payout.FailureCode?
        public var failureMessage: String?
        public var livemode: Bool?
        public var method: Stripe.Payouts.Payout.Method?
        @ExpandableOf<Stripe.Payouts.Payout> public var originalpayout: Stripe.Payouts.Payout.ID?
        public var reconciliationStatus: Stripe.Payouts.Payout.ReconciliationStatus?
        @ExpandableOf<Stripe.Payouts.Payout> public var reversedBy: Stripe.Payouts.Payout.ID?
        public var sourceType: Stripe.Payouts.Payout.SourceType?
        public var type: Stripe.Payouts.Payout.`Type`?

        public init(
            id: ID,
            amount: Int? = nil,
            arrivalDate: Date? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            metadata: [String: String]? = nil,
            statementDescriptor: Stripe.StatementDescriptor? = nil,
            status: Stripe.Payouts.Payout.Status? = nil,
            object: String,
            automatic: Bool? = nil,
            balanceTransaction: Stripe.Balance.Transaction.ID? = nil,
            created: Date,
            destination: String? = nil,
            failureBalanceTransaction: Stripe.Balance.Transaction.ID? = nil,
            failureCode: Stripe.Payouts.Payout.FailureCode? = nil,
            failureMessage: String? = nil,
            livemode: Bool? = nil,
            method: Stripe.Payouts.Payout.Method? = nil,
            originalpayout: Stripe.Payouts.Payout.ID? = nil,
            reconciliationStatus: Stripe.Payouts.Payout.ReconciliationStatus? = nil,
            reversedBy: Stripe.Payouts.Payout.ID? = nil,
            sourceType: Stripe.Payouts.Payout.SourceType? = nil,
            type: Stripe.Payouts.Payout.`Type`? = nil
        ) {
            self.id = id
            self.amount = amount
            self.arrivalDate = arrivalDate
            self.currency = currency
            self.description = description
            self.metadata = metadata
            self.statementDescriptor = statementDescriptor
            self.status = status
            self.object = object
            self.automatic = automatic
            self._balanceTransaction = Expandable(id: balanceTransaction)
            self.created = created
            self._destination = DynamicExpandable(id: destination)
            self._failureBalanceTransaction = Expandable(id: failureBalanceTransaction)
            self.failureCode = failureCode
            self.failureMessage = failureMessage
            self.livemode = livemode
            self.method = method
            self._originalpayout = Expandable(id: originalpayout)
            self.reconciliationStatus = reconciliationStatus
            self._reversedBy = Expandable(id: reversedBy)
            self.sourceType = sourceType
            self.type = type
        }
    }
}

extension Stripe.Payouts.Payout {
    public enum FailureCode: String, Codable, Sendable {
        case accountClosed = "account_closed"
        case accountFrozen = "account_frozen"
        case bankAccountRestricted = "bank_account_restricted"
        case bankOwnershipChanged = "bank_ownership_changed"
        case couldNotProcess = "could_not_process"
        case debitNotAuthorized = "debit_not_authorized"
        case declined
        case insufficientFunds = "insufficient_funds"
        case invalidAccountNumber = "invalid_account_number"
        case incorrectAccountHolderName = "incorrect_account_holder_name"
        case incorrectAccountHolderAddress = "incorrect_account_holder_address"
        case incorrectAccountHolderTaxId = "incorrect_account_holder_tax_id"
        case invalidCurrency = "invalid_currency"
        case noAccount = "no_account"
        case unsupportedCard = "unsupported_card"
    }
}

extension Stripe.Payouts.Payout {
    public enum Method: String, Codable, Sendable {
        case standard
        case instant
    }
}

extension Stripe.Payouts.Payout {
    public enum ReconciliationStatus: String, Codable, Sendable {
        case notApplicable = "not_applicable"
        case inProgress = "in_progress"
        case completed
    }
}

extension Stripe.Payouts.Payout {
    public enum SourceType: String, Codable, Sendable {
        case card
        case fpx
        case bankAccount = "bank_account"
    }
}

extension Stripe.Payouts.Payout {
    public enum Status: String, Codable, Sendable {
        case paid
        case pending
        case inTransit = "in_transit"
        case canceled
        case failed
    }
}

extension Stripe.Payouts.Payout {
    public enum `Type`: String, Codable, Sendable {
        case bankAccount = "bank_account"
        case card
    }
}
