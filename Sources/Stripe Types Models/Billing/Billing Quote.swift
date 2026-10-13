public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing {
    public struct Quote: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var lineItems: Stripe.Billing.Quote.LineItem.List?
        public var metadata: [String: String]?
        public var object: String
        public var amountSubtotal: Int?
        public var amountTotal: Int?
        public var application: String?
        public var applicationFeeAmount: Int?
        public var applicationFeePercent: String?
        public var automaticTax: Stripe.Billing.Quote.AutomaticTax?
        public var collectionMethod: Stripe.Billing.Quote.CollectionMethod?
        public var computed: Stripe.Billing.Quote.Computed?
        public var created: Date
        public var currency: Stripe.Currency?
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        @ExpandableCollection<Stripe.Tax.Rate> public var defaultTaxRates: [String]?
        public var description: String?
        @ExpandableCollection<Stripe.Products.Discount> public var discounts: [String]?
        public var expiresAt: Date?
        public var footer: String?
        public var fromQuote: Stripe.Billing.Quote.FromQuote?
        public var header: String?
        @Expandable<Invoice, Invoice.ID> public var invoice
        public var invoiceSettings: Stripe.Billing.Quote.InvoiceSettings?
        public var livemode: Bool
        public var number: String?
        @ExpandableOf<Stripe.Connect.Account> public var onBehalfOf: Stripe.Connect.Account.ID?
        public var status: Stripe.Billing.Quote.Status?
        public var statusTransitions: Stripe.Billing.Quote.StatusTransition?
        @ExpandableOf<Stripe.Billing.Subscription> public var subscription: Stripe.Billing.Subscription.ID?
        public var subscriptionData: Stripe.Billing.Quote.SubscriptionData?
        @ExpandableOf<Stripe.Billing.Subscription.Schedule> public var subscriptionSchedule
        @ExpandableOf<Stripe.Billing.TestClocks.TestClock> public var testClock: Stripe.Billing.TestClocks.TestClock.ID?
        public var totalDetails: Stripe.Billing.Quote.TotalDetails?
        public var transferData: Stripe.Billing.Quote.TransferData?

        public init(
            id: ID,
            lineItems: Stripe.Billing.Quote.LineItem.List? = nil,
            metadata: [String: String]? = nil,
            object: String,
            amountSubtotal: Int? = nil,
            amountTotal: Int? = nil,
            application: String? = nil,
            applicationFeeAmount: Int? = nil,
            applicationFeePercent: String? = nil,
            automaticTax: Stripe.Billing.Quote.AutomaticTax? = nil,
            collectionMethod: Stripe.Billing.Quote.CollectionMethod? = nil,
            computed: Stripe.Billing.Quote.Computed? = nil,
            created: Date,
            currency: Stripe.Currency? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            defaultTaxRates: [String]? = nil,
            description: String? = nil,
            discounts: [String]? = nil,
            expiresAt: Date? = nil,
            footer: String? = nil,
            fromQuote: Stripe.Billing.Quote.FromQuote? = nil,
            header: String? = nil,
            invoice: Stripe.Billing.Invoice.ID? = nil,
            invoiceSettings: Stripe.Billing.Quote.InvoiceSettings? = nil,
            livemode: Bool,
            number: String? = nil,
            onBehalfOf: Stripe.Connect.Account.ID? = nil,
            status: Stripe.Billing.Quote.Status? = nil,
            statusTransitions: Stripe.Billing.Quote.StatusTransition? = nil,
            subscription: Stripe.Billing.Subscription.ID? = nil,
            subscriptionData: Stripe.Billing.Quote.SubscriptionData? = nil,
            subscriptionSchedule: Stripe.Billing.Subscription.Schedule.ID? = nil,
            testClock: Stripe.Billing.TestClocks.TestClock.ID? = nil,
            totalDetails: Stripe.Billing.Quote.TotalDetails? = nil,
            transferData: Stripe.Billing.Quote.TransferData? = nil
        ) {
            self.id = id
            self.lineItems = lineItems
            self.metadata = metadata
            self.object = object
            self.amountSubtotal = amountSubtotal
            self.amountTotal = amountTotal
            self.application = application
            self.applicationFeeAmount = applicationFeeAmount
            self.applicationFeePercent = applicationFeePercent
            self.automaticTax = automaticTax
            self.collectionMethod = collectionMethod
            self.computed = computed
            self.created = created
            self.currency = currency
            self._customer = Expandable(id: customer)
            self._defaultTaxRates = ExpandableCollection(ids: defaultTaxRates)
            self.description = description
            self._discounts = ExpandableCollection(ids: discounts)
            self.expiresAt = expiresAt
            self.footer = footer
            self.fromQuote = fromQuote
            self.header = header
            self._invoice = Expandable(id: invoice)
            self.invoiceSettings = invoiceSettings
            self.livemode = livemode
            self.number = number
            self._onBehalfOf = Expandable(id: onBehalfOf)
            self.status = status
            self.statusTransitions = statusTransitions
            self._subscription = Expandable(id: subscription)
            self.subscriptionData = subscriptionData
            self._subscriptionSchedule = Expandable(id: subscriptionSchedule)
            self._testClock = Expandable(id: testClock)
            self.totalDetails = totalDetails
            self.transferData = transferData
        }
    }
}

