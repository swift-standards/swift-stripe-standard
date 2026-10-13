public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Connect {
    public struct TopUp: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var amount: Int?
        public var currency: Stripe.Currency?
        public var description: String?
        public var metadata: [String: String]?
        public var status: Stripe.Connect.TopUp.Status?
        public var object: String
        @ExpandableOf<Stripe.Balance.Transaction> public var balanceTransaction: Stripe.Balance.Transaction.ID?
        public var created: Date
        public var expectedAvailabilityDate: Date?
        public var failureCode: String?
        public var failureMessage: String?
        public var livemode: Bool?
        public var source: Source?
        public var statementDescriptor: Stripe.StatementDescriptor?
        public var transferGroup: String?

        public init(
            id: ID,
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            metadata: [String: String]? = nil,
            status: Stripe.Connect.TopUp.Status? = nil,
            object: String,
            balanceTransaction: Stripe.Balance.Transaction.ID? = nil,
            created: Date,
            expectedAvailabilityDate: Date? = nil,
            failureCode: String? = nil,
            failureMessage: String? = nil,
            livemode: Bool? = nil,
            source: Source? = nil,
            statementDescriptor: Stripe.StatementDescriptor? = nil,
            transferGroup: String? = nil
        ) {
            self.id = id
            self.amount = amount
            self.currency = currency
            self.description = description
            self.metadata = metadata
            self.status = status
            self.object = object
            self._balanceTransaction = Expandable(id: balanceTransaction)
            self.created = created
            self.expectedAvailabilityDate = expectedAvailabilityDate
            self.failureCode = failureCode
            self.failureMessage = failureMessage
            self.livemode = livemode
            self.source = source
            self.statementDescriptor = statementDescriptor
            self.transferGroup = transferGroup
        }
    }
}

extension Stripe.Connect.TopUp {
    public enum Status: String, Codable, Sendable {
        case canceled
        case failed
        case pending
        case reversed
        case succeeded
    }
}

extension Stripe.Connect.TopUp {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Connect.TopUp]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Connect.TopUp]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
