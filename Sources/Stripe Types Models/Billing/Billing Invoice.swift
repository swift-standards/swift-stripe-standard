public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing {
    public struct Invoice: Codable, Hashable, Sendable {
        public typealias ID = Tagged<Self, String>

        public let id: ID?
        public var autoAdvance: Bool?
        @ExpandableOf<Stripe.Charges.Charge> public var charge
        public var collectionMethod: Stripe.Billing.Invoice.CollectionMethod?
        public var currency: Stripe.Currency?
        @ExpandableOf<Stripe.Customers.Customer> public var customer
        public var description: String?
        public var hostedInvoiceUrl: String?
        public var lines: Stripe.Billing.Invoice.LineItem.List?
        public var metadata: [String: String]?
        @ExpandableOf<Stripe.PaymentIntents.PaymentIntent> public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public var periodEnd: Date?
        public var periodStart: Date?
        public var status: Stripe.Billing.Invoice.Status?
        @ExpandableOf<Stripe.Billing.Subscription> public var subscription
        public var subscriptionDetails: Stripe.Billing.Subscription.Details?
        public var total: Int?
        public var object: String
        public var accountCountry: String?
        public var accountName: String?
        @ExpandableCollection<Stripe.Tax.ID> public var accountTaxIds: [String]?
        public var amountDue: Int?
        public var amountPaid: Int?
        public var amountRemanining: Int?
        public var amountShipping: Int?
        public var application: String?
        public var applicationFeeAmount: Int?
        public var attemptCount: Int?
        public var attempted: Bool?
        public var automaticTax: Stripe.Billing.Invoice.AutomaticTax?
        public var billingReason: Stripe.Billing.Invoice.BillingReason?
        public var created: Date
        public var customFields: [Stripe.Billing.Invoice.CustomField]?
        public var customerAddress: Address?
        public var customerEmail: String?
        public var customerName: String?
        public var customerPhone: String?
        public var customerShipping: ShippingLabel?
        public var customerTaxExempt: String?
        public var customerTaxIds: [Stripe.Billing.Invoice.CustomerTaxId]?
        @ExpandableOf<Stripe.PaymentMethods.PaymentMethod> public var defaultPaymentMethod
        @DynamicExpandable<BankAccount, Card> public var defaultSource: String?
        public var defaultTaxRates: [Stripe.Tax.Rate]?
        public var dueDate: Date?
        public var endingBalance: Int?
        public var footer: String?
        public var fromInvoice: Stripe.Billing.Invoice.FromInvoice?
        public var invoicePdf: String?
        public var lastFinalizationError: Stripe.Billing.Invoice.LastFinalizationError?
        @Expandable<Stripe.Billing.Invoice, Stripe.Billing.Invoice.ID> public var latestRevision
        public var livemode: Bool?
        public var nextPaymentAttempt: Date?
        public var number: String?
        @ExpandableOf<Stripe.Connect.Account> public var onBehalfOf
        public var paid: Bool?
        public var paidOutOfBand: Bool?
        public var paymentSettings: Stripe.Billing.Invoice.PaymentSettings?
        public var postPaymentCreditNotesAmount: Int?
        public var prePaymentCreditNotesAmount: Int?
        @ExpandableOf<Stripe.Billing.Quote> public var quote
        public var receiptNumber: String?
        public var renderingOptions: Stripe.Billing.Invoice.RenderingOptions?
        public var shippingCost: Stripe.Billing.Invoice.ShippingCost?
        public var startingBalance: Int?
        public var statementDescriptor: Stripe.StatementDescriptor?
        public var statusTransitions: Stripe.Billing.Invoice.StatusTransitions?
        public var subscriptionProrationDate: Date?
        public var subtotal: Int?
        public var subtotalExcludingTax: Int?
        public var tax: Int?
        @ExpandableOf<Stripe.Billing.TestClocks.TestClock> public var testClock
        public var thresholdReason: Stripe.Billing.Invoice.ThresholdReason?
        public var totalDiscountAmounts: [Stripe.Billing.Invoice.TotalDiscountAmount]?
        public var totalExcludingTax: Int?
        public var totalTaxAmounts: [Stripe.Billing.Invoice.TotalTaxAmount]?
        public var transferData: Stripe.Billing.Invoice.TransferData?
        public var webhooksDeliveredAt: Date?

        public init(
            id: ID? = nil,
            autoAdvance: Bool? = nil,
            charge: Stripe.Charges.Charge.ID? = nil,
            collectionMethod: Stripe.Billing.Invoice.CollectionMethod? = nil,
            currency: Stripe.Currency? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            description: String? = nil,
            hostedInvoiceUrl: String? = nil,
            lines: Stripe.Billing.Invoice.LineItem.List? = nil,
            metadata: [String: String]? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            periodEnd: Date? = nil,
            periodStart: Date? = nil,
            status: Stripe.Billing.Invoice.Status? = nil,
            subscription: Stripe.Billing.Subscription.ID? = nil,
            subscriptionDetails: Stripe.Billing.Subscription.Details? = nil,
            total: Int? = nil,
            object: String,
            accountCountry: String? = nil,
            accountName: String? = nil,
            accountTaxIds: [String]? = nil,
            amountDue: Int? = nil,
            amountPaid: Int? = nil,
            amountRemanining: Int? = nil,
            amountShipping: Int? = nil,
            application: String? = nil,
            applicationFeeAmount: Int? = nil,
            attemptCount: Int? = nil,
            attempted: Bool? = nil,
            automaticTax: Stripe.Billing.Invoice.AutomaticTax? = nil,
            billingReason: Stripe.Billing.Invoice.BillingReason? = nil,
            created: Date,
            customFields: [Stripe.Billing.Invoice.CustomField]? = nil,
            customerAddress: Address? = nil,
            customerEmail: String? = nil,
            customerName: String? = nil,
            customerPhone: String? = nil,
            customerShipping: ShippingLabel? = nil,
            customerTaxExempt: String? = nil,
            customerTaxIds: [Stripe.Billing.Invoice.CustomerTaxId]? = nil,
            defaultPaymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            defaultSource: String? = nil,
            defaultTaxRates: [Stripe.Tax.Rate]? = nil,
            dueDate: Date? = nil,
            endingBalance: Int? = nil,
            footer: String? = nil,
            fromInvoice: Stripe.Billing.Invoice.FromInvoice? = nil,
            invoicePdf: String? = nil,
            lastFinalizationError: Stripe.Billing.Invoice.LastFinalizationError? = nil,
            latestRevision: Stripe.Billing.Invoice.ID? = nil,
            livemode: Bool? = nil,
            nextPaymentAttempt: Date? = nil,
            number: String? = nil,
            onBehalfOf: Stripe.Connect.Account.ID? = nil,
            paid: Bool? = nil,
            paidOutOfBand: Bool? = nil,
            paymentSettings: Stripe.Billing.Invoice.PaymentSettings? = nil,
            postPaymentCreditNotesAmount: Int? = nil,
            prePaymentCreditNotesAmount: Int? = nil,
            quote: Stripe.Billing.Quote.ID? = nil,
            receiptNumber: String? = nil,
            renderingOptions: Stripe.Billing.Invoice.RenderingOptions? = nil,
            shippingCost: Stripe.Billing.Invoice.ShippingCost? = nil,
            startingBalance: Int? = nil,
            statementDescriptor: Stripe.StatementDescriptor? = nil,
            statusTransitions: Stripe.Billing.Invoice.StatusTransitions? = nil,
            subscriptionProrationDate: Date? = nil,
            subtotal: Int? = nil,
            subtotalExcludingTax: Int? = nil,
            tax: Int? = nil,
            testClock: Stripe.Billing.TestClocks.TestClock.ID? = nil,
            thresholdReason: Stripe.Billing.Invoice.ThresholdReason? = nil,
            totalDiscountAmounts: [Stripe.Billing.Invoice.TotalDiscountAmount]? = nil,
            totalExcludingTax: Int? = nil,
            totalTaxAmounts: [Stripe.Billing.Invoice.TotalTaxAmount]? = nil,
            transferData: Stripe.Billing.Invoice.TransferData? = nil,
            webhooksDeliveredAt: Date? = nil
        ) {
            self.id = id
            self.autoAdvance = autoAdvance
            self._charge = Expandable(id: charge)
            self.collectionMethod = collectionMethod
            self.currency = currency
            self._customer = Expandable(id: customer)
            self.description = description
            self.hostedInvoiceUrl = hostedInvoiceUrl
            self.lines = lines
            self.metadata = metadata
            self._paymentIntent = Expandable(id: paymentIntent)
            self.periodEnd = periodEnd
            self.periodStart = periodStart
            self.status = status
            self._subscription = Expandable(id: subscription)
            self.subscriptionDetails = subscriptionDetails
            self.total = total
            self.object = object
            self.accountCountry = accountCountry
            self.accountName = accountName
            self._accountTaxIds = ExpandableCollection(ids: accountTaxIds)
            self.amountDue = amountDue
            self.amountPaid = amountPaid
            self.amountRemanining = amountRemanining
            self.amountShipping = amountShipping
            self.application = application
            self.applicationFeeAmount = applicationFeeAmount
            self.attemptCount = attemptCount
            self.attempted = attempted
            self.automaticTax = automaticTax
            self.billingReason = billingReason
            self.created = created
            self.customFields = customFields
            self.customerAddress = customerAddress
            self.customerEmail = customerEmail
            self.customerName = customerName
            self.customerPhone = customerPhone
            self.customerShipping = customerShipping
            self.customerTaxExempt = customerTaxExempt
            self.customerTaxIds = customerTaxIds
            self._defaultPaymentMethod = Expandable(id: defaultPaymentMethod)
            self._defaultSource = DynamicExpandable(id: defaultSource)
            self.defaultTaxRates = defaultTaxRates
            self.dueDate = dueDate
            self.endingBalance = endingBalance
            self.footer = footer
            self.fromInvoice = fromInvoice
            self.invoicePdf = invoicePdf
            self.lastFinalizationError = lastFinalizationError
            self._latestRevision = Expandable(id: latestRevision)
            self.livemode = livemode
            self.nextPaymentAttempt = nextPaymentAttempt
            self.number = number
            self._onBehalfOf = Expandable(id: onBehalfOf)
            self.paid = paid
            self.paidOutOfBand = paidOutOfBand
            self.paymentSettings = paymentSettings
            self.postPaymentCreditNotesAmount = postPaymentCreditNotesAmount
            self.prePaymentCreditNotesAmount = prePaymentCreditNotesAmount
            self._quote = Expandable(id: quote)
            self.receiptNumber = receiptNumber
            self.renderingOptions = renderingOptions
            self.shippingCost = shippingCost
            self.startingBalance = startingBalance
            self.statementDescriptor = statementDescriptor
            self.statusTransitions = statusTransitions
            self.subscriptionProrationDate = subscriptionProrationDate
            self.subtotal = subtotal
            self.subtotalExcludingTax = subtotalExcludingTax
            self.tax = tax
            self._testClock = Expandable(id: testClock)
            self.thresholdReason = thresholdReason
            self.totalDiscountAmounts = totalDiscountAmounts
            self.totalExcludingTax = totalExcludingTax
            self.totalTaxAmounts = totalTaxAmounts
            self.transferData = transferData
            self.webhooksDeliveredAt = webhooksDeliveredAt
        }
    }
}

