public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.InvoiceItems {
    public enum Create {}

    public enum Update {}

    public enum List {}
}

extension Stripe.Billing.InvoiceItems.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let customer: Stripe.Customers.Customer.ID
        public let amount: Int?
        public let currency: Stripe.Currency?
        public let description: String?
        public let discountable: Bool?
        public let discounts: [Discount]?
        public let invoice: Stripe.Billing.Invoice.ID?
        public let metadata: [String: String]?
        public let period: Period?
        public let priceData: PriceData?
        public let pricing: Pricing?
        public let quantity: Int?
        public let subscription: Stripe.Billing.Subscription.ID?
        public let taxBehavior: String?
        public let taxCode: String?
        public let taxRates: [String]?
        public let unitAmountDecimal: String?

        private enum CodingKeys: String, CodingKey {
            case customer
            case amount
            case currency
            case description
            case discountable
            case discounts
            case invoice
            case metadata
            case period
            case priceData = "price_data"
            case pricing
            case quantity
            case subscription
            case taxBehavior = "tax_behavior"
            case taxCode = "tax_code"
            case taxRates = "tax_rates"
            case unitAmountDecimal = "unit_amount_decimal"
        }

        public init(
            customer: Stripe.Customers.Customer.ID,
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            discountable: Bool? = nil,
            discounts: [Discount]? = nil,
            invoice: Stripe.Billing.Invoice.ID? = nil,
            metadata: [String: String]? = nil,
            period: Period? = nil,
            priceData: PriceData? = nil,
            pricing: Pricing? = nil,
            quantity: Int? = nil,
            subscription: Stripe.Billing.Subscription.ID? = nil,
            taxBehavior: String? = nil,
            taxCode: String? = nil,
            taxRates: [String]? = nil,
            unitAmountDecimal: String? = nil
        ) {
            self.customer = customer
            self.amount = amount
            self.currency = currency
            self.description = description
            self.discountable = discountable
            self.discounts = discounts
            self.invoice = invoice
            self.metadata = metadata
            self.period = period
            self.priceData = priceData
            self.pricing = pricing
            self.quantity = quantity
            self.subscription = subscription
            self.taxBehavior = taxBehavior
            self.taxCode = taxCode
            self.taxRates = taxRates
            self.unitAmountDecimal = unitAmountDecimal
        }
    }

    public struct Discount: Codable, Equatable, Sendable {
        public let coupon: String?
        public let discount: String?
        public let promotionCode: Promotion.Code.ID?

        private enum CodingKeys: String, CodingKey {
            case coupon
            case discount
            case promotionCode = "promotion_code"
        }

        public init(
            coupon: String? = nil,
            discount: String? = nil,
            promotionCode: Promotion.Code.ID? = nil
        ) {
            self.coupon = coupon
            self.discount = discount
            self.promotionCode = promotionCode
        }
    }

    public struct Period: Codable, Equatable, Sendable {
        public let end: Date
        public let start: Date

        public init(end: Date, start: Date) {
            self.end = end
            self.start = start
        }
    }

    public struct PriceData: Codable, Equatable, Sendable {
        public let currency: Stripe.Currency
        public let product: Stripe.Products.Product.ID
        public let taxBehavior: String?
        public let unitAmount: Int?
        public let unitAmountDecimal: String?

        private enum CodingKeys: String, CodingKey {
            case currency
            case product
            case taxBehavior = "tax_behavior"
            case unitAmount = "unit_amount"
            case unitAmountDecimal = "unit_amount_decimal"
        }

        public init(
            currency: Stripe.Currency,
            product: Stripe.Products.Product.ID,
            taxBehavior: String? = nil,
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil
        ) {
            self.currency = currency
            self.product = product
            self.taxBehavior = taxBehavior
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
        }
    }

    public struct Pricing: Codable, Equatable, Sendable {
        public let price: Stripe.Products.Price.ID?

        public init(price: Stripe.Products.Price.ID? = nil) {
            self.price = price
        }
    }
}

extension Stripe.Billing.InvoiceItems.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let amount: Int?
        public let description: String?
        public let discountable: Bool?
        public let discounts: [Stripe.Billing.InvoiceItems.Create.Discount]?
        public let metadata: [String: String]?
        public let period: Stripe.Billing.InvoiceItems.Create.Period?
        public let priceData: Stripe.Billing.InvoiceItems.Create.PriceData?
        public let pricing: Stripe.Billing.InvoiceItems.Create.Pricing?
        public let quantity: Int?
        public let taxBehavior: String?
        public let taxCode: String?
        public let taxRates: [String]?
        public let unitAmountDecimal: String?

        private enum CodingKeys: String, CodingKey {
            case amount
            case description
            case discountable
            case discounts
            case metadata
            case period
            case priceData = "price_data"
            case pricing
            case quantity
            case taxBehavior = "tax_behavior"
            case taxCode = "tax_code"
            case taxRates = "tax_rates"
            case unitAmountDecimal = "unit_amount_decimal"
        }

        public init(
            amount: Int? = nil,
            description: String? = nil,
            discountable: Bool? = nil,
            discounts: [Stripe.Billing.InvoiceItems.Create.Discount]? = nil,
            metadata: [String: String]? = nil,
            period: Stripe.Billing.InvoiceItems.Create.Period? = nil,
            priceData: Stripe.Billing.InvoiceItems.Create.PriceData? = nil,
            pricing: Stripe.Billing.InvoiceItems.Create.Pricing? = nil,
            quantity: Int? = nil,
            taxBehavior: String? = nil,
            taxCode: String? = nil,
            taxRates: [String]? = nil,
            unitAmountDecimal: String? = nil
        ) {
            self.amount = amount
            self.description = description
            self.discountable = discountable
            self.discounts = discounts
            self.metadata = metadata
            self.period = period
            self.priceData = priceData
            self.pricing = pricing
            self.quantity = quantity
            self.taxBehavior = taxBehavior
            self.taxCode = taxCode
            self.taxRates = taxRates
            self.unitAmountDecimal = unitAmountDecimal
        }
    }
}

extension Stripe.Billing.InvoiceItems.List {
    public struct Request: Codable, Equatable, Sendable {
        public let created: Stripe.DateFilter?
        public let customer: Stripe.Customers.Customer.ID?
        public let endingBefore: String?
        public let invoice: Stripe.Billing.Invoice.ID?
        public let limit: Int?
        public let pending: String?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case created
            case customer
            case endingBefore = "ending_before"
            case invoice
            case limit
            case pending
            case startingAfter = "starting_after"
        }

        public init(
            created: Stripe.DateFilter? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            endingBefore: String? = nil,
            invoice: Stripe.Billing.Invoice.ID? = nil,
            limit: Int? = nil,
            pending: String? = nil,
            startingAfter: String? = nil
        ) {
            self.created = created
            self.customer = customer
            self.endingBefore = endingBefore
            self.invoice = invoice
            self.limit = limit
            self.pending = pending
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Billing.Invoice.Item]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }

        public init(
            object: String,
            url: String,
            hasMore: Bool,
            data: [Stripe.Billing.Invoice.Item]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}
