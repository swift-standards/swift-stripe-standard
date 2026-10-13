public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Subscription.Schedule {
    public enum Update {}
}

extension Stripe.Billing.Subscription.Schedule.Update {
    public struct Request: Codable, Equatable, Sendable {
        public var endBehavior: Stripe.Billing.Subscription.Schedule.EndBehavior?
        public var phases: [Stripe.Billing.Subscription.Schedule.Update.Request.Phase]?
        public var defaultSettings: Stripe.Billing.Subscription.Schedule.DefaultSettings?
        public var metadata: [String: String]?
        public var prorationBehavior: Stripe.Billing.Subscription.Schedule.ProrationBehavior?

        public init(
            endBehavior: Stripe.Billing.Subscription.Schedule.EndBehavior? = nil,
            phases: [Stripe.Billing.Subscription.Schedule.Update.Request.Phase]? = nil,
            defaultSettings: Stripe.Billing.Subscription.Schedule.DefaultSettings? = nil,
            metadata: [String: String]? = nil,
            prorationBehavior: Stripe.Billing.Subscription.Schedule.ProrationBehavior? = nil
        ) {
            self.endBehavior = endBehavior
            self.phases = phases
            self.defaultSettings = defaultSettings
            self.metadata = metadata
            self.prorationBehavior = prorationBehavior
        }

        private enum CodingKeys: String, CodingKey {
            case endBehavior = "end_behavior"
            case phases
            case defaultSettings = "default_settings"
            case metadata
            case prorationBehavior = "proration_behavior"
        }
    }
}

extension Stripe.Billing.Subscription.Schedule.Update.Request {
    public struct Phase: Codable, Equatable, Sendable {
        public var items: [Item]
        public var addInvoiceItems: [AddInvoiceItem]?
        public var applicationFeePercent: Double?
        public var automaticTax: AutomaticTax?
        public var billingCycleAnchor: Stripe.Billing.Subscription.Schedule.BillingCycleAnchor?
        public var billingThresholds: PhaseBillingThresholds?
        public var collectionMethod: Stripe.Billing.Subscription.Schedule.CollectionMethod?
        public var currency: Stripe.Currency?
        public var defaultPaymentMethod: Stripe.PaymentMethods.PaymentMethod.ID?
        public var defaultTaxRates: [String]?
        public var description: String?
        public var discounts: [Stripe.Billing.Subscription.Schedule.Discount]?
        public var duration: Duration?
        public var endDate: Date?
        public var invoiceSettings: Stripe.Billing.Subscription.Schedule.InvoiceSettings?
        public var iterations: Int?
        public var metadata: [String: String]?
        public var onBehalfOf: String?
        public var prorationBehavior: Stripe.Billing.Subscription.Schedule.ProrationBehavior?
        public var startDate: Stripe.Billing.Subscription.Schedule.StartDate?
        public var transferData: TransferData?
        public var trial: Bool?
        public var trialEnd: Date?

