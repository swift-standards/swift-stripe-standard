public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Balance {
    public struct Transaction: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var object: String
        public var amount: Int?
        public var availableOn: Date?
        public var created: Date
        public var currency: Stripe.Currency?
        public var description: String?
        public var exchangeRate: Double?
        public var fee: Int?
        public var feeDetails: [Stripe.Balance.Transaction.Fee.Details]?
        public var net: Int?
        public var reportingCategory: String?
        public var source: String?
        public var status: Stripe.Balance.Transaction.Status?
        public var type: Stripe.Balance.Transaction.`Type`?

        public init(
            id: ID,
            object: String,
            amount: Int? = nil,
            availableOn: Date? = nil,
            created: Date,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            exchangeRate: Double? = nil,
            fee: Int? = nil,
            feeDetails: [Stripe.Balance.Transaction.Fee.Details]? = nil,
            net: Int? = nil,
            reportingCategory: String? = nil,
            source: String? = nil,
            status: Stripe.Balance.Transaction.Status? = nil,
            type: Stripe.Balance.Transaction.`Type`? = nil
        ) {
            self.id = id
            self.object = object
            self.amount = amount
            self.availableOn = availableOn
            self.created = created
            self.currency = currency
            self.description = description
            self.exchangeRate = exchangeRate
            self.fee = fee
            self.feeDetails = feeDetails
            self.net = net
            self.reportingCategory = reportingCategory
            self.source = source
            self.status = status
            self.type = type
        }
    }
}

extension Stripe.Balance.Transaction {
    public enum Fee {}
}

extension Stripe.Balance.Transaction.Fee {
    public struct Details: Codable, Hashable, Sendable {
        public var amount: Int?
        public var application: String?
        public var currency: Stripe.Currency?
        public var description: String?
        public var type: Stripe.Balance.Transaction.Fee.Details.`Type`?

        public init(
            amount: Int? = nil,
            application: String? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            type: Stripe.Balance.Transaction.Fee.Details.`Type`? = nil
        ) {
            self.amount = amount
            self.application = application
            self.currency = currency
            self.description = description
            self.type = type
        }
    }
}

extension Stripe.Balance.Transaction.Fee.Details {
    public enum `Type`: String, Codable, Sendable {
        case applicationFee = "application_fee"
        case stripeFee = "stripe_fee"
        case tax
    }
}

extension Stripe.Balance.Transaction {
    public enum Status: String, Codable, Sendable {
        case available
        case pending
    }
}

extension Stripe.Balance.Transaction {
    public enum `Type`: String, Codable, Sendable {
        case adjustment
        case advance
        case advanceFunding = "advance_funding"
        case anticipationRepayment = "anticipation_repayment"
        case applicationFee = "application_fee"
        case applicationFeeRefund = "application_fee_refund"
        case charge
        case connectCollectionTransfer = "connect_collection_transfer"
        case contribution
        case issuingAuthorizationHold = "issuing_authorization_hold"
        case issuingAuthorizationRelease = "issuing_authorization_release"
        case issuingDispute = "issuing_dispute"
        case issuingTransaction = "issuing_transaction"
        case payment
        case paymentFailureRefund = "payment_failure_refund"
        case paymentRefund = "payment_refund"
        case payout
        case payoutCancel = "payout_cancel"
        case payoutFailure = "payout_failure"
        case refund
        case refundFailure = "refund_failure"
        case reserveTransaction = "reserve_transaction"
        case reservedFunds = "reserved_funds"
        case stripeFee = "stripe_fee"
        case stripeFxFee = "stripe_fx_fee"
        case taxFee = "tax_fee"
        case topup
        case topupReversal = "topup_reversal"
        case transfer
        case transferCancel = "transfer_cancel"
        case transferFailure = "transfer_failure"
        case transferRefund = "transfer_refund"
    }
}
