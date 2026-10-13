import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Invoice {
    public enum LineItems {}
}

extension Stripe.Billing.Invoice.LineItems {
    public enum List {}
}

extension Stripe.Billing.Invoice.LineItems.List {
    public struct Request: Codable, Equatable, Sendable {
        public var endingBefore: String?
        public var limit: Int?
        public var startingAfter: String?

        public init(
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }

        private enum CodingKeys: String, CodingKey {
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }
    }
}

extension Stripe.Billing.Invoice.LineItems {
    public enum Update {}
}

extension Stripe.Billing.Invoice.LineItems.Update {
    public struct Request: Codable, Equatable, Sendable {
        public var amount: Int?
        public var description: String?
        public var discountable: Bool?
        public var metadata: [String: String]?
        public var quantity: Int?
        public var taxAmounts: [TaxAmount]?
        public var taxRates: [String]?

        public init(
            amount: Int? = nil,
            description: String? = nil,
            discountable: Bool? = nil,
            metadata: [String: String]? = nil,
            quantity: Int? = nil,
            taxAmounts: [TaxAmount]? = nil,
            taxRates: [String]? = nil
        ) {
            self.amount = amount
            self.description = description
            self.discountable = discountable
            self.metadata = metadata
            self.quantity = quantity
            self.taxAmounts = taxAmounts
            self.taxRates = taxRates
        }

        private enum CodingKeys: String, CodingKey {
            case amount
            case description
            case discountable
            case metadata
            case quantity
            case taxAmounts = "tax_amounts"
            case taxRates = "tax_rates"
        }
    }

    public struct TaxAmount: Codable, Equatable, Sendable {
        public var amount: Int
        public var taxRateData: TaxRateData?
        public var taxRate: String?
        public var taxable: Bool?

        public init(
            amount: Int,
            taxRateData: TaxRateData? = nil,
            taxRate: String? = nil,
            taxable: Bool? = nil
        ) {
            self.amount = amount
            self.taxRateData = taxRateData
            self.taxRate = taxRate
            self.taxable = taxable
        }

        private enum CodingKeys: String, CodingKey {
            case amount
            case taxRateData = "tax_rate_data"
            case taxRate = "tax_rate"
            case taxable
        }
    }

    public struct TaxRateData: Codable, Equatable, Sendable {
        public var displayName: String
        public var inclusive: Bool
        public var percentage: Double

        public init(
            displayName: String,
            inclusive: Bool,
            percentage: Double
        ) {
            self.displayName = displayName
            self.inclusive = inclusive
            self.percentage = percentage
        }

        private enum CodingKeys: String, CodingKey {
            case displayName = "display_name"
            case inclusive
            case percentage
        }
    }
}

extension Stripe.Billing.Invoice.LineItems {
    public enum AddLines {}
}

extension Stripe.Billing.Invoice.LineItems.AddLines {
    public struct Request: Codable, Equatable, Sendable {
        public var lines: [LineItem]
        public var invoiceMetadata: [String: String]?

        public init(
            lines: [LineItem],
            invoiceMetadata: [String: String]? = nil
        ) {
            self.lines = lines
            self.invoiceMetadata = invoiceMetadata
        }

        private enum CodingKeys: String, CodingKey {
            case lines
            case invoiceMetadata = "invoice_metadata"
        }
    }

    public struct LineItem: Codable, Equatable, Sendable {
        public var amount: Int?
        public var currency: Stripe.Currency?
        public var description: String?
        public var discountable: Bool?
        public var invoiceItem: String?
        public var metadata: [String: String]?
        public var price: Stripe.Products.Price.ID?
        public var priceData: PriceData?
        public var quantity: Int?
        public var taxAmounts: [Stripe.Billing.Invoice.LineItems.Update.TaxAmount]?
        public var taxRates: [String]?

