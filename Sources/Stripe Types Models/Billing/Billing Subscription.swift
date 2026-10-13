public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing {
    public struct Subscription: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var cancelAtPeriodEnd: Bool?
        public var currency: Stripe.Currency?
        public var currentPeriodEnd: Date?
        public var currentPeriodStart: Date?
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        @ExpandableOf<Stripe.PaymentMethods.PaymentMethod> public var defaultPaymentMethod: Stripe.PaymentMethods.PaymentMethod.ID?
        public var description: String?
        public var items: Item.List?
        @Expandable<Invoice, Invoice.ID> public var latestInvoice
        public var metadata: [String: String]?
        @ExpandableOf<Stripe.Setup.Intent> public var pendingSetupIntent
        public var pendingUpdate: PendingUpdate?
        public var status: Status?
        public var object: String
        public var application: String?
        public var applicationFeePercent: Decimal?
        public var automaticTax: AutomaticTax?
        public var billingCycleAnchor: Date?
        public var billingCycleAnchorConfig: BillingCycleAnchorConfig?
        public var billingThresholds: BillingThresholds?
        public var cancelAt: Date?
        public var canceledAt: Date?
        public var cancellationDetails: Cancellation.Details?
        public var collectionMethod: Collection.Method?
        public var created: Date
        public var daysUntilDue: Int?
        @DynamicExpandable<BankAccount, Card> public var defaultSource: String?
        public var defaultTaxRates: [Stripe.Tax.Rate]?
        public var discount: Stripe.Products.Discount?
        public var endedAt: Date?
        public var livemode: Bool?
        public var nextPendingInvoiceItemInvoice: Date?
        @ExpandableOf<Stripe.Connect.Account> public var onBehalfOf: Stripe.Connect.Account.ID?
        public var pauseCollection: PauseCollection?
        public var paymentSettings: Payment.Settings?
        public var pendingInvoiceItemInterval: PendingInvoiceItemInterval?
        @ExpandableOf<Schedule> public var schedule
        public var startDate: Date?
        public var testClock: String?
        public var transferData: TransferData?
        public var trialEnd: Date?
        public var trialSettings: Trial.Settings?
        public var trialStart: Date?
        public var billingMode: BillingMode?
        public var discounts: [Stripe.Products.Discount]?
        public var invoiceSettings: InvoiceSettings?
        public var plan: Plan?
        public var quantity: Int?

        private enum CodingKeys: String, CodingKey {
            case id
            case cancelAtPeriodEnd = "cancel_at_period_end"
            case currency
            case currentPeriodEnd = "current_period_end"
            case currentPeriodStart = "current_period_start"
            case customer
            case defaultPaymentMethod = "default_payment_method"
            case description
            case items
            case latestInvoice = "latest_invoice"
            case metadata
            case pendingSetupIntent = "pending_setup_intent"
            case pendingUpdate = "pending_update"
            case status
            case object
            case application
            case applicationFeePercent = "application_fee_percent"
            case automaticTax = "automatic_tax"
            case billingCycleAnchor = "billing_cycle_anchor"
            case billingCycleAnchorConfig = "billing_cycle_anchor_config"
            case billingThresholds = "billing_thresholds"
            case cancelAt = "cancel_at"
            case canceledAt = "canceled_at"
            case cancellationDetails = "cancellation_details"
            case collectionMethod = "collection_method"
            case created
            case daysUntilDue = "days_until_due"
            case defaultSource = "default_source"
            case defaultTaxRates = "default_tax_rates"
            case discount
            case endedAt = "ended_at"
            case livemode
            case nextPendingInvoiceItemInvoice = "next_pending_invoice_item_invoice"
            case onBehalfOf = "on_behalf_of"
            case pauseCollection = "pause_collection"
            case paymentSettings = "payment_settings"
            case pendingInvoiceItemInterval = "pending_invoice_item_interval"
            case schedule
            case startDate = "start_date"
            case testClock = "test_clock"
            case transferData = "transfer_data"
            case trialEnd = "trial_end"
            case trialSettings = "trial_settings"
            case trialStart = "trial_start"
            case billingMode = "billing_mode"
            case discounts
            case invoiceSettings = "invoice_settings"
            case plan
            case quantity
        }

        public init(
            id: ID,
            cancelAtPeriodEnd: Bool? = nil,
            currency: Stripe.Currency? = nil,
            currentPeriodEnd: Date? = nil,
            currentPeriodStart: Date? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            defaultPaymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            description: String? = nil,
            items: Item.List? = nil,
            latestInvoice: Stripe.Billing.Invoice.ID? = nil,
            metadata: [String: String]? = nil,
            pendingSetupIntent: Stripe.Setup.Intent.ID? = nil,
            pendingUpdate: PendingUpdate? = nil,
            status: Status? = nil,
            object: String,
            application: String? = nil,
            applicationFeePercent: Decimal? = nil,
            automaticTax: AutomaticTax? = nil,
            billingCycleAnchor: Date? = nil,
            billingCycleAnchorConfig: BillingCycleAnchorConfig? = nil,
            billingThresholds: BillingThresholds? = nil,
            cancelAt: Date? = nil,
            canceledAt: Date? = nil,
            cancellationDetails: Cancellation.Details? = nil,
            collectionMethod: Collection.Method? = nil,
            created: Date,
            daysUntilDue: Int? = nil,
            defaultSource: String? = nil,
            defaultTaxRates: [Stripe.Tax.Rate]? = nil,
            discount: Stripe.Products.Discount? = nil,
            endedAt: Date? = nil,
            livemode: Bool? = nil,
            nextPendingInvoiceItemInvoice: Date? = nil,
            onBehalfOf: Stripe.Connect.Account.ID? = nil,
            pauseCollection: PauseCollection? = nil,
            paymentSettings: Payment.Settings? = nil,
            pendingInvoiceItemInterval: PendingInvoiceItemInterval? = nil,
            schedule: Schedule.ID? = nil,
            startDate: Date? = nil,
            testClock: String? = nil,
            transferData: TransferData? = nil,
            trialEnd: Date? = nil,
            trialSettings: Trial.Settings? = nil,
            trialStart: Date? = nil,
            billingMode: BillingMode? = nil,
            discounts: [Stripe.Products.Discount]? = nil,
            invoiceSettings: InvoiceSettings? = nil,
            plan: Plan? = nil,
            quantity: Int? = nil
        ) {
            self.id = id
            self.cancelAtPeriodEnd = cancelAtPeriodEnd
            self.currency = currency
            self.currentPeriodEnd = currentPeriodEnd
            self.currentPeriodStart = currentPeriodStart
            self._customer = Expandable(id: customer)
            self._defaultPaymentMethod = Expandable(id: defaultPaymentMethod)
            self.description = description
            self.items = items
            self._latestInvoice = Expandable(id: latestInvoice)
            self.metadata = metadata
            self._pendingSetupIntent = Expandable(id: pendingSetupIntent)
            self.pendingUpdate = pendingUpdate
            self.status = status
            self.object = object
            self.application = application
            self.applicationFeePercent = applicationFeePercent
            self.automaticTax = automaticTax
            self.billingCycleAnchor = billingCycleAnchor
            self.billingCycleAnchorConfig = billingCycleAnchorConfig
            self.billingThresholds = billingThresholds
            self.cancelAt = cancelAt
            self.canceledAt = canceledAt
            self.cancellationDetails = cancellationDetails
            self.collectionMethod = collectionMethod
            self.created = created
            self.daysUntilDue = daysUntilDue
            self._defaultSource = DynamicExpandable(id: defaultSource)
            self.defaultTaxRates = defaultTaxRates
            self.discount = discount
            self.endedAt = endedAt
            self.livemode = livemode
            self.nextPendingInvoiceItemInvoice = nextPendingInvoiceItemInvoice
            self._onBehalfOf = Expandable(id: onBehalfOf)
            self.pauseCollection = pauseCollection
            self.paymentSettings = paymentSettings
            self.pendingInvoiceItemInterval = pendingInvoiceItemInterval
            self._schedule = Expandable(id: schedule)
            self.startDate = startDate
            self.testClock = testClock
            self.transferData = transferData
            self.trialEnd = trialEnd
            self.trialSettings = trialSettings
            self.trialStart = trialStart
            self.billingMode = billingMode
            self.discounts = discounts
            self.invoiceSettings = invoiceSettings
            self.plan = plan
            self.quantity = quantity
        }
    }
}