extension Stripe.Billing.Subscription {
    public struct Details: Codable, Hashable, Sendable {
        public var metadata: [String: String]?

        public init(
            metadata: [String: String]? = nil
        ) {
            self.metadata = metadata
        }
    }
}

extension Stripe.Billing.Invoice {
    public enum BillingReason: String, Codable, Sendable {
        case automatic
        case manual
        case subscription
        case subscriptionCreate = "subscription_create"
        case subscriptionCycle = "subscription_cycle"
        case subscriptionThreshold = "subscription_threshold"
        case subscriptionUpdate = "subscription_update"
        case upcoming
    }

    public enum CollectionMethod: String, Codable, Sendable {
        case chargeAutomatically = "charge_automatically"
        case sendInvoice = "send_invoice"
    }
}

extension Stripe.Billing.Invoice {
    public struct AutomaticTax: Codable, Hashable, Sendable {
        public var enabled: Bool?
        public var statis: Stripe.Billing.Invoice.AutomaticTaxStatus?

        public init(
            enabled: Bool? = nil,
            statis: Stripe.Billing.Invoice.AutomaticTaxStatus? = nil
        ) {
            self.enabled = enabled
            self.statis = statis
        }
    }
}

extension Stripe.Billing.Invoice {
    public enum AutomaticTaxStatus: String, Codable, Sendable {
        case requiresLocationInputs = "requires_location_inputs"
        case complete
        case failed
    }
}