        public init(
            items: [Item],
            addInvoiceItems: [AddInvoiceItem]? = nil,
            applicationFeePercent: Double? = nil,
            automaticTax: AutomaticTax? = nil,
            billingCycleAnchor: Stripe.Billing.Subscription.Schedule.BillingCycleAnchor? = nil,
            billingThresholds: PhaseBillingThresholds? = nil,
            collectionMethod: Stripe.Billing.Subscription.Schedule.CollectionMethod? = nil,
            currency: Stripe.Currency? = nil,
            defaultPaymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            defaultTaxRates: [String]? = nil,
            description: String? = nil,
            discounts: [Stripe.Billing.Subscription.Schedule.Discount]? = nil,
            duration: Duration? = nil,
            endDate: Date? = nil,
            invoiceSettings: Stripe.Billing.Subscription.Schedule.InvoiceSettings? = nil,
            iterations: Int? = nil,
            metadata: [String: String]? = nil,
            onBehalfOf: String? = nil,
            prorationBehavior: Stripe.Billing.Subscription.Schedule.ProrationBehavior? = nil,
            startDate: Stripe.Billing.Subscription.Schedule.StartDate? = nil,
            transferData: TransferData? = nil,
            trial: Bool? = nil,
            trialEnd: Date? = nil
        ) {
            self.items = items
            self.addInvoiceItems = addInvoiceItems
            self.applicationFeePercent = applicationFeePercent
            self.automaticTax = automaticTax
            self.billingCycleAnchor = billingCycleAnchor
            self.billingThresholds = billingThresholds
            self.collectionMethod = collectionMethod
            self.currency = currency
            self.defaultPaymentMethod = defaultPaymentMethod
            self.defaultTaxRates = defaultTaxRates
            self.description = description
            self.discounts = discounts
            self.duration = duration
            self.endDate = endDate
            self.invoiceSettings = invoiceSettings
            self.iterations = iterations
            self.metadata = metadata
            self.onBehalfOf = onBehalfOf
            self.prorationBehavior = prorationBehavior
            self.startDate = startDate
            self.transferData = transferData
            self.trial = trial
            self.trialEnd = trialEnd
        }

        private enum CodingKeys: String, CodingKey {
            case items
            case addInvoiceItems = "add_invoice_items"
            case applicationFeePercent = "application_fee_percent"
            case automaticTax = "automatic_tax"
            case billingCycleAnchor = "billing_cycle_anchor"
            case billingThresholds = "billing_thresholds"
            case collectionMethod = "collection_method"
            case currency
            case defaultPaymentMethod = "default_payment_method"
            case defaultTaxRates = "default_tax_rates"
            case description
            case discounts
            case duration
            case endDate = "end_date"
            case invoiceSettings = "invoice_settings"
            case iterations
            case metadata
            case onBehalfOf = "on_behalf_of"
            case prorationBehavior = "proration_behavior"
            case startDate = "start_date"
            case transferData = "transfer_data"
            case trial
            case trialEnd = "trial_end"
        }
    }
}

extension Stripe.Billing.Subscription.Schedule.Update.Request.Phase {
    public struct AutomaticTax: Codable, Equatable, Sendable {
        public var enabled: Bool
        public var liability: Liability?

        public init(enabled: Bool, liability: Liability? = nil) {
            self.enabled = enabled
            self.liability = liability
        }

        public struct Liability: Codable, Equatable, Sendable {
            public var account: String?
            public var type: String

            public init(account: String? = nil, type: String) {
                self.account = account
                self.type = type
            }
        }
    }

    public struct Duration: Codable, Equatable, Sendable {
        public var interval: Interval
        public var intervalCount: Int

        public enum Interval: String, Codable, Equatable, Sendable {
            case day
            case week
            case month
            case year
        }

        public init(interval: Interval, intervalCount: Int) {
            self.interval = interval
            self.intervalCount = intervalCount
        }

        private enum CodingKeys: String, CodingKey {
            case interval
            case intervalCount = "interval_count"
        }
    }

    public struct TransferData: Codable, Equatable, Sendable {
        public var destination: String
        public var amountPercent: Double?

        public init(destination: String, amountPercent: Double? = nil) {
            self.destination = destination
            self.amountPercent = amountPercent
        }

        private enum CodingKeys: String, CodingKey {
            case destination
            case amountPercent = "amount_percent"
        }
    }

    public struct PhaseBillingThresholds: Codable, Equatable, Sendable {
        public var amountGte: Int?
        public var resetBillingCycleAnchor: Bool?

        public init(amountGte: Int? = nil, resetBillingCycleAnchor: Bool? = nil) {
            self.amountGte = amountGte
            self.resetBillingCycleAnchor = resetBillingCycleAnchor
        }

        private enum CodingKeys: String, CodingKey {
            case amountGte = "amount_gte"
            case resetBillingCycleAnchor = "reset_billing_cycle_anchor"
        }
    }
}