extension Stripe.Billing.Subscription {
    public enum Status: String, Codable, Sendable {
        case active
        case pastDue = "past_due"
        case unpaid
        case canceled
        case incomplete
        case incompleteExpired = "incomplete_expired"
        case trialing
        case paused
    }

    public typealias Interval = Stripe.Interval

    public enum PaymentBehavior: String, Codable, Sendable {
        case allowIncomplete = "allow_incomplete"
        case errorIfIncomplete = "error_if_incomplete"
        case pendingIfIncomplete = "pending_if_incomplete"
        case defaultIncomplete = "default_incomplete"
    }

    public enum ProrationBehavior: String, Codable, Sendable {
        case createProrations = "create_prorations"
        case none
        case alwaysInvoice = "always_invoice"
    }
}

extension Stripe.Billing.Subscription {
    public struct AutomaticTax: Codable, Hashable, Sendable {
        public var enabled: Bool?
        public var disabledReason: String?
        public var liability: TaxLiability?

        private enum CodingKeys: String, CodingKey {
            case enabled
            case disabledReason = "disabled_reason"
            case liability
        }

        public init(
            enabled: Bool? = nil,
            disabledReason: String? = nil,
            liability: TaxLiability? = nil
        ) {
            self.enabled = enabled
            self.disabledReason = disabledReason
            self.liability = liability
        }
    }

