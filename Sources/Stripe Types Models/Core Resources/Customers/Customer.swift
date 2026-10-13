public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Customers {
    public struct Customer: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public let id: Stripe.Customers.Customer.ID
        public var address: Address?
        public var description: String?
        public var email: String?
        public var metadata: [String: String]?
        public var name: String?
        public var phone: String?
        public var shipping: ShippingLabel?
        public var object: String
        public var balance: Int?
        public var cashBalance: Stripe.Customers.CustomerCashBalance?
        public var created: Date
        public var currency: Stripe.Currency?
        @DynamicExpandable<BankAccount, Card> public var defaultSource: String?
        public var delinquent: Bool?
        public var discount: Stripe.Products.Discount?
        public var invoiceCreditBalance: [String: Int]?
        public var invoicePrefix: String?
        public var invoiceSettings: Stripe.Customers.CustomerInvoiceSettings?
        public var livemode: Bool?
        public var nextInvoiceSequence: Int?
        public var preferredLocals: [String]?
        public var sources: StripeSourcesList?
        public var subscriptions: Stripe.Billing.Subscription.List?
        public var taxExempt: Stripe.Customers.CustomerTaxExempt?
        public var taxIds: Stripe.Tax.ID.List?
        @ExpandableOf<Stripe.Billing.TestClocks.TestClock> public var testClock: Stripe.Billing.TestClocks.TestClock.ID?

        public init(
            id: Stripe.Customers.Customer.ID,
            address: Address? = nil,
            description: String? = nil,
            email: String? = nil,
            metadata: [String: String]? = nil,
            name: String? = nil,
            phone: String? = nil,
            shipping: ShippingLabel? = nil,
            object: String,
            balance: Int? = nil,
            cashBalance: Stripe.Customers.CustomerCashBalance? = nil,
            created: Date,
            currency: Stripe.Currency? = nil,
            defaultSource: String? = nil,
            delinquent: Bool? = nil,
            discount: Stripe.Products.Discount? = nil,
            invoiceCreditBalance: [String: Int]? = nil,
            invoicePrefix: String? = nil,
            invoiceSettings: Stripe.Customers.CustomerInvoiceSettings? = nil,
            livemode: Bool? = nil,
            nextInvoiceSequence: Int? = nil,
            preferredLocals: [String]? = nil,
            sources: StripeSourcesList? = nil,
            subscriptions: Stripe.Billing.Subscription.List? = nil,
            taxExempt: Stripe.Customers.CustomerTaxExempt? = nil,
            taxIds: Stripe.Tax.ID.List? = nil,
            testClock: Stripe.Billing.TestClocks.TestClock.ID? = nil
        ) {
            self.id = id
            self.address = address
            self.description = description
            self.email = email
            self.metadata = metadata
            self.name = name
            self.phone = phone
            self.shipping = shipping
            self.object = object
            self.balance = balance
            self.cashBalance = cashBalance
            self.created = created
            self.currency = currency
            self._defaultSource = DynamicExpandable(id: defaultSource)
            self.delinquent = delinquent
            self.discount = discount
            self.invoiceCreditBalance = invoiceCreditBalance
            self.invoicePrefix = invoicePrefix
            self.invoiceSettings = invoiceSettings
            self.livemode = livemode
            self.nextInvoiceSequence = nextInvoiceSequence
            self.preferredLocals = preferredLocals
            self.sources = sources
            self.subscriptions = subscriptions
            self.taxExempt = taxExempt
            self.taxIds = taxIds
            self._testClock = ExpandableOf(id: testClock)
        }
    }
}

extension Stripe.Customers.Customer {
    public enum Sessions: Sendable {}
}

extension Stripe.Customers {
    public struct CustomerCashBalance: Codable, Hashable, Sendable {
        public var object: String
        public var available: [String: Int]?
        public var customer: Stripe.Customers.Customer.ID?
        public var livemode: Bool
        public var settings: Stripe.Customers.CustomerCashBalanceSettings?

        public init(
            object: String,
            available: [String: Int]? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            livemode: Bool,
            settings: Stripe.Customers.CustomerCashBalanceSettings? = nil
        ) {
            self.object = object
            self.available = available
            self.customer = customer
            self.livemode = livemode
            self.settings = settings
        }
    }
}

extension Stripe.Customers {
    public struct CustomerCashBalanceSettings: Codable, Hashable, Sendable {
        public var reconciliationMode: String?
        public var usingMerchantDefault: Bool?

        public init(
            reconciliationMode: String? = nil,
            usingMerchantDefault: Bool? = nil
        ) {
            self.reconciliationMode = reconciliationMode
            self.usingMerchantDefault = usingMerchantDefault
        }
    }
}

extension Stripe.Customers {
    public struct CustomerInvoiceSettings: Codable, Hashable, Sendable {
        public var customFields: [Stripe.Customers.CustomerInvoiceSettingsCustomFields]?
        @ExpandableOf<Stripe.PaymentMethods.PaymentMethod> public var defaultPaymentMethod: Stripe.PaymentMethods.PaymentMethod.ID?
        public var footer: String?
        public var renderingOptions: Stripe.Customers.CustomerInvoiceSettingsRenderingOptions?

        public init(
            customFields: [Stripe.Customers.CustomerInvoiceSettingsCustomFields]? = nil,
            defaultPaymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            footer: String? = nil,
            renderingOptions: Stripe.Customers.CustomerInvoiceSettingsRenderingOptions? = nil
        ) {
            self.customFields = customFields
            self._defaultPaymentMethod = Expandable(id: defaultPaymentMethod)
            self.footer = footer
            self.renderingOptions = renderingOptions
        }
    }
}

extension Stripe.Customers {
    public struct CustomerInvoiceSettingsCustomFields: Codable, Hashable, Sendable {
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

extension Stripe.Customers {
    public struct CustomerInvoiceSettingsRenderingOptions: Codable, Hashable, Sendable {
        public var amountTaxDisplay: String?

        public init(
            amountTaxDisplay: String? = nil
        ) {
            self.amountTaxDisplay = amountTaxDisplay
        }
    }
}

extension Stripe.Customers {
    public enum CustomerTaxExempt: String, Codable, Sendable {
        case none
        case exempt
        case reverse
    }
}

extension Stripe.Customers {
    public struct CustomerList: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Customers.Customer]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Customers.Customer]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}

extension Stripe.Customers {
    public struct CustomerSearchResult: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Customers.Customer]?
        public var hasMore: Bool?
        public var url: String?
        public var nextPage: String?
        public var totalCount: Int?

        public init(
            object: String,
            data: [Stripe.Customers.Customer]? = nil,
            hasMore: Bool? = nil,
            url: String? = nil,
            nextPage: String? = nil,
            totalCount: Int? = nil
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
            self.nextPage = nextPage
            self.totalCount = totalCount
        }
    }
}
