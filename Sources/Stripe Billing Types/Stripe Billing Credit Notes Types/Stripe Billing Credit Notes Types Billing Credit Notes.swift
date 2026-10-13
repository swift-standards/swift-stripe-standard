import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.CreditNotes {
    public enum Create {}
}

extension Stripe.Billing.CreditNotes.Create {
    public struct Request: Codable, Equatable, Sendable {
        public var invoice: Stripe.Billing.Invoice.ID
        public var amount: Int?
        public var creditAmount: Int?
        public var lines: [LineItem]?
        public var memo: String?
        public var reason: Stripe.Billing.Credit.Note.Reason?
        public var refund: String?
        public var refundAmount: Int?
        public var outOfBandAmount: Int?
        public var metadata: [String: String]?

        public init(
            invoice: Stripe.Billing.Invoice.ID,
            amount: Int? = nil,
            creditAmount: Int? = nil,
            lines: [LineItem]? = nil,
            memo: String? = nil,
            reason: Stripe.Billing.Credit.Note.Reason? = nil,
            refund: String? = nil,
            refundAmount: Int? = nil,
            outOfBandAmount: Int? = nil,
            metadata: [String: String]? = nil
        ) {
            self.invoice = invoice
            self.amount = amount
            self.creditAmount = creditAmount
            self.lines = lines
            self.memo = memo
            self.reason = reason
            self.refund = refund
            self.refundAmount = refundAmount
            self.outOfBandAmount = outOfBandAmount
            self.metadata = metadata
        }

        private enum CodingKeys: String, CodingKey {
            case invoice
            case amount
            case creditAmount = "credit_amount"
            case lines
            case memo
            case reason
            case refund
            case refundAmount = "refund_amount"
            case outOfBandAmount = "out_of_band_amount"
            case metadata
        }
    }

    public struct LineItem: Codable, Equatable, Sendable {
        public var type: LineItemType
        public var amount: Int?
        public var description: String?
        public var invoiceLineItem: String?
        public var quantity: Int?
        public var taxRates: [String]?
        public var unitAmount: Int?
        public var unitAmountDecimal: String?

        public init(
            type: LineItemType,
            amount: Int? = nil,
            description: String? = nil,
            invoiceLineItem: String? = nil,
            quantity: Int? = nil,
            taxRates: [String]? = nil,
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil
        ) {
            self.type = type
            self.amount = amount
            self.description = description
            self.invoiceLineItem = invoiceLineItem
            self.quantity = quantity
            self.taxRates = taxRates
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
        }

        private enum CodingKeys: String, CodingKey {
            case type
            case amount
            case description
            case invoiceLineItem = "invoice_line_item"
            case quantity
            case taxRates = "tax_rates"
            case unitAmount = "unit_amount"
            case unitAmountDecimal = "unit_amount_decimal"
        }
    }

    public enum LineItemType: String, Codable, Equatable, Sendable {
        case customLineItem = "custom_line_item"
        case invoiceLineItem = "invoice_line_item"
    }
}

extension Stripe.Billing.CreditNotes {
    public enum Update {}
}

extension Stripe.Billing.CreditNotes.Update {
    public struct Request: Codable, Equatable, Sendable {
        public var memo: String?
        public var metadata: [String: String]?

        public init(
            memo: String? = nil,
            metadata: [String: String]? = nil
        ) {
            self.memo = memo
            self.metadata = metadata
        }

        private enum CodingKeys: String, CodingKey {
            case memo
            case metadata
        }
    }
}

extension Stripe.Billing.CreditNotes {
    public enum List {}
}

extension Stripe.Billing.CreditNotes.List {
    public struct Request: Codable, Equatable, Sendable {
        public var customer: Stripe.Customers.Customer.ID?
        public var invoice: Stripe.Billing.Invoice.ID?
        public var limit: Int?
        public var startingAfter: String?
        public var endingBefore: String?

        public init(
            customer: Stripe.Customers.Customer.ID? = nil,
            invoice: Stripe.Billing.Invoice.ID? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil,
            endingBefore: String? = nil
        ) {
            self.customer = customer
            self.invoice = invoice
            self.limit = limit
            self.startingAfter = startingAfter
            self.endingBefore = endingBefore
        }

        private enum CodingKeys: String, CodingKey {
            case customer
            case invoice
            case limit
            case startingAfter = "starting_after"
            case endingBefore = "ending_before"
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Billing.Credit.Note]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}

extension Stripe.Billing.CreditNotes {
    public enum Preview {}
}

extension Stripe.Billing.CreditNotes.Preview {
    public struct Request: Codable, Equatable, Sendable {
        public var invoice: Stripe.Billing.Invoice.ID
        public var amount: Int?
        public var creditAmount: Int?
        public var memo: String?
        public var reason: String?

        public init(
            invoice: Stripe.Billing.Invoice.ID,
            amount: Int? = nil,
            creditAmount: Int? = nil,
            memo: String? = nil,
            reason: String? = nil
        ) {
            self.invoice = invoice
            self.amount = amount
            self.creditAmount = creditAmount
            self.memo = memo
            self.reason = reason
        }

        private enum CodingKeys: String, CodingKey {
            case invoice
            case amount
            case creditAmount = "credit_amount"
            case memo
            case reason
        }
    }
}

extension Stripe.Billing.CreditNotes {
    public enum Void {}
}

extension Stripe.Billing.CreditNotes.Void {
    public struct Request: Codable, Equatable, Sendable {
        public init() {}
    }
}

extension Stripe.Billing.CreditNotes {
    public enum Lines {}
}

extension Stripe.Billing.CreditNotes.Lines {
    public struct Request: Codable, Equatable, Sendable {
        public var limit: Int?
        public var startingAfter: String?
        public var endingBefore: String?

        public init(
            limit: Int? = nil,
            startingAfter: String? = nil,
            endingBefore: String? = nil
        ) {
            self.limit = limit
            self.startingAfter = startingAfter
            self.endingBefore = endingBefore
        }

        private enum CodingKeys: String, CodingKey {
            case limit
            case startingAfter = "starting_after"
            case endingBefore = "ending_before"
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Billing.Credit.Note.LineItem]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}

extension Stripe.Billing.CreditNotes {
    public enum PreviewLines {}
}

extension Stripe.Billing.CreditNotes.PreviewLines {
    public struct Request: Codable, Equatable, Sendable {
        public var invoice: Stripe.Billing.Invoice.ID
        public var amount: Int?
        public var creditAmount: Int?
        public var limit: Int?
        public var startingAfter: String?
        public var endingBefore: String?

        public init(
            invoice: Stripe.Billing.Invoice.ID,
            amount: Int? = nil,
            creditAmount: Int? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil,
            endingBefore: String? = nil
        ) {
            self.invoice = invoice
            self.amount = amount
            self.creditAmount = creditAmount
            self.limit = limit
            self.startingAfter = startingAfter
            self.endingBefore = endingBefore
        }

        private enum CodingKeys: String, CodingKey {
            case invoice
            case amount
            case creditAmount = "credit_amount"
            case limit
            case startingAfter = "starting_after"
            case endingBefore = "ending_before"
        }
    }

    public typealias Response = Stripe.Billing.CreditNotes.Lines.Response
}