        public init(
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            discountable: Bool? = nil,
            invoiceItem: String? = nil,
            metadata: [String: String]? = nil,
            price: Stripe.Products.Price.ID? = nil,
            priceData: PriceData? = nil,
            quantity: Int? = nil,
            taxAmounts: [Stripe.Billing.Invoice.LineItems.Update.TaxAmount]? = nil,
            taxRates: [String]? = nil
        ) {
            self.amount = amount
            self.currency = currency
            self.description = description
            self.discountable = discountable
            self.invoiceItem = invoiceItem
            self.metadata = metadata
            self.price = price
            self.priceData = priceData
            self.quantity = quantity
            self.taxAmounts = taxAmounts
            self.taxRates = taxRates
        }

        private enum CodingKeys: String, CodingKey {
            case amount
            case currency
            case description
            case discountable
            case invoiceItem = "invoice_item"
            case metadata
            case price
            case priceData = "price_data"
            case quantity
            case taxAmounts = "tax_amounts"
            case taxRates = "tax_rates"
        }
    }

    public struct PriceData: Codable, Equatable, Sendable {
        public var currency: Stripe.Currency
        public var product: Stripe.Products.Product.ID
        public var unitAmount: Int?
        public var unitAmountDecimal: String?

        public init(
            currency: Stripe.Currency,
            product: Stripe.Products.Product.ID,
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil
        ) {
            self.currency = currency
            self.product = product
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
        }

        private enum CodingKeys: String, CodingKey {
            case currency
            case product
            case unitAmount = "unit_amount"
            case unitAmountDecimal = "unit_amount_decimal"
        }
    }
}

extension Stripe.Billing.Invoice.LineItems {
    public enum UpdateLines {}
}

extension Stripe.Billing.Invoice.LineItems.UpdateLines {
    public struct Request: Codable, Equatable, Sendable {
        public var lines: [LineItem]
        public var invoiceMetadata: [String: String]?

        public init(
            lines: [LineItem],
            invoiceMetadata: [String: String]? = nil
        ) {
            self.lines = lines
            self.invoiceMetadata = invoiceMetadata
        }

        private enum CodingKeys: String, CodingKey {
            case lines
            case invoiceMetadata = "invoice_metadata"
        }
    }

    public struct LineItem: Codable, Equatable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var amount: Int?
        public var description: String?
        public var discountable: Bool?
        public var metadata: [String: String]?
        public var quantity: Int?
        public var taxAmounts: [Stripe.Billing.Invoice.LineItems.Update.TaxAmount]?
        public var taxRates: [String]?

        public init(
            id: ID,
            amount: Int? = nil,
            description: String? = nil,
            discountable: Bool? = nil,
            metadata: [String: String]? = nil,
            quantity: Int? = nil,
            taxAmounts: [Stripe.Billing.Invoice.LineItems.Update.TaxAmount]? = nil,
            taxRates: [String]? = nil
        ) {
            self.id = id
            self.amount = amount
            self.description = description
            self.discountable = discountable
            self.metadata = metadata
            self.quantity = quantity
            self.taxAmounts = taxAmounts
            self.taxRates = taxRates
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case amount
            case description
            case discountable
            case metadata
            case quantity
            case taxAmounts = "tax_amounts"
            case taxRates = "tax_rates"
        }
    }
}

extension Stripe.Billing.Invoice.LineItems {
    public enum RemoveLines {}
}

extension Stripe.Billing.Invoice.LineItems.RemoveLines {
    public struct Request: Codable, Equatable, Sendable {
        public var lines: [LineItem]
        public var invoiceMetadata: [String: String]?

        public init(
            lines: [LineItem],
            invoiceMetadata: [String: String]? = nil
        ) {
            self.lines = lines
            self.invoiceMetadata = invoiceMetadata
        }

        private enum CodingKeys: String, CodingKey {
            case lines
            case invoiceMetadata = "invoice_metadata"
        }
    }

    public struct LineItem: Codable, Equatable, Sendable {
        public var id: Stripe.Billing.Invoice.LineItem.ID

        public init(id: Stripe.Billing.Invoice.LineItem.ID) {
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case id
        }
    }
}
