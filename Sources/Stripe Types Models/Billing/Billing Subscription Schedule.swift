public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Billing.Subscription {
    public struct Schedule: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var currentPhase: CurrentPhase?
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        public var metadata: [String: String]?
        public var phases: [Phase]?
        public var status: Status?
        @ExpandableOf<Stripe.Billing.Subscription> public var subscription: Stripe.Billing.Subscription.ID?
        public var object: String
        public var application: String?
        public var canceledAt: Date?
        public var completedAt: Date?
        public var created: Date
        public var defaultSettings: DefaultSettings?
        public var endBehavior: EndBehavior?
        public var livemode: Bool?
        public var releasedAt: Date?
        public var releasedSubscription: Stripe.Billing.Subscription.ID?
        @ExpandableOf<Stripe.Billing.TestClocks.TestClock> public var testClock: Stripe.Billing.TestClocks.TestClock.ID?

        public init(
            id: ID,
            currentPhase: CurrentPhase? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            metadata: [String: String]? = nil,
            phases: [Phase]? = nil,
            status: Status? = nil,
            subscription: Stripe.Billing.Subscription.ID? = nil,
            object: String,
            application: String? = nil,
            canceledAt: Date? = nil,
            completedAt: Date? = nil,
            created: Date,
            defaultSettings: DefaultSettings? = nil,
            endBehavior: EndBehavior? = nil,
            livemode: Bool? = nil,
            releasedAt: Date? = nil,
            releasedSubscription: Stripe.Billing.Subscription.ID? = nil,
            testClock: Stripe.Billing.TestClocks.TestClock.ID? = nil
        ) {
            self.id = id
            self.currentPhase = currentPhase
            self._customer = Expandable(id: customer)
            self.metadata = metadata
            self.phases = phases
            self.status = status
            self._subscription = Expandable(id: subscription)
            self.object = object
            self.application = application
            self.canceledAt = canceledAt
            self.completedAt = completedAt
            self.created = created
            self.defaultSettings = defaultSettings
            self.endBehavior = endBehavior
            self.livemode = livemode
            self.releasedAt = releasedAt
            self.releasedSubscription = releasedSubscription
            self._testClock = Expandable(id: testClock)
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct CurrentPhase: Codable, Hashable, Sendable {
        public var endDate: Date?
        public var startDate: Date?

        public init(
            endDate: Date? = nil,
            startDate: Date? = nil
        ) {
            self.endDate = endDate
            self.startDate = startDate
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct DefaultSettings: Codable, Hashable, Sendable {
        public var applicationFeePercent: Float?
        public var automaticTax: DefaultSettingsAutomaticTax?
        public var billingCycleAnchor: BillingCycleAnchor?
        public var billingThresholds: DefaultSettingsBillingThresholds?
        public var collectionMethod: CollectionMethod?
        @ExpandableOf<Stripe.PaymentMethods.PaymentMethod> public var defaultPaymentMethod: Stripe.PaymentMethods.PaymentMethod.ID?
        public var description: String?
        public var invoiceSettings: InvoiceSettings?
        @ExpandableOf<Stripe.Connect.Account> public var onBehalfOf: Stripe.Connect.Account.ID?
        public var transferData: TransferData?

        public init(
            applicationFeePercent: Float? = nil,
            automaticTax: DefaultSettingsAutomaticTax? = nil,
            billingCycleAnchor: BillingCycleAnchor? = nil,
            billingThresholds: DefaultSettingsBillingThresholds? = nil,
            collectionMethod: CollectionMethod? = nil,
            defaultPaymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            description: String? = nil,
            invoiceSettings: InvoiceSettings? = nil,
            onBehalfOf: Stripe.Connect.Account.ID? = nil,
            transferData: TransferData? = nil
        ) {
            self.applicationFeePercent = applicationFeePercent
            self.automaticTax = automaticTax
            self.billingCycleAnchor = billingCycleAnchor
            self.billingThresholds = billingThresholds
            self.collectionMethod = collectionMethod
            self._defaultPaymentMethod = Expandable(id: defaultPaymentMethod)
            self.description = description
            self.invoiceSettings = invoiceSettings
            self._onBehalfOf = Expandable(id: onBehalfOf)
            self.transferData = transferData
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct DefaultSettingsAutomaticTax: Codable, Hashable, Sendable {
        public var enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public enum CollectionMethod: String, Codable, Sendable {
        case chargeAutomatically = "charge_automatically"
        case sendInvoice = "send_invoice"
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public enum EndBehavior: String, Codable, Sendable {
        case release
        case cancel
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct DefaultSettingsBillingThresholds: Codable, Hashable, Sendable {
        public var amountGte: Int?
        public var resetBillingCycleAnchor: Bool?

        public init(
            amountGte: Int? = nil,
            resetBillingCycleAnchor: Bool? = nil
        ) {
            self.amountGte = amountGte
            self.resetBillingCycleAnchor = resetBillingCycleAnchor
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct InvoiceSettings: Codable, Hashable, Sendable {
        public var daysUntilDue: Int?

        private enum CodingKeys: String, CodingKey {
            case daysUntilDue = "days_until_due"
        }

        public init(
            daysUntilDue: Int? = nil
        ) {
            self.daysUntilDue = daysUntilDue
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct TransferData: Codable, Hashable, Sendable {
        public var amountPercent: Int?
        @ExpandableOf<Stripe.Connect.Account> public var destination: Stripe.Connect.Account.ID?

        public init(
            amountPercent: Int? = nil,
            destination: Stripe.Connect.Account.ID? = nil
        ) {
            self.amountPercent = amountPercent
            self._destination = Expandable(id: destination)
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct Phase: Codable, Hashable, Sendable {
        public var addInvoiceItems: [PhaseAddInvoiceItem]?
        public var applicationFeePercent: Float?
        public var automaticTax: PhaseAutomaticTax?
        public var billingCycleAnchor: BillingCycleAnchor?
        public var billingThresholds: DefaultSettingsBillingThresholds?
        public var collectionMethod: CollectionMethod?
        @ExpandableOf<Stripe.Products.Coupon> public var coupon
        public var currency: Stripe.Currency?
        @ExpandableOf<Stripe.PaymentMethods.PaymentMethod> public var defaultPaymentMethod: Stripe.PaymentMethods.PaymentMethod.ID?
        public var defaultTaxRates: [Stripe.Tax.Rate]?
        public var description: String?
        public var endDate: Date?
        public var invoiceSettings: InvoiceSettings?
        public var items: [PhaseItem]?
        public var metadata: [String: String]?
        @ExpandableOf<Stripe.Connect.Account> public var onBehalfOf: Stripe.Connect.Account.ID?
        public var prorationBehavior: Phase.ProrationBehavior?
        public var startDate: Date?
        public var transferData: PhaseTransferData?
        public var trialEnd: Date?

        public init(
            addInvoiceItems: [PhaseAddInvoiceItem]? = nil,
            applicationFeePercent: Float? = nil,
            automaticTax: PhaseAutomaticTax? = nil,
            billingCycleAnchor: BillingCycleAnchor? = nil,
            billingThresholds: DefaultSettingsBillingThresholds? = nil,
            collectionMethod: CollectionMethod? = nil,
            coupon: Stripe.Products.Coupon.ID? = nil,
            currency: Stripe.Currency? = nil,
            defaultPaymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            defaultTaxRates: [Stripe.Tax.Rate]? = nil,
            description: String? = nil,
            endDate: Date? = nil,
            invoiceSettings: InvoiceSettings? = nil,
            items: [PhaseItem]? = nil,
            metadata: [String: String]? = nil,
            onBehalfOf: Stripe.Connect.Account.ID? = nil,
            prorationBehavior: Phase.ProrationBehavior? = nil,
            startDate: Date? = nil,
            transferData: PhaseTransferData? = nil,
            trialEnd: Date? = nil
        ) {
            self.addInvoiceItems = addInvoiceItems
            self.applicationFeePercent = applicationFeePercent
            self.automaticTax = automaticTax
            self.billingCycleAnchor = billingCycleAnchor
            self.billingThresholds = billingThresholds
            self.collectionMethod = collectionMethod
            self._coupon = Expandable(id: coupon)
            self.currency = currency
            self._defaultPaymentMethod = Expandable(id: defaultPaymentMethod)
            self.defaultTaxRates = defaultTaxRates
            self.description = description
            self.endDate = endDate
            self.invoiceSettings = invoiceSettings
            self.items = items
            self.metadata = metadata
            self._onBehalfOf = Expandable(id: onBehalfOf)
            self.prorationBehavior = prorationBehavior
            self.startDate = startDate
            self.transferData = transferData
            self.trialEnd = trialEnd
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct PhaseAddInvoiceItem: Codable, Hashable, Sendable {
        @ExpandableOf<Stripe.Products.Price> public var price: Stripe.Products.Price.ID?
        public var quantity: Int?
        public var taxRates: [Stripe.Tax.Rate]?

        public init(
            price: Stripe.Products.Price.ID? = nil,
            quantity: Int? = nil,
            taxRates: [Stripe.Tax.Rate]? = nil
        ) {
            self._price = Expandable(id: price)
            self.quantity = quantity
            self.taxRates = taxRates
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct PhaseAutomaticTax: Codable, Hashable, Sendable {
        public var enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct PhaseItem: Codable, Hashable, Sendable {
        public var billingThresholds: PhaseItemBillingThresholds?
        public var metadata: [String: String]?
        @ExpandableOf<Stripe.Products.Price> public var price: Stripe.Products.Price.ID?
        public var quantity: Int?
        public var taxRates: [Stripe.Tax.Rate]?

        public init(
            billingThresholds: PhaseItemBillingThresholds? = nil,
            metadata: [String: String]? = nil,
            price: Stripe.Products.Price.ID? = nil,
            quantity: Int? = nil,
            taxRates: [Stripe.Tax.Rate]? = nil
        ) {
            self.billingThresholds = billingThresholds
            self.metadata = metadata
            self._price = Expandable(id: price)
            self.quantity = quantity
            self.taxRates = taxRates
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct PhaseItemBillingThresholds: Codable, Hashable, Sendable {
        public var usageGte: Int?

        public init(
            usageGte: Int? = nil
        ) {
            self.usageGte = usageGte
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct PhaseTransferData: Codable, Hashable, Sendable {
        public var amountPercent: Int?
        @ExpandableOf<Stripe.Connect.Account> public var destination: Stripe.Connect.Account.ID?

        public init(
            amountPercent: Int? = nil,
            destination: Stripe.Connect.Account.ID? = nil
        ) {
            self.amountPercent = amountPercent
            self._destination = Expandable(id: destination)
        }
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public enum BillingCycleAnchor: String, Codable, Sendable {
        case phaseStart = "phase_start"
        case automatic
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public enum Status: String, Codable, Sendable {
        case notStarted = "not_started"
        case active
        case completed
        case released
        case canceled
    }
}

extension Stripe.Billing.Subscription.Schedule.Phase {
    public enum ProrationBehavior: String, Codable, Sendable {
        case createProrations = "create_prorations"
        case alwaysInvoice = "always_invoice"
        case none
    }
}

extension Stripe.Billing.Subscription.Schedule {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Billing.Subscription.Schedule]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Billing.Subscription.Schedule]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