extension Stripe.Billing.Invoice {
    public enum Reason: String, Codable, Sendable {
        case subscriptionCycle = "subscription_cycle"
        case subscriptionCreate = "subscription_create"
        case subscriptionUpdate = "subscription_update"
        case subscription
        case manual
        case upcoming
        case subscriptionThreshold = "subscription_threshold"
    }
}

extension Stripe.Billing.Invoice {
    public struct CustomField: Codable, Hashable, Sendable {
        public var name: String?
        public var value: String?

        public init(
            name: String? = nil,
            value: String? = nil
        ) {
            self.name = name
            self.value = value
        }
    }
}

extension Stripe.Billing.Invoice {
    public struct CustomerTaxId: Codable, Hashable, Sendable {
        public var type: Stripe.Tax.ID.`Type`?
        public var value: String?

        public init(
            type: Stripe.Tax.ID.`Type`? = nil,
            value: String? = nil
        ) {
            self.type = type
            self.value = value
        }
    }
}

extension Stripe.Billing.Invoice {
    public struct FromInvoice: Codable, Hashable, Sendable {
        public var action: String?
        @Expandable<Stripe.Billing.Invoice, Stripe.Billing.Invoice.ID> public var invoice

        public init(
            action: String? = nil,
            invoice: Stripe.Billing.Invoice.ID? = nil
        ) {
            self.action = action
            self._invoice = Expandable(id: invoice)
        }
    }
}

