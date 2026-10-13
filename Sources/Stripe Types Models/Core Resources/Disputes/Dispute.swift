public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Disputes {
    public struct Dispute: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var amount: Int?
        @ExpandableOf<Stripe.Charges.Charge> public var charge: Stripe.Charges.Charge.ID?
        public var currency: Stripe.Currency?
        public var evidence: Stripe.Disputes.Dispute.Evidence?
        public var metadata: [String: String]?
        @ExpandableOf<Stripe.PaymentIntents.PaymentIntent> public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public var reason: Stripe.Disputes.Dispute.Reason?
        public var status: Stripe.Disputes.Dispute.Status?
        public var object: String
        public var balanceTransactions: [Stripe.Balance.Transaction]?
        public var created: Date
        public var evidenceDetails: Stripe.Disputes.Dispute.EvidenceDetails?
        public var isChargeRefundable: Bool?
        public var livemode: Bool?

        public init(
            id: ID,
            amount: Int? = nil,
            charge: Stripe.Charges.Charge.ID? = nil,
            currency: Stripe.Currency? = nil,
            evidence: Stripe.Disputes.Dispute.Evidence? = nil,
            metadata: [String: String]? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            reason: Stripe.Disputes.Dispute.Reason? = nil,
            status: Stripe.Disputes.Dispute.Status? = nil,
            object: String,
            balanceTransactions: [Stripe.Balance.Transaction]? = nil,
            created: Date,
            evidenceDetails: Stripe.Disputes.Dispute.EvidenceDetails? = nil,
            isChargeRefundable: Bool? = nil,
            livemode: Bool? = nil
        ) {
            self.id = id
            self.amount = amount
            self._charge = Expandable(id: charge)
            self.currency = currency
            self.evidence = evidence
            self.metadata = metadata
            self._paymentIntent = Expandable(id: paymentIntent)
            self.reason = reason
            self.status = status
            self.object = object
            self.balanceTransactions = balanceTransactions
            self.created = created
            self.evidenceDetails = evidenceDetails
            self.isChargeRefundable = isChargeRefundable
            self.livemode = livemode
        }
    }
}

extension Stripe.Disputes.Dispute {
    public struct EvidenceDetails: Codable, Hashable, Sendable {
        public var dueBy: Date?
        public var hasEvidence: Bool?
        public var pastDue: Bool?
        public var submissionCount: Int?

        public init(
            dueBy: Date? = nil,
            hasEvidence: Bool? = nil,
            pastDue: Bool? = nil,
            submissionCount: Int? = nil
        ) {
            self.dueBy = dueBy
            self.hasEvidence = hasEvidence
            self.pastDue = pastDue
            self.submissionCount = submissionCount
        }
    }

    public enum Reason: String, Codable, Sendable {
        case bankCannotProcess = "bank_cannot_process"
        case checkReturned = "check_returned"
        case creditNotProcessed = "credit_not_processed"
        case customerInitiated = "customer_initiated"
        case debitNotAuthorized = "debit_not_authorized"
        case duplicate
        case fraudulent
        case general
        case incorrectAccountDetails = "incorrect_account_details"
        case insufficientFunds = "insufficient_funds"
        case productNotReceived = "product_not_received"
        case productUnacceptable = "product_unacceptable"
        case subscriptionCanceled = "subscription_canceled"
        case unrecognized
    }

    public enum Status: String, Codable, Sendable {
        case warningNeedsResponse = "warning_needs_response"
        case warningUnderReview = "warning_under_review"
        case warningClosed = "warning_closed"
        case needsResponse = "needs_response"
        case underReview = "under_review"
        case chargeRefunded = "charge_refunded"
        case won
        case lost
    }
}
