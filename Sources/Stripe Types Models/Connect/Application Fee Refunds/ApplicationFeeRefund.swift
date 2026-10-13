public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Connect.Application.Fee {
    public struct Refund: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var object: String
        public var amount: Int?
        @ExpandableOf<Stripe.Balance.Transaction> public var balanceTransaction: Stripe.Balance.Transaction.ID?
        public var created: Date
        public var currency: Stripe.Currency?
        @ExpandableOf<Stripe.Connect.Application.Fee> public var fee: Stripe.Connect.Application.Fee.ID?
        public var metadata: [String: String]?

        public init(
            id: ID,
            object: String,
            amount: Int? = nil,
            balanceTransaction: Stripe.Balance.Transaction.ID? = nil,
            created: Date,
            currency: Stripe.Currency? = nil,
            fee: Stripe.Connect.Application.Fee.ID? = nil,
            metadata: [String: String]? = nil
        ) {
            self.id = id
            self.object = object
            self.amount = amount
            self._balanceTransaction = Expandable(id: balanceTransaction)
            self.created = created
            self.currency = currency
            self._fee = Expandable(id: fee)
            self.metadata = metadata
        }
    }
}

extension Stripe.Connect.Application.Fee.Refund {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Connect.Application.Fee.Refund]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Connect.Application.Fee.Refund]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
