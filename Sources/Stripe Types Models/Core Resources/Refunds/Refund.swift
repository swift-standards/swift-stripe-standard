public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Refunds {
    public struct Refund: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var amount: Int?
        @ExpandableOf<Stripe.Charges.Charge> public var charge: Stripe.Charges.Charge.ID?
        public var currency: Stripe.Currency?
        public var description: String?
        public var metadata: [String: String]?
        @ExpandableOf<Stripe.PaymentIntents.PaymentIntent> public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public var reason: Stripe.Refunds.Refund.Reason?
        public var status: Stripe.Refunds.Refund.Status?
        public var object: String
        @ExpandableOf<Stripe.Balance.Transaction> public var balanceTransaction: Stripe.Balance.Transaction.ID?
        public var created: Date
        @ExpandableOf<Stripe.Balance.Transaction> public var failureBalanceTransaction: Stripe.Balance.Transaction.ID?
        public var failureReason: Stripe.Refunds.Refund.FailureReason?
        public var instructionsEmail: String?
        public var nextAction: Stripe.Refunds.Refund.NextAction?
        public var receiptNumber: String?
        @ExpandableOf<Stripe.Connect.Transfer.Reversal> public var sourceTransferReversal: Stripe.Connect.Transfer.Reversal.ID?
        @ExpandableOf<Stripe.Connect.Transfer.Reversal> public var transferReversal: Stripe.Connect.Transfer.Reversal.ID?

        public init(
            id: ID,
            amount: Int? = nil,
            charge: Stripe.Charges.Charge.ID? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            metadata: [String: String]? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            reason: Stripe.Refunds.Refund.Reason? = nil,
            status: Stripe.Refunds.Refund.Status? = nil,
            object: String,
            balanceTransaction: Stripe.Balance.Transaction.ID? = nil,
            created: Date,
            failureBalanceTransaction: Stripe.Balance.Transaction.ID? = nil,
            failureReason: Stripe.Refunds.Refund.FailureReason? = nil,
            instructionsEmail: String? = nil,
            nextAction: Stripe.Refunds.Refund.NextAction? = nil,
            receiptNumber: String? = nil,
            sourceTransferReversal: Stripe.Connect.Transfer.Reversal.ID? = nil,
            transferReversal: Stripe.Connect.Transfer.Reversal.ID? = nil
        ) {
            self.id = id
            self.amount = amount
            self._charge = Expandable(id: charge)
            self.currency = currency
            self.description = description
            self.metadata = metadata
            self._paymentIntent = Expandable(id: paymentIntent)
            self.reason = reason
            self.status = status
            self.object = object
            self._balanceTransaction = Expandable(id: balanceTransaction)
            self.created = created
            self._failureBalanceTransaction = Expandable(id: failureBalanceTransaction)
            self.failureReason = failureReason
            self.instructionsEmail = instructionsEmail
            self.nextAction = nextAction
            self.receiptNumber = receiptNumber
            self._sourceTransferReversal = Expandable(id: sourceTransferReversal)
            self._transferReversal = Expandable(id: transferReversal)
        }
    }

}

extension Stripe.Refunds.Refund {
    public enum FailureReason: String, Codable, Sendable {
        case lostOrStolenCard = "lost_or_stolen_card"
        case expiredOrCanceledCard = "expired_or_canceled_card"
        case chargeForPendingRefundDisputed = "charge_for_pending_refund_disputed"
        case insufficientFunds = "insufficient_funds"
        case declined
        case merchantRequest = "merchant_request"
        case unknown
    }

    public enum Status: String, Codable, Sendable {
        case pending
        case succeeded
        case failed
        case canceled
    }

    public enum Reason: String, Codable, Sendable {
        case duplicate
        case fraudulent
        case requestedByCustomer = "requested_by_customer"
        case expiredUncapturedCharge = "expired_uncaptured_charge"
    }

    public struct NextAction: Codable, Hashable, Sendable {
        public var displayDetails: Stripe.Refunds.Refund.NextActionDisplayDetails?
        public var type: String?

        public init(
            displayDetails: Stripe.Refunds.Refund.NextActionDisplayDetails? = nil,
            type: String? = nil
        ) {
            self.displayDetails = displayDetails
            self.type = type
        }
    }

    public struct NextActionDisplayDetails: Codable, Hashable, Sendable {
        public var emailSent: Stripe.Refunds.Refund.NextActionDisplayDetailsEmailSent?
        public var expiresAt: Date?

        public init(
            emailSent: Stripe.Refunds.Refund.NextActionDisplayDetailsEmailSent? = nil,
            expiresAt: Date? = nil
        ) {
            self.emailSent = emailSent
            self.expiresAt = expiresAt
        }
    }

    public struct NextActionDisplayDetailsEmailSent: Codable, Hashable, Sendable {
        public var emailSentAt: Date?
        public var emailSentTo: String?

        public init(
            emailSentAt: Date? = nil,
            emailSentTo: String? = nil
        ) {
            self.emailSentAt = emailSentAt
            self.emailSentTo = emailSentTo
        }
    }

}

extension Stripe.Refunds.Refund {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Refunds.Refund]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Refunds.Refund]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