    public struct TaxLiability: Codable, Hashable, Sendable {
        public var type: String?

        public init(type: String? = nil) {
            self.type = type
        }
    }
}

extension Stripe.Billing.Subscription {
    public struct BillingThresholds: Codable, Hashable, Sendable {
        public var amountGte: Int?
        public var resetBillingCycleAnchor: Bool?

        private enum CodingKeys: String, CodingKey {
            case amountGte = "amount_gte"
            case resetBillingCycleAnchor = "reset_billing_cycle_anchor"
        }

        public init(
            amountGte: Int? = nil,
            resetBillingCycleAnchor: Bool? = nil
        ) {
            self.amountGte = amountGte
            self.resetBillingCycleAnchor = resetBillingCycleAnchor
        }
    }
}

extension Stripe.Billing.Subscription {
    public enum Cancellation {}
}

extension Stripe.Billing.Subscription.Cancellation {
    public struct Details: Codable, Hashable, Sendable {
        public var comment: String?
        public var feedback: Feedback?
        public var reason: String?

        public init(
            comment: String? = nil,
            feedback: Feedback? = nil,
            reason: String? = nil
        ) {
            self.comment = comment
            self.feedback = feedback
            self.reason = reason
        }
    }

    public enum Feedback: String, Codable, Sendable {
        case tooExpensive = "too_expensive"
        case missingFeatures = "missing_features"
        case switchService = "switch_service"
        case unused
        case customerService = "customer_service"
        case tooComplex = "too_complex"
        case lowQuality = "low_quality"
        case other
    }
}

extension Stripe.Billing.Subscription {
    public enum Collection {}
}

extension Stripe.Billing.Subscription.Collection {
    public enum Method: String, Codable, Sendable {
        case chargeAutomatically = "charge_automatically"
        case sendInvoice = "send_invoice"
    }
}

extension Stripe.Billing.Subscription {
    public enum Payment {}
}

extension Stripe.Billing.Subscription.Payment {
    public struct Settings: Codable, Hashable, Sendable {
        public var paymentMethodOptions: MethodOptions?
        public var paymentMethodTypes: [Stripe.PaymentMethods.PaymentMethod.`Type`]?
        public var saveDefaultPaymentMethod: SaveDefaultPaymentMethod?

        private enum CodingKeys: String, CodingKey {
            case paymentMethodOptions = "payment_method_options"
            case paymentMethodTypes = "payment_method_types"
            case saveDefaultPaymentMethod = "save_default_payment_method"
        }

        public enum SaveDefaultPaymentMethod: String, Codable, Sendable {
            case off
            case onSubscription = "on_subscription"
        }

        public init(
            paymentMethodOptions: MethodOptions? = nil,
            paymentMethodTypes: [Stripe.PaymentMethods.PaymentMethod.`Type`]? = nil,
            saveDefaultPaymentMethod: SaveDefaultPaymentMethod? = nil
        ) {
            self.paymentMethodOptions = paymentMethodOptions
            self.paymentMethodTypes = paymentMethodTypes
            self.saveDefaultPaymentMethod = saveDefaultPaymentMethod
        }
    }

    public struct MethodOptions: Codable, Hashable, Sendable {

        public init() {}
    }
}

extension Stripe.Billing.Subscription {
    public struct PendingInvoiceItemInterval: Codable, Hashable, Sendable {
        public var interval: Stripe.Interval?
        public var intervalCount: Int?

        private enum CodingKeys: String, CodingKey {
            case interval
            case intervalCount = "interval_count"
        }

        public init(
            interval: Stripe.Interval? = nil,
            intervalCount: Int? = nil
        ) {
            self.interval = interval
            self.intervalCount = intervalCount
        }
    }
}

extension Stripe.Billing.Subscription {
    public struct PauseCollection: Codable, Hashable, Sendable {
        public var behavior: Behavior?
        public var resumesAt: Date?

        private enum CodingKeys: String, CodingKey {
            case behavior
            case resumesAt = "resumes_at"
        }

        public init(
            behavior: Behavior? = nil,
            resumesAt: Date? = nil
        ) {
            self.behavior = behavior
            self.resumesAt = resumesAt
        }