extension Stripe.Billing.Quote {
    public struct AutomaticTax: Codable, Hashable, Sendable {
        public var enabled: Bool
        public var status: Stripe.Billing.Quote.AutomaticTax.Status?

        public init(
            enabled: Bool,
            status: Stripe.Billing.Quote.AutomaticTax.Status? = nil
        ) {
            self.enabled = enabled
            self.status = status
        }
    }
}

extension Stripe.Billing.Quote.AutomaticTax {
    public enum Status: String, Codable, Sendable {
        case requiresLocationInputs = "requires_location_inputs"
        case complete
        case failed
    }
}

extension Stripe.Billing.Quote {
    public enum CollectionMethod: String, Codable, Sendable {
        case chargeAutomatically = "charge_automatically"
        case sendInvoice = "send_invoice"
    }
}

extension Stripe.Billing.Quote {
    public struct Computed: Codable, Hashable, Sendable {
        public var recurring: Stripe.Billing.Quote.Computed.Recurring?
        public var upfront: Stripe.Billing.Quote.Computed.Upfront?

        public init(
            recurring: Stripe.Billing.Quote.Computed.Recurring? = nil,
            upfront: Stripe.Billing.Quote.Computed.Upfront? = nil
        ) {
            self.recurring = recurring
            self.upfront = upfront
        }
    }
}

extension Stripe.Billing.Quote.Computed {
    public struct Recurring: Codable, Hashable, Sendable {
        public var amountSubtotal: Int?
        public var amountTotal: Int?
        public var interval: Stripe.Billing.Plan.Interval?
        public var intervalCount: Int?
        public var totalDetails: Stripe.Billing.Quote.Computed.Recurring.TotalDetails?

        public init(
            amountSubtotal: Int? = nil,
            amountTotal: Int? = nil,
            interval: Stripe.Billing.Plan.Interval? = nil,
            intervalCount: Int? = nil,
            totalDetails: Stripe.Billing.Quote.Computed.Recurring.TotalDetails? = nil
        ) {
            self.amountSubtotal = amountSubtotal
            self.amountTotal = amountTotal
            self.interval = interval
            self.intervalCount = intervalCount
            self.totalDetails = totalDetails
        }
    }
}

extension Stripe.Billing.Quote.Computed.Recurring {
    public struct TotalDetails: Codable, Hashable, Sendable {
        public var amountDiscount: Int?
        public var amountShipping: Int?
        public var amountTax: Int?
        public var breakdown: Stripe.Billing.Quote.Computed.Recurring.TotalDetails.Breakdown?

        public init(
            amountDiscount: Int? = nil,
            amountShipping: Int? = nil,
            amountTax: Int? = nil,
            breakdown: Stripe.Billing.Quote.Computed.Recurring.TotalDetails.Breakdown? = nil
        ) {
            self.amountDiscount = amountDiscount
            self.amountShipping = amountShipping
            self.amountTax = amountTax
            self.breakdown = breakdown
        }
    }
}

extension Stripe.Billing.Quote.Computed.Recurring.TotalDetails {
    public struct Breakdown: Codable, Hashable, Sendable {
        public var discounts: [Stripe.Billing.Quote.Computed.Recurring.TotalDetails.Breakdown.Discount]?
        public var taxes: [Stripe.Billing.Quote.Computed.Recurring.TotalDetails.Breakdown.Tax]?

