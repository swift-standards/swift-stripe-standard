public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct CashBalanceTransaction: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var object: String
    public var appliedToPayment: CashBalanceTransactionAppliedToPayment?
    public var created: Date
    public var currency: Stripe.Currency?
    @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
    public var endingBalance: Int?
    public var funded: CashBalanceTransactionFunded?
    public var livemode: Bool
    public var netAmount: Int?
    public var refundedFromPayment: CashBalanceTransactionRefundedFromPayment?
    public var type: String?
    public var unappliedFromPayment: CashBalanceTransactionUnappliedFromPayment?

    public init(
        id: ID,
        object: String,
        appliedToPayment: CashBalanceTransactionAppliedToPayment? = nil,
        created: Date,
        currency: Stripe.Currency? = nil,
        customer: Stripe.Customers.Customer.ID? = nil,
        endingBalance: Int? = nil,
        funded: CashBalanceTransactionFunded? = nil,
        livemode: Bool,
        netAmount: Int? = nil,
        refundedFromPayment: CashBalanceTransactionRefundedFromPayment? = nil,
        type: String? = nil,
        unappliedFromPayment: CashBalanceTransactionUnappliedFromPayment? = nil
    ) {
        self.id = id
        self.object = object
        self.appliedToPayment = appliedToPayment
        self.created = created
        self.currency = currency
        self._customer = Expandable(id: customer)
        self.endingBalance = endingBalance
        self.funded = funded
        self.livemode = livemode
        self.netAmount = netAmount
        self.refundedFromPayment = refundedFromPayment
        self.type = type
        self.unappliedFromPayment = unappliedFromPayment
    }
}

public struct CashBalanceTransactionAppliedToPayment: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.PaymentIntents.PaymentIntent> public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?

    public init(
        paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil
    ) {
        self._paymentIntent = Expandable(id: paymentIntent)
    }
}

public struct CashBalanceTransactionFunded: Codable, Hashable, Sendable {
    public var bankTransfer: CashBalanceTransactionFundedBankTransfer?

    public init(
        bankTransfer: CashBalanceTransactionFundedBankTransfer? = nil
    ) {
        self.bankTransfer = bankTransfer
    }
}

public struct CashBalanceTransactionFundedBankTransfer: Codable, Hashable, Sendable {
    public var euBankTransfer: CashBalanceTransactionFundedBankTransferEUBankTransfer?
    public var reference: String?
    public var type: CashBalanceTransactionFundedBankTransferType?

    public init(
        euBankTransfer: CashBalanceTransactionFundedBankTransferEUBankTransfer? = nil,
        reference: String? = nil,
        type: CashBalanceTransactionFundedBankTransferType? = nil
    ) {
        self.euBankTransfer = euBankTransfer
        self.reference = reference
        self.type = type
    }
}

public enum CashBalanceTransactionFundedBankTransferType: String, Codable, Sendable {
    case euBankTransfer = "eu_bank_transfer"
    case gbBankTransfer = "gb_bank_transfer"
    case jpBankTransfer = "jp_bank_transfer"
    case mxBankTransfer = "mx_bank_transfer"
}

public struct CashBalanceTransactionFundedBankTransferEUBankTransfer: Codable, Hashable, Sendable {
    public var bic: String?
    public var ibanLast4: String?
    public var senderName: String?

    public init(
        bic: String? = nil,
        ibanLast4: String? = nil,
        senderName: String? = nil
    ) {
        self.bic = bic
        self.ibanLast4 = ibanLast4
        self.senderName = senderName
    }
}

public struct CashBalanceTransactionRefundedFromPayment: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Refunds.Refund> public var refund: Stripe.Refunds.Refund.ID?

    public init(
        refund: Stripe.Refunds.Refund.ID? = nil
    ) {
        self._refund = Expandable(id: refund)
    }
}

public struct CashBalanceTransactionUnappliedFromPayment: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.PaymentIntents.PaymentIntent> public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?

    public init(
        paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil
    ) {
        self._paymentIntent = Expandable(id: paymentIntent)
    }
}

public struct CashBalanceTransactionList: Codable, Hashable, Sendable {
    public var object: String
    public var data: [CashBalanceTransaction]?
    public var hasMore: Bool?
    public var url: String?

    public init(
        object: String,
        data: [CashBalanceTransaction]? = nil,
        hasMore: Bool? = nil,
        url: String? = nil
    ) {
        self.object = object
        self.data = data
        self.hasMore = hasMore
        self.url = url
    }
}