extension Stripe.Billing.Invoice {
    public struct LastFinalizationError: Codable, Hashable, Sendable {
        public var type: StripeError.Variant?
        public var code: StripeErrorCode?
        public var docUrl: String?
        public var message: String?
        public var param: String?
        public var paymentMethodType: Stripe.PaymentMethods.PaymentMethod.`Type`?

        public init(
            type: StripeError.Variant? = nil,
            code: StripeErrorCode? = nil,
            docUrl: String? = nil,
            message: String? = nil,
            param: String? = nil,
            paymentMethodType: Stripe.PaymentMethods.PaymentMethod.`Type`? = nil
        ) {
            self.type = type
            self.code = code
            self.docUrl = docUrl
            self.message = message
            self.param = param
            self.paymentMethodType = paymentMethodType
        }
    }
}

extension Stripe.Billing.Invoice {
    public struct PaymentSettings: Codable, Hashable, Sendable {
        public var defaultMandate: Stripe.Mandates.Mandate.ID?
        public var paymentMethodOptions: Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions?
        public var paymentMethodTypes: [Stripe.PaymentMethods.PaymentMethod.`Type`]?

        public init(
            defaultMandate: Stripe.Mandates.Mandate.ID? = nil,
            paymentMethodOptions: Stripe.Billing.Invoice.PaymentSettings.PaymentMethodOptions? =
                nil,
            paymentMethodTypes: [Stripe.PaymentMethods.PaymentMethod.`Type`]? = nil
        ) {
            self.defaultMandate = defaultMandate
            self.paymentMethodOptions = paymentMethodOptions
            self.paymentMethodTypes = paymentMethodTypes
        }
    }
}

extension Stripe.Billing.Invoice {
    public struct RenderingOptions: Codable, Hashable, Sendable {
        public var amountTaxDisplay: String?

        public init(
            amountTaxDisplay: String? = nil
        ) {
            self.amountTaxDisplay = amountTaxDisplay
        }
    }
}

extension Stripe.Billing.Invoice {
    public struct ShippingCost: Codable, Hashable, Sendable {
        public var amountSubtotal: Int?
        public var amountTax: Int?
        public var amountTotal: Int?
        @ExpandableOf<Stripe.Products.Shipping.Rate> public var shippingRate
        public var taxes: [Stripe.Billing.Invoice.ShippingCost.Tax]?

        public init(
            amountSubtotal: Int? = nil,
            amountTax: Int? = nil,
            amountTotal: Int? = nil,
            shippingRate: Stripe.Products.Shipping.Rate.ID? = nil,
            taxes: [Stripe.Billing.Invoice.ShippingCost.Tax]? = nil
        ) {
            self.amountSubtotal = amountSubtotal
            self.amountTax = amountTax
            self.amountTotal = amountTotal
            self._shippingRate = Expandable(id: shippingRate)
            self.taxes = taxes
        }
    }
}