        public init(
            discounts: [Stripe.Billing.Quote.Computed.Recurring.TotalDetails.Breakdown.Discount]? =
                nil,
            taxes: [Stripe.Billing.Quote.Computed.Recurring.TotalDetails.Breakdown.Tax]? = nil
        ) {
            self.discounts = discounts
            self.taxes = taxes
        }
    }
}

extension Stripe.Billing.Quote.Computed.Recurring.TotalDetails.Breakdown {
    public struct Discount: Codable, Hashable, Sendable {
        public var amount: Int?
        public var discount: Stripe.Products.Discount?

        public init(
            amount: Int? = nil,
            discount: Stripe.Products.Discount? = nil
        ) {
            self.amount = amount
            self.discount = discount
        }
    }
}

extension Stripe.Billing.Quote.Computed.Recurring.TotalDetails.Breakdown {
    public struct Tax: Codable, Hashable, Sendable {
        public var amount: Int?
        public var rate: Stripe.Tax.Rate?
        public var taxabilityReason: Stripe.Billing.Quote.Computed.Recurring.TotalDetails.Breakdown.Tax.TaxabilityReason?

        public init(
            amount: Int? = nil,
            rate: Stripe.Tax.Rate? = nil,
            taxabilityReason: Stripe.Billing.Quote.Computed.Recurring.TotalDetails.Breakdown.Tax
                .TaxabilityReason? = nil
        ) {
            self.amount = amount
            self.rate = rate
            self.taxabilityReason = taxabilityReason
        }
    }
}

extension Stripe.Billing.Quote.Computed.Recurring.TotalDetails.Breakdown.Tax {
    public enum TaxabilityReason: String, Codable, Sendable {
        case vatExempt = "vat_exempt"
        case jurisdictionUnsupported = "jurisdiction_unsupported"
        case excludedTerritory = "excluded_territory"
        case standardRated = "standard_rated"
        case reducedRated = "reduced_rated"
        case zeroRated = "zero_rated"
        case reverseCharge = "reverse_charge"
        case customerExempt = "customer_exempt"
        case productExempt = "product_exempt"
        case productExemptHoliday = "product_exempt_holiday"
        case portionStandardRated = "portion_standard_rated"
        case portionReducedRated = "portion_reduced_rated"
        case portionProductExempt = "portion_product_exempt"
        case taxableBasisReduced = "taxable_basis_reduced"
        case notCollecting = "not_collecting"
        case notSubjectToTax = "not_subject_to_tax"
        case notSupported = "not_supported"
        case proportionallyRated = "proportionally_rated"
    }
}

extension Stripe.Billing.Quote.Computed {
    public struct Upfront: Codable, Hashable, Sendable {
        public var amountSubtotal: Int?
        public var amountTotal: Int?
        public var lineItems: Stripe.Billing.Quote.LineItem.List?
        public var totalDetails: Stripe.Billing.Quote.Computed.Upfront.TotalDetails?

        public init(
            amountSubtotal: Int? = nil,
            amountTotal: Int? = nil,
            lineItems: Stripe.Billing.Quote.LineItem.List? = nil,
            totalDetails: Stripe.Billing.Quote.Computed.Upfront.TotalDetails? = nil
        ) {
            self.amountSubtotal = amountSubtotal
            self.amountTotal = amountTotal
            self.lineItems = lineItems
            self.totalDetails = totalDetails
        }
    }
}

extension Stripe.Billing.Quote.Computed.Upfront {
    public struct TotalDetails: Codable, Hashable, Sendable {
        public var amountDiscount: Int?
        public var amountShipping: Int?
        public var amountTax: Int?
        public var breakdown: Stripe.Billing.Quote.Computed.Upfront.TotalDetails.Breakdown?

        public init(
            amountDiscount: Int? = nil,
            amountShipping: Int? = nil,
            amountTax: Int? = nil,
            breakdown: Stripe.Billing.Quote.Computed.Upfront.TotalDetails.Breakdown? = nil
        ) {
            self.amountDiscount = amountDiscount
            self.amountShipping = amountShipping
            self.amountTax = amountTax
            self.breakdown = breakdown
        }
    }
}

extension Stripe.Billing.Quote.Computed.Upfront.TotalDetails {
    public struct Breakdown: Codable, Hashable, Sendable {
        public var discounts: [Stripe.Billing.Quote.Computed.Upfront.TotalDetails.Breakdown.Discount]?
        public var taxes: [Stripe.Billing.Quote.Computed.Upfront.TotalDetails.Breakdown.Tax]?

