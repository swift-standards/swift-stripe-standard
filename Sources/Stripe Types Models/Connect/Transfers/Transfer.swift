public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Connect {
    public struct Transfer: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var amount: Int?
        public var currency: Stripe.Currency?
        public var description: String?
        @ExpandableOf<Stripe.Connect.Account> public var destination: Stripe.Connect.Account.ID?
        public var metadata: [String: String]?
        public var object: String
        public var amountReversed: Int?
        @ExpandableOf<Stripe.Balance.Transaction> public var balanceTransaction: Stripe.Balance.Transaction.ID?
        public var created: Date
        @ExpandableOf<Stripe.Charges.Charge> public var destinationPayment: Stripe.Charges.Charge.ID?
        public var livemode: Bool?
        public var reversals: Stripe.Connect.Transfer.Reversal.List?
        public var reversed: Bool?
        @ExpandableOf<Stripe.Charges.Charge> public var sourceTransaction: Stripe.Charges.Charge.ID?
        public var sourceType: Stripe.Connect.Transfer.SourceType?
        public var transferGroup: String?

        public init(
            id: ID,
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            destination: Stripe.Connect.Account.ID? = nil,
            metadata: [String: String]? = nil,
            object: String,
            amountReversed: Int? = nil,
            balanceTransaction: Stripe.Balance.Transaction.ID? = nil,
            created: Date,
            destinationPayment: Stripe.Charges.Charge.ID? = nil,
            livemode: Bool? = nil,
            reversals: Stripe.Connect.Transfer.Reversal.List? = nil,
            reversed: Bool? = nil,
            sourceTransaction: Stripe.Charges.Charge.ID? = nil,
            sourceType: Stripe.Connect.Transfer.SourceType? = nil,
            transferGroup: String? = nil
        ) {
            self.id = id
            self.amount = amount
            self.currency = currency
            self.description = description
            self._destination = Expandable(id: destination)
            self.metadata = metadata
            self.object = object
            self.amountReversed = amountReversed
            self._balanceTransaction = Expandable(id: balanceTransaction)
            self.created = created
            self._destinationPayment = Expandable(id: destinationPayment)
            self.livemode = livemode
            self.reversals = reversals
            self.reversed = reversed
            self._sourceTransaction = Expandable(id: sourceTransaction)
            self.sourceType = sourceType
            self.transferGroup = transferGroup
        }
    }
}

extension Stripe.Connect.Transfer {
    public enum SourceType: String, Codable, Sendable {
        case card
        case fpx
        case bankAccount = "bank_account"
    }
}

extension Stripe.Connect.Transfer {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Connect.Transfer]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Connect.Transfer]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
