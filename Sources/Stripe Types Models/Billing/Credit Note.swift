public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Credit {
    public struct Note: Codable, Hashable, Sendable {
        public typealias ID = Tagged<Self, String>

        public var id: ID?
        public var currency: Stripe.Currency?
        @Expandable<Stripe.Billing.Invoice, Stripe.Billing.Invoice.ID> public var invoice: Stripe.Billing.Invoice.ID?
        public var lines: Note.LineItem.List?
        public var memo: String?
        public var metadata: [String: String]?
        public var reason: Note.Reason?
        public var status: Note.Status?
        public var subtotal: Int?
        public var total: Int?
        public var object: String
        public var amount: Int?
        public var amountShipping: Int?
        public var created: Date
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        @ExpandableOf<Stripe.Billing.Customer.Balance.Transaction> public
            var customerBalanceTransaction: Stripe.Billing.Customer.Balance.Transaction.ID?
        public var livemode: Bool?
        public var number: String?
        public var outOfBandAmount: Int?
        public var pdf: String?
        @ExpandableOf<Stripe.Refunds.Refund> public var refund: Stripe.Refunds.Refund.ID?
        public var shippingCost: Note.Shipping.Cost?
        public var subtotalExcludingTax: Int?
        public var taxAmounts: [Note.Tax.Amount]?
        public var totalExcludingTax: Int?
        public var type: Note.`Type`?
        public var voidedAt: Date?

        public init(
            id: ID? = nil,
            currency: Stripe.Currency? = nil,
            invoice: Stripe.Billing.Invoice.ID? = nil,
            lines: Note.LineItem.List? = nil,
            memo: String? = nil,
            metadata: [String: String]? = nil,
            reason: Note.Reason? = nil,
            status: Note.Status? = nil,
            subtotal: Int? = nil,
            total: Int? = nil,
            object: String,
            amount: Int? = nil,
            amountShipping: Int? = nil,
            created: Date,
            customer: Stripe.Customers.Customer.ID? = nil,
            customerBalanceTransaction: Stripe.Billing.Customer.Balance.Transaction.ID? = nil,
            livemode: Bool? = nil,
            number: String? = nil,
            outOfBandAmount: Int? = nil,
            pdf: String? = nil,
            refund: Stripe.Refunds.Refund.ID? = nil,
            shippingCost: Note.Shipping.Cost? = nil,
            subtotalExcludingTax: Int? = nil,
            taxAmounts: [Note.Tax.Amount]? = nil,
            totalExcludingTax: Int? = nil,
            type: Note.`Type`? = nil,
            voidedAt: Date? = nil
        ) {
            self.id = id
            self.currency = currency
            self._invoice = Expandable(id: invoice)
            self.lines = lines
            self.memo = memo
            self.metadata = metadata
            self.reason = reason
            self.status = status
            self.subtotal = subtotal
            self.total = total
            self.object = object
            self.amount = amount
            self.amountShipping = amountShipping
            self.created = created
            self._customer = Expandable(id: customer)
            self._customerBalanceTransaction = Expandable(id: customerBalanceTransaction)
            self.livemode = livemode
            self.number = number
            self.outOfBandAmount = outOfBandAmount
            self.pdf = pdf
            self._refund = Expandable(id: refund)
            self.shippingCost = shippingCost
            self.subtotalExcludingTax = subtotalExcludingTax
            self.taxAmounts = taxAmounts
            self.totalExcludingTax = totalExcludingTax
            self.type = type
            self.voidedAt = voidedAt
        }
    }
}

extension Stripe.Billing.Credit.Note {
    public enum Reason: String, Codable, Sendable {
        case duplicate
        case fraudulent
        case orderChange = "order_change"
        case productUnsatisfactory = "product_unsatisfactory"
    }
}

extension Stripe.Billing.Credit.Note {
    public enum Status: String, Codable, Sendable {
        case issued
        case void
    }
}

extension Stripe.Billing.Credit.Note {
    public enum Shipping {}
}

extension Stripe.Billing.Credit.Note.Shipping {
    public struct Cost: Codable, Hashable, Sendable {
        public var amountSubtotal: Int?
        public var amountTax: Int?
        public var amountTotal: Int?
        @Expandable<Stripe.Products.Shipping.Rate, String> public var shippingRate: String?
        public var taxes: [Cost.Tax]?

        public init(
            amountSubtotal: Int? = nil,
            amountTax: Int? = nil,
            amountTotal: Int? = nil,
            shippingRate: String? = nil,
            taxes: [Cost.Tax]? = nil
        ) {
            self.amountSubtotal = amountSubtotal
            self.amountTax = amountTax
            self.amountTotal = amountTotal
            self._shippingRate = Expandable(id: shippingRate)
            self.taxes = taxes
        }
    }
}

extension Stripe.Billing.Credit.Note.Shipping.Cost {
    public struct Tax: Codable, Hashable, Sendable {
        public var amount: Int?
        public var rate: Stripe.Tax.Rate?

        public init(
            amount: Int? = nil,
            rate: Stripe.Tax.Rate? = nil
        ) {
            self.amount = amount
            self.rate = rate
        }
    }
}

extension Stripe.Billing.Credit.Note {
    public enum Tax {}
}

extension Stripe.Billing.Credit.Note.Tax {
    public struct Amount: Codable, Hashable, Sendable {
        public var amount: Int?
        public var inclusive: Bool?
        @ExpandableOf<Stripe.Tax.Rate> public var taxRate: Stripe.Tax.Rate.ID?

        public init(
            amount: Int? = nil,
            inclusive: Bool? = nil,
            taxRate: Stripe.Tax.Rate.ID? = nil
        ) {
            self.amount = amount
            self.inclusive = inclusive
            self._taxRate = Expandable(id: taxRate)
        }
    }
}

extension Stripe.Billing.Credit.Note {
    public enum `Type`: String, Codable, Sendable {
        case postPayment = "post_payment"
        case prePayment = "pre_payment"
    }
}

extension Stripe.Billing.Credit.Note {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Billing.Credit.Note]?
        public var hasMore: Bool?
        public var url: String?

        public init(
            object: String,
            data: [Stripe.Billing.Credit.Note]? = nil,
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