        public enum Behavior: String, Codable, Sendable {
            case keepAsDraft = "keep_as_draft"
            case markUncollectible = "mark_uncollectible"
            case void
        }
    }
}

extension Stripe.Billing.Subscription {
    public enum Trial {}
}

extension Stripe.Billing.Subscription.Trial {
    public struct Settings: Codable, Hashable, Sendable {
        public var endBehavior: EndBehavior?

        public init(
            endBehavior: EndBehavior? = nil
        ) {
            self.endBehavior = endBehavior
        }
    }

    public struct EndBehavior: Codable, Hashable, Sendable {
        public var missingPaymentMethod: MissingPaymentMethodBehavior?

        private enum CodingKeys: String, CodingKey {
            case missingPaymentMethod = "missing_payment_method"
        }

        public init(
            missingPaymentMethod: MissingPaymentMethodBehavior? = nil
        ) {
            self.missingPaymentMethod = missingPaymentMethod
        }
    }

    public enum MissingPaymentMethodBehavior: String, Codable, Sendable {
        case cancel
        case pause
        case createInvoice = "create_invoice"
    }
}

extension Stripe.Billing.Subscription {
    public struct TransferData: Codable, Hashable, Sendable {
        public var amountPercent: Int?
        @ExpandableOf<Stripe.Connect.Account> public var destination: Stripe.Connect.Account.ID?

        private enum CodingKeys: String, CodingKey {
            case amountPercent = "amount_percent"
            case destination
        }

        public init(
            amountPercent: Int? = nil,
            destination: Stripe.Connect.Account.ID? = nil
        ) {
            self.amountPercent = amountPercent
            self._destination = Expandable(id: destination)
        }
    }
}

extension Stripe.Billing.Subscription {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Billing.Subscription]?
    }

    public struct SearchResult: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Billing.Subscription]?
        public var hasMore: Bool?
        public var url: String?
        public var nextPage: String?
        public var totalCount: Int?
    }
}

extension Stripe.Billing.Subscription {
    public struct PendingUpdate: Codable, Hashable, Sendable {
        public var billingCycleAnchor: Date?
        public var expiresAt: Date?
        public var subscriptionItems: [Item]?
        public var trialEnd: Date?
        public var trialFromPlan: Bool?

        private enum CodingKeys: String, CodingKey {
            case billingCycleAnchor = "billing_cycle_anchor"
            case expiresAt = "expires_at"
            case subscriptionItems = "subscription_items"
            case trialEnd = "trial_end"
            case trialFromPlan = "trial_from_plan"
        }

        public init(
            billingCycleAnchor: Date? = nil,
            expiresAt: Date? = nil,
            subscriptionItems: [Item]? = nil,
            trialEnd: Date? = nil,
            trialFromPlan: Bool? = nil
        ) {
            self.billingCycleAnchor = billingCycleAnchor
            self.expiresAt = expiresAt
            self.subscriptionItems = subscriptionItems
            self.trialEnd = trialEnd
            self.trialFromPlan = trialFromPlan
        }
    }
}

extension Stripe.Billing.Subscription {
    public struct BillingMode: Codable, Hashable, Sendable {
        public var type: String?

        public init(type: String? = nil) {
            self.type = type
        }
    }
}

extension Stripe.Billing.Subscription {
    public struct BillingCycleAnchorConfig: Codable, Hashable, Sendable {
        public var dayOfMonth: Int?
        public var hour: Int?
        public var minute: Int?
        public var month: Int?
        public var second: Int?

        private enum CodingKeys: String, CodingKey {
            case dayOfMonth = "day_of_month"
            case hour
            case minute
            case month
            case second
        }

        public init(
            dayOfMonth: Int? = nil,
            hour: Int? = nil,
            minute: Int? = nil,
            month: Int? = nil,
            second: Int? = nil
        ) {
            self.dayOfMonth = dayOfMonth
            self.hour = hour
            self.minute = minute
            self.month = month
            self.second = second
        }
    }
}

extension Stripe.Billing.Subscription {
    public struct InvoiceSettings: Codable, Hashable, Sendable {
        public var accountTaxIds: [String]?
        public var issuer: Issuer?

        private enum CodingKeys: String, CodingKey {
            case accountTaxIds = "account_tax_ids"
            case issuer
        }

        public init(
            accountTaxIds: [String]? = nil,
            issuer: Issuer? = nil
        ) {
            self.accountTaxIds = accountTaxIds
            self.issuer = issuer
        }

        public struct Issuer: Codable, Hashable, Sendable {
            public var type: String?

            public init(type: String? = nil) {
                self.type = type
            }
        }
    }
}
