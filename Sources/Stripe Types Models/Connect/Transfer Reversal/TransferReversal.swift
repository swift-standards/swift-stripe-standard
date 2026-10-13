public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Connect.Transfer {
    public struct Reversal: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var amount: Int?
        public var currency: Stripe.Currency?
        public var metadata: [String: String]?
        @ExpandableOf<Stripe.Connect.Transfer> public var transfer: Stripe.Connect.Transfer.ID?
        public var object: String
        @ExpandableOf<Stripe.Balance.Transaction> public var balanceTransaction: Stripe.Balance.Transaction.ID?
        public var created: Date
        @ExpandableOf<Stripe.Refunds.Refund> public var destinationPaymentRefund: Stripe.Refunds.Refund.ID?
        @ExpandableOf<Stripe.Refunds.Refund> public var sourceRefund: Stripe.Refunds.Refund.ID?

        public init(
            id: ID,
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            metadata: [String: String]? = nil,
            transfer: Stripe.Connect.Transfer.ID? = nil,
            object: String,
            balanceTransaction: Stripe.Balance.Transaction.ID? = nil,
            created: Date,
            destinationPaymentRefund: Stripe.Refunds.Refund.ID? = nil,
            sourceRefund: Stripe.Refunds.Refund.ID? = nil
        ) {
            self.id = id
            self.amount = amount
            self.currency = currency
            self.metadata = metadata
            self._transfer = Expandable(id: transfer)
            self.object = object
            self._balanceTransaction = Expandable(id: balanceTransaction)
            self.created = created
            self._destinationPaymentRefund = Expandable(id: destinationPaymentRefund)
            self._sourceRefund = Expandable(id: sourceRefund)
        }
    }
}

extension Stripe.Connect.Transfer.Reversal {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Connect.Transfer.Reversal]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Connect.Transfer.Reversal]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
