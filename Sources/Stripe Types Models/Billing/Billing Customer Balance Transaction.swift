public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Customer.Balance {
    public struct Transaction: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var amount: Int?
        public var currency: Stripe.Currency?
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        public var description: String?
        public var endingBalance: Int?
        public var metadata: [String: String]?
        public var type: TransactionType?
        public var object: String
        public var created: Date
        @Expandable<Stripe.Billing.Credit.Note, Stripe.Billing.Credit.Note.ID> public var creditNote
        @Expandable<Stripe.Billing.Invoice, Stripe.Billing.Invoice.ID> public var invoice: Stripe.Billing.Invoice.ID?
        public var livemode: Bool?

        public init(
            id: ID,
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            description: String? = nil,
            endingBalance: Int? = nil,
            metadata: [String: String]? = nil,
            type: TransactionType? = nil,
            object: String,
            created: Date,
            creditNote: Stripe.Billing.Credit.Note.ID? = nil,
            invoice: Stripe.Billing.Invoice.ID? = nil,
            livemode: Bool? = nil
        ) {
            self.id = id
            self.amount = amount
            self.currency = currency
            self._customer = Expandable(id: customer)
            self.description = description
            self.endingBalance = endingBalance
            self.metadata = metadata
            self.type = type
            self.object = object
            self.created = created
            self._creditNote = Expandable(id: creditNote)
            self._invoice = Expandable(id: invoice)
            self.livemode = livemode
        }
    }

    public enum TransactionType: String, Codable, Sendable {
        case adjustment
        case appliedToInvoice = "applied_to_invoice"
        case creditNote = "credit_note"
        case initial
        case invoiceOverpaid = "invoice_overpaid"
        case invoiceTooLarge = "invoice_too_large"
        case invoiceTooSmall = "invoice_too_small"
        case unspentReceiverCredit = "unspent_receiver_credit"
        case unappliedFromInvoice = "unapplied_from_invoice"
    }
}

extension Stripe.Billing.Customer.Balance.Transaction {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Billing.Customer.Balance.Transaction]?
        public var hasMore: Bool?
        public var url: String?

        public init(
            object: String,
            data: [Stripe.Billing.Customer.Balance.Transaction]? = nil,
            hasMore: Bool? = nil,
            url: String? = nil
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
        }
    }
}