extension Stripe.Billing.Subscription.Schedule.Update.Request.Phase {
    public struct AddInvoiceItem: Codable, Equatable, Sendable {
        public var price: Stripe.Products.Price.ID?
        public var priceData: AddInvoiceItemPriceData?
        public var quantity: Int?
        public var taxRates: [String]?

        public init(
            price: Stripe.Products.Price.ID? = nil,
            priceData: AddInvoiceItemPriceData? = nil,
            quantity: Int? = nil,
            taxRates: [String]? = nil
        ) {
            self.price = price
            self.priceData = priceData
            self.quantity = quantity
            self.taxRates = taxRates
        }

        private enum CodingKeys: String, CodingKey {
            case price
            case priceData = "price_data"
            case quantity
            case taxRates = "tax_rates"
        }
    }

    public struct AddInvoiceItemPriceData: Codable, Equatable, Sendable {
        public var currency: Stripe.Currency
        public var product: Stripe.Products.Product.ID
        public var unitAmount: Int?
        public var unitAmountDecimal: String?
        public var taxBehavior: String?

        public init(
            currency: Stripe.Currency,
            product: Stripe.Products.Product.ID,
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil,
            taxBehavior: String? = nil
        ) {
            self.currency = currency
            self.product = product
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
            self.taxBehavior = taxBehavior
        }

        private enum CodingKeys: String, CodingKey {
            case currency
            case product
            case unitAmount = "unit_amount"
            case unitAmountDecimal = "unit_amount_decimal"
            case taxBehavior = "tax_behavior"
        }
    }

    public struct Item: Codable, Equatable, Sendable {
        public var price: Stripe.Products.Price.ID?
        public var priceData: PriceData?
        public var quantity: Int?
        public var taxRates: [String]?
        public var billingThresholds: Stripe.Billing.Subscription.Schedule.BillingThresholds?

        public init(
            price: Stripe.Products.Price.ID? = nil,
            priceData: PriceData? = nil,
            quantity: Int? = nil,
            taxRates: [String]? = nil,
            billingThresholds: Stripe.Billing.Subscription.Schedule.BillingThresholds? = nil
        ) {
            self.price = price
            self.priceData = priceData
            self.quantity = quantity
            self.taxRates = taxRates
            self.billingThresholds = billingThresholds
        }

        private enum CodingKeys: String, CodingKey {
            case price
            case priceData = "price_data"
            case quantity
            case taxRates = "tax_rates"
            case billingThresholds = "billing_thresholds"
        }
    }
}

extension Stripe.Billing.Subscription.Schedule.Update.Request.Phase.Item {
    public struct PriceData: Codable, Equatable, Sendable {
        public var currency: Stripe.Currency
        public var product: Stripe.Products.Product.ID
        public var recurring: Recurring
        public var unitAmount: Int?
        public var unitAmountDecimal: String?
        public var taxBehavior: String?

        public init(
            currency: Stripe.Currency,
            product: Stripe.Products.Product.ID,
            recurring: Recurring,
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil,
            taxBehavior: String? = nil
        ) {
            self.currency = currency
            self.product = product
            self.recurring = recurring
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
            self.taxBehavior = taxBehavior
        }

        private enum CodingKeys: String, CodingKey {
            case currency
            case product
            case recurring
            case unitAmount = "unit_amount"
            case unitAmountDecimal = "unit_amount_decimal"
            case taxBehavior = "tax_behavior"
        }
    }

    public struct Recurring: Codable, Equatable, Sendable {
        public var interval: String
        public var intervalCount: Int?

        public init(
            interval: String,
            intervalCount: Int? = nil
        ) {
            self.interval = interval
            self.intervalCount = intervalCount
        }

        private enum CodingKeys: String, CodingKey {
            case interval
            case intervalCount = "interval_count"
        }
    }
}