extension Stripe.Billing.Invoice.ShippingCost {
    public struct Tax: Codable, Hashable, Sendable {
        public var amount: Int?
        public var rate: Stripe.Tax.Rate?
        public var taxabilityReason: Stripe.Billing.Invoice.ShippingCost.Tax.TaxabilityReason?
        public var taxableAmount: Int?

        public init(
            amount: Int? = nil,
            rate: Stripe.Tax.Rate? = nil,
            taxabilityReason: Stripe.Billing.Invoice.ShippingCost.Tax.TaxabilityReason? = nil,
            taxableAmount: Int? = nil
        ) {
            self.amount = amount
            self.rate = rate
            self.taxabilityReason = taxabilityReason
            self.taxableAmount = taxableAmount
        }
    }
}

extension Stripe.Billing.Invoice.ShippingCost.Tax {
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

extension Stripe.Billing.Invoice {
    public enum Status: String, Codable, Sendable {
        case draft
        case open
        case void
        case paid
        case uncollectible
    }
}

extension Stripe.Billing.Invoice {
    public struct StatusTransitions: Codable, Hashable, Sendable {
        public var finalizedAt: Date?
        public var markedUncollectableAt: Date?
        public var paidAt: Date?
        public var voidedAt: Date?

        public init(
            finalizedAt: Date? = nil,
            markedUncollectableAt: Date? = nil,
            paidAt: Date? = nil,
            voidedAt: Date? = nil
        ) {
            self.finalizedAt = finalizedAt
            self.markedUncollectableAt = markedUncollectableAt
            self.paidAt = paidAt
            self.voidedAt = voidedAt
        }
    }
}

extension Stripe.Billing.Invoice {
    public struct ThresholdReason: Codable, Hashable, Sendable {
        public var amountGte: Int?
        public var itemReasons: [Stripe.Billing.Invoice.ThresholdReason.ItemReason]?

        public init(
            amountGte: Int? = nil,
            itemReasons: [Stripe.Billing.Invoice.ThresholdReason.ItemReason]? = nil
        ) {
            self.amountGte = amountGte
            self.itemReasons = itemReasons
        }
    }
}

extension Stripe.Billing.Invoice.ThresholdReason {
    public struct ItemReason: Codable, Hashable, Sendable {
        public var lineItemIds: [String]?
        public var usageGte: Int?

        public init(
            lineItemIds: [String]? = nil,
            usageGte: Int? = nil
        ) {
            self.lineItemIds = lineItemIds
            self.usageGte = usageGte
        }
    }
}

extension Stripe.Billing.Invoice {
    public struct TotalTaxAmount: Codable, Hashable, Sendable {
        public var amount: Int?
        public var inclusive: Bool?
        @ExpandableOf<Stripe.Tax.Rate> public var taxRate
        public var taxabilityReason: Stripe.Billing.Invoice.TotalTaxAmount.TaxabilityReason?
        public var taxableAmount: Int?

        public init(
            amount: Int? = nil,
            inclusive: Bool? = nil,
            taxRate: Stripe.Tax.Rate.ID? = nil,
            taxabilityReason: Stripe.Billing.Invoice.TotalTaxAmount.TaxabilityReason? = nil,
            taxableAmount: Int? = nil
        ) {
            self.amount = amount
            self.inclusive = inclusive
            self._taxRate = Expandable(id: taxRate)
            self.taxabilityReason = taxabilityReason
            self.taxableAmount = taxableAmount
        }
    }
}

extension Stripe.Billing.Invoice.TotalTaxAmount {
    public enum TaxabilityReason: String, Codable, Sendable {
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

extension Stripe.Billing.Invoice {
    public struct TotalDiscountAmount: Codable, Hashable, Sendable {
        public var amount: Int?
        @ExpandableOf<Stripe.Products.Discount> public var discount

        public init(
            amount: Int? = nil,
            discount: Stripe.Products.Discount.ID? = nil
        ) {
            self.amount = amount
            self._discount = Expandable(id: discount)
        }
    }
}

extension Stripe.Billing.Invoice {
    public struct TransferData: Codable, Hashable, Sendable {
        public var amount: Int?
        @ExpandableOf<Stripe.Connect.Account> public var destination

        public init(
            amount: Int? = nil,
            destination: Stripe.Connect.Account.ID? = nil
        ) {
            self.amount = amount
            self._destination = Expandable(id: destination)
        }
    }
}

extension Stripe.Billing.Invoice {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Billing.Invoice]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Billing.Invoice]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