        public init(
            discounts: [Stripe.Billing.Quote.Computed.Upfront.TotalDetails.Breakdown.Discount]? =
                nil,
            taxes: [Stripe.Billing.Quote.Computed.Upfront.TotalDetails.Breakdown.Tax]? = nil
        ) {
            self.discounts = discounts
            self.taxes = taxes
        }
    }
}

extension Stripe.Billing.Quote.Computed.Upfront.TotalDetails.Breakdown {
    public struct Discount: Codable, Hashable, Sendable {
        public var amount: Int?
        public var discount: Stripe.Products.Discount?

        public init(
            amount: Int? = nil,
            discount: Stripe.Products.Discount? = nil
        ) {
            self.amount = amount
            self.discount = discount
        }
    }
}

extension Stripe.Billing.Quote.Computed.Upfront.TotalDetails.Breakdown {
    public struct Tax: Codable, Hashable, Sendable {
        public var amount: Int?
        public var rate: Stripe.Tax.Rate?
        public var taxabilityReason: Stripe.Billing.Quote.Computed.Upfront.TotalDetails.Breakdown.Tax.TaxabilityReason?

        public init(
            amount: Int? = nil,
            rate: Stripe.Tax.Rate? = nil,
            taxabilityReason: Stripe.Billing.Quote.Computed.Upfront.TotalDetails.Breakdown.Tax
                .TaxabilityReason? = nil
        ) {
            self.amount = amount
            self.rate = rate
            self.taxabilityReason = taxabilityReason
        }
    }
}

extension Stripe.Billing.Quote.Computed.Upfront.TotalDetails.Breakdown.Tax {
    public enum TaxabilityReason: String, Codable, Sendable {
        case vatExempt = "vat_exempt"
        case jurisdictionUnsupported = "jurisdiction_unsupported"
        case excludedTerritory = "excluded_territory"
        case standardRated = "standard_rated"
        case reducedRated = "reduced_rated"
        case zeroRated = "zero_rated"
        case reverseCharge = "reverse_charge"
        case customerExempt = "customer_exempt"
        case productExempt = "product_exempt"
        case productExemptHoliday = "product_exempt_holiday"
        case portionStandardRated = "portion_standard_rated"
        case portionReducedRated = "portion_reduced_rated"
        case portionProductExempt = "portion_product_exempt"
        case taxableBasisReduced = "taxable_basis_reduced"
        case notCollecting = "not_collecting"
        case notSubjectToTax = "not_subject_to_tax"
        case notSupported = "not_supported"
        case proportionallyRated = "proportionally_rated"
    }
}

extension Stripe.Billing.Quote {
    public struct FromQuote: Codable, Hashable, Sendable {
        public var isRevision: Bool?
        @ExpandableOf<Stripe.Billing.Quote> public var quote: Stripe.Billing.Quote.ID?

        public init(
            isRevision: Bool? = nil,
            quote: Stripe.Billing.Quote.ID? = nil
        ) {
            self.isRevision = isRevision
            self._quote = Expandable(id: quote)
        }
    }
}

extension Stripe.Billing.Quote {
    public struct InvoiceSettings: Codable, Hashable, Sendable {
        public var daysUntilDue: Int?

        public init(
            daysUntilDue: Int? = nil
        ) {
            self.daysUntilDue = daysUntilDue
        }
    }
}

extension Stripe.Billing.Quote {
    public enum Status: String, Codable, Sendable {
        case draft
        case open
        case accepted
        case canceled
    }
}

extension Stripe.Billing.Quote {
    public struct StatusTransition: Codable, Hashable, Sendable {
        public var acceptedAt: Date?
        public var canceledAt: Date?
        public var finalizedAt: Date?

        public init(
            acceptedAt: Date? = nil,
            canceledAt: Date? = nil,
            finalizedAt: Date? = nil
        ) {
            self.acceptedAt = acceptedAt
            self.canceledAt = canceledAt
            self.finalizedAt = finalizedAt
        }
    }
}

extension Stripe.Billing.Quote {
    public struct SubscriptionData: Codable, Hashable, Sendable {
        public var description: String?
        public var effectiveDate: Date?
        public var trialPeriodDays: Int?

