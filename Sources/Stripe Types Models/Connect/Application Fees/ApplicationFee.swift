public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Connect.Application {
    public struct Fee: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        @ExpandableOf<Stripe.Connect.Account> public var account: Stripe.Connect.Account.ID?
        public var amount: Int?
        public var amountRefunded: Int?
        @ExpandableOf<Stripe.Charges.Charge> public var charge: Stripe.Charges.Charge.ID?
        public var currency: Stripe.Currency?
        public var refunded: Bool?
        public var object: String
        public var application: String?
        @ExpandableOf<Stripe.Balance.Transaction> public var balanceTransaction: Stripe.Balance.Transaction.ID?
        public var created: Date
        public var livemode: Bool
        @DynamicExpandable<Stripe.Charges.Charge, Stripe.Connect.Transfer> public
            var originatingTransaction: String?
        public var refunds: Stripe.Connect.Application.Fee.Refund.List?
        public var source: Stripe.Connect.Application.Fee.Source?

        public init(
            id: ID,
            account: Stripe.Connect.Account.ID? = nil,
            amount: Int? = nil,
            amountRefunded: Int? = nil,
            charge: Stripe.Charges.Charge.ID? = nil,
            currency: Stripe.Currency? = nil,
            refunded: Bool? = nil,
            object: String,
            application: String? = nil,
            balanceTransaction: Stripe.Balance.Transaction.ID? = nil,
            created: Date,
            livemode: Bool,
            originatingTransaction: String? = nil,
            refunds: Stripe.Connect.Application.Fee.Refund.List? = nil,
            source: Stripe.Connect.Application.Fee.Source? = nil
        ) {
            self.id = id
            self._account = Expandable(id: account)
            self.amount = amount
            self.amountRefunded = amountRefunded
            self._charge = Expandable(id: charge)
            self.currency = currency
            self.refunded = refunded
            self.object = object
            self.application = application
            self._balanceTransaction = Expandable(id: balanceTransaction)
            self.created = created
            self.livemode = livemode
            self._originatingTransaction = DynamicExpandable(id: originatingTransaction)
            self.refunds = refunds
            self.source = source
        }
    }
}

extension Stripe.Connect.Application.Fee {
    public struct Source: Codable, Hashable, Sendable {
        public var feeType: String?
        public var resource: Stripe.Connect.Application.Fee.Source.Resource?

        public init(
            feeType: String? = nil,
            resource: Stripe.Connect.Application.Fee.Source.Resource? = nil
        ) {
            self.feeType = feeType
            self.resource = resource
        }
    }
}

extension Stripe.Connect.Application.Fee.Source {
    public struct Resource: Codable, Hashable, Sendable {
        public var charge: Stripe.Charges.Charge.ID?
        public var payout: Stripe.Payouts.Payout.ID?
        public var type: String?

        public init(
            charge: Stripe.Charges.Charge.ID? = nil,
            payout: Stripe.Payouts.Payout.ID? = nil,
            type: String? = nil
        ) {
            self.charge = charge
            self.payout = payout
            self.type = type
        }
    }
}

extension Stripe.Connect.Application.Fee {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Connect.Application.Fee]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Connect.Application.Fee]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