        public init(
            description: String? = nil,
            effectiveDate: Date? = nil,
            trialPeriodDays: Int? = nil
        ) {
            self.description = description
            self.effectiveDate = effectiveDate
            self.trialPeriodDays = trialPeriodDays
        }
    }
}

extension Stripe.Billing.Quote {
    public struct TotalDetails: Codable, Hashable, Sendable {
        public var amountDiscount: Int?
        public var amountShipping: Int?
        public var amountTax: Int?
        public var breakdown: Stripe.Billing.Quote.TotalDetails.Breakdown?

        public init(
            amountDiscount: Int? = nil,
            amountShipping: Int? = nil,
            amountTax: Int? = nil,
            breakdown: Stripe.Billing.Quote.TotalDetails.Breakdown? = nil
        ) {
            self.amountDiscount = amountDiscount
            self.amountShipping = amountShipping
            self.amountTax = amountTax
            self.breakdown = breakdown
        }
    }
}

extension Stripe.Billing.Quote.TotalDetails {
    public struct Breakdown: Codable, Hashable, Sendable {
        public var discounts: [Stripe.Billing.Quote.TotalDetails.Breakdown.Discount]?
        public var taxes: [Stripe.Billing.Quote.TotalDetails.Breakdown.Tax]?

        public init(
            discounts: [Stripe.Billing.Quote.TotalDetails.Breakdown.Discount]? = nil,
            taxes: [Stripe.Billing.Quote.TotalDetails.Breakdown.Tax]? = nil
        ) {
            self.discounts = discounts
            self.taxes = taxes
        }
    }
}

extension Stripe.Billing.Quote.TotalDetails.Breakdown {
    public struct Discount: Codable, Hashable, Sendable {
        public var amount: Int?
        public var discount: Stripe.Products.Discount?

        public init(
            amount: Int? = nil,
            discount: Stripe.Products.Discount? = nil
        ) {
            self.amount = amount
            self.discount = discount
        }
    }
}

extension Stripe.Billing.Quote.TotalDetails.Breakdown {
    public struct Tax: Codable, Hashable, Sendable {
        public var amount: Int?
        public var rate: Stripe.Tax.Rate?
        public var taxabilityReason: Stripe.Billing.Quote.TotalDetails.Breakdown.Tax.TaxabilityReason?

        public init(
            amount: Int? = nil,
            rate: Stripe.Tax.Rate? = nil,
            taxabilityReason: Stripe.Billing.Quote.TotalDetails.Breakdown.Tax.TaxabilityReason? =
                nil
        ) {
            self.amount = amount
            self.rate = rate
            self.taxabilityReason = taxabilityReason
        }
    }
}

extension Stripe.Billing.Quote.TotalDetails.Breakdown.Tax {
    public enum TaxabilityReason: String, Codable, Sendable {
        case vatExempt = "vat_exempt"
        case jurisdictionUnsupported = "jurisdiction_unsupported"
        case excludedTerritory = "excluded_territory"
        case standardRated = "standard_rated"
        case reducedRated = "reduced_rated"
        case zeroRated = "zero_rated"
        case reverseCharge = "reverse_charge"
        case customerExempt = "customer_exempt"
        case productExempt = "product_exempt"
        case productExemptHoliday = "product_exempt_holiday"
        case portionStandardRated = "portion_standard_rated"
        case portionReducedRated = "portion_reduced_rated"
        case portionProductExempt = "portion_product_exempt"
        case taxableBasisReduced = "taxable_basis_reduced"
        case notCollecting = "not_collecting"
        case notSubjectToTax = "not_subject_to_tax"
        case notSupported = "not_supported"
        case proportionallyRated = "proportionally_rated"
    }
}

extension Stripe.Billing.Quote {
    public struct TransferData: Codable, Hashable, Sendable {
        public var amount: Int?
        public var amountPercent: String?
        @ExpandableOf<Stripe.Connect.Account> public var destination: Stripe.Connect.Account.ID?

        public init(
            amount: Int? = nil,
            amountPercent: String? = nil,
            destination: Stripe.Connect.Account.ID? = nil
        ) {
            self.amount = amount
            self.amountPercent = amountPercent
            self._destination = Expandable(id: destination)
        }
    }
}

extension Stripe.Billing.Quote {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Billing.Quote.LineItem]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Billing.Quote.LineItem]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
