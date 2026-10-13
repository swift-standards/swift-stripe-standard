public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe {
    public struct PaymentLink: Codable, Hashable, Sendable, Identifiable {
        public var id: Stripe.PaymentLink.ID
        public var active: Bool?
        public var lineItems: Stripe.PaymentLink.LineItem.List?
        public var metadata: [String: String]?
        public var url: String?
        public var object: String
        public var afterCompletion: Stripe.PaymentLink.After.Completion?
        public var allowPromotionCodes: Bool?
        public var applicationFeeAmount: Int?
        public var applicationFeePercent: Decimal?
        public var automaticTax: Stripe.PaymentLink.AutomaticTax?
        public var billingAddressCollection: Stripe.PaymentLink.Billing.Address.Collection?
        public var consentCollection: Stripe.PaymentLink.Consent.Collection?
        public var currency: Stripe.Currency?
        public var customFields: [Stripe.PaymentLink.CustomField]?
        public var customText: Stripe.PaymentLink.Custom.Text?
        public var customerCreation: Stripe.PaymentLink.Customer.Creation?
        public var inactiveMessage: String?
        public var invoiceCreation: Stripe.PaymentLink.Invoice.Creation?
        public var livemode: Bool?
        @ExpandableOf<Stripe.Connect.Account> public var onBehalfOf: Stripe.Connect.Account.ID?
        public var paymentIntentData: Stripe.PaymentLink.PaymentIntent.Data?
        public var paymentMethodCollection: Stripe.PaymentLink.PaymentMethod.Collection?
        public var paymentMethodTypes: [String]?
        public var phoneNumberCollection: PhoneNumber.Collection?
        public var restrictions: Stripe.PaymentLink.Restrictions?
        public var shippingAddressCollection: Stripe.PaymentLink.Shipping.Address.Collection?
        public var shippingOptions: [Stripe.PaymentLink.Shipping.Option]?
        public var submitType: Stripe.PaymentLink.Submit.`Type`?
        public var subscriptionData: Stripe.PaymentLink.Subscription.Data?
        public var taxIdCollection: Stripe.PaymentLink.TaxId.Collection?
        public var transferData: Stripe.PaymentLink.Transfer.Data?

        public init(
            id: Stripe.PaymentLink.ID,
            active: Bool? = nil,
            lineItems: Stripe.PaymentLink.LineItem.List? = nil,
            metadata: [String: String]? = nil,
            url: String? = nil,
            object: String,
            afterCompletion: Stripe.PaymentLink.After.Completion? = nil,
            allowPromotionCodes: Bool? = nil,
            applicationFeeAmount: Int? = nil,
            applicationFeePercent: Decimal? = nil,
            automaticTax: Stripe.PaymentLink.AutomaticTax? = nil,
            billingAddressCollection: Stripe.PaymentLink.Billing.Address.Collection? = nil,
            consentCollection: Stripe.PaymentLink.Consent.Collection? = nil,
            currency: Stripe.Currency? = nil,
            customFields: [Stripe.PaymentLink.CustomField]? = nil,
            customText: Stripe.PaymentLink.Custom.Text? = nil,
            customerCreation: Stripe.PaymentLink.Customer.Creation? = nil,
            inactiveMessage: String? = nil,
            invoiceCreation: Stripe.PaymentLink.Invoice.Creation? = nil,
            livemode: Bool? = nil,
            onBehalfOf: Stripe.Connect.Account.ID? = nil,
            paymentIntentData: Stripe.PaymentLink.PaymentIntent.Data? = nil,
            paymentMethodCollection: Stripe.PaymentLink.PaymentMethod.Collection? = nil,
            paymentMethodTypes: [String]? = nil,
            phoneNumberCollection: PhoneNumber.Collection? = nil,
            shippingAddressCollection: Stripe.PaymentLink.Shipping.Address.Collection? = nil,
            shippingOptions: [Stripe.PaymentLink.Shipping.Option]? = nil,
            submitType: Stripe.PaymentLink.Submit.`Type`? = nil,
            subscriptionData: Stripe.PaymentLink.Subscription.Data? = nil,
            taxIdCollection: Stripe.PaymentLink.TaxId.Collection? = nil,
            transferData: Stripe.PaymentLink.Transfer.Data? = nil
        ) {
            self.id = id
            self.active = active
            self.lineItems = lineItems
            self.metadata = metadata
            self.url = url
            self.object = object
            self.afterCompletion = afterCompletion
            self.allowPromotionCodes = allowPromotionCodes
            self.applicationFeeAmount = applicationFeeAmount
            self.applicationFeePercent = applicationFeePercent
            self.automaticTax = automaticTax
            self.billingAddressCollection = billingAddressCollection
            self.consentCollection = consentCollection
            self.currency = currency
            self.customFields = customFields
            self.customText = customText
            self.customerCreation = customerCreation
            self.inactiveMessage = inactiveMessage
            self.invoiceCreation = invoiceCreation
            self.livemode = livemode
            self._onBehalfOf = Expandable(id: onBehalfOf)
            self.paymentIntentData = paymentIntentData
            self.paymentMethodCollection = paymentMethodCollection
            self.paymentMethodTypes = paymentMethodTypes
            self.phoneNumberCollection = phoneNumberCollection
            self.shippingAddressCollection = shippingAddressCollection
            self.shippingOptions = shippingOptions
            self.submitType = submitType
            self.subscriptionData = subscriptionData
            self.taxIdCollection = taxIdCollection
            self.transferData = transferData
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case active
            case lineItems = "line_items"
            case metadata
            case url
            case object
            case afterCompletion = "after_completion"
            case allowPromotionCodes = "allow_promotion_codes"
            case applicationFeeAmount = "application_fee_amount"
            case applicationFeePercent = "application_fee_percent"
            case automaticTax = "automatic_tax"
            case billingAddressCollection = "billing_address_collection"
            case consentCollection = "consent_collection"
            case currency
            case customFields = "custom_fields"
            case customText = "custom_text"
            case customerCreation = "customer_creation"
            case inactiveMessage = "inactive_message"
            case invoiceCreation = "invoice_creation"
            case livemode
            case onBehalfOf = "on_behalf_of"
            case paymentIntentData = "payment_intent_data"
            case paymentMethodCollection = "payment_method_collection"
            case paymentMethodTypes = "payment_method_types"
            case phoneNumberCollection = "phone_number_collection"
            case restrictions
            case shippingAddressCollection = "shipping_address_collection"
            case shippingOptions = "shipping_options"
            case submitType = "submit_type"
            case subscriptionData = "subscription_data"
            case taxIdCollection = "tax_id_collection"
            case transferData = "transfer_data"
        }
    }
}

extension Stripe.PaymentLink {
    public struct Restrictions: Codable, Hashable, Sendable {
        public let completedSessions: CompletedSessions

        private enum CodingKeys: String, CodingKey {
            case completedSessions = "completed_sessions"
        }

        public init(completedSessions: CompletedSessions) {
            self.completedSessions = completedSessions
        }

        public struct CompletedSessions: Codable, Hashable, Sendable {
            public let limit: Int

            public init(limit: Int) {
                self.limit = limit
            }
        }
    }

}
extension Stripe.PaymentLink {
    public typealias ID = Tagged<Self, String>
}

extension Stripe.PaymentLink {
    public struct LineItem: Codable, Hashable, Sendable, Identifiable {
        public var id: Stripe.PaymentLink.LineItem.ID
        public var object: String
        public var amountDiscount: Int?
        public var amountSubtotal: Int?
        public var amountTax: Int?
        public var amountTotal: Int?
        public var currency: Stripe.Currency?
        public var description: String?
        public var discounts: [Stripe.PaymentLink.LineItem.Discount]?
        public var price: Stripe.Products.Price?
        public var quantity: Int?
        public var taxes: [Stripe.PaymentLink.LineItem.Tax]?

        public init(
            id: Stripe.PaymentLink.LineItem.ID,
            object: String,
            amountDiscount: Int? = nil,
            amountSubtotal: Int? = nil,
            amountTax: Int? = nil,
            amountTotal: Int? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            discounts: [Stripe.PaymentLink.LineItem.Discount]? = nil,
            price: Stripe.Products.Price? = nil,
            quantity: Int? = nil,
            taxes: [Stripe.PaymentLink.LineItem.Tax]? = nil
        ) {
            self.id = id
            self.object = object
            self.amountDiscount = amountDiscount
            self.amountSubtotal = amountSubtotal
            self.amountTax = amountTax
            self.amountTotal = amountTotal
            self.currency = currency
            self.description = description
            self.discounts = discounts
            self.price = price
            self.quantity = quantity
            self.taxes = taxes
        }
    }
}

extension Stripe.PaymentLink.LineItem {
    public typealias ID = Tagged<Self, String>
}

extension Stripe.PaymentLink.LineItem {
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

extension Stripe.PaymentLink.LineItem {
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

extension Stripe.PaymentLink.LineItem {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.PaymentLink.LineItem]?
        public var hasMore: Bool?
        public var url: String?

        public init(
            object: String,
            data: [Stripe.PaymentLink.LineItem]? = nil,
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

extension Stripe.PaymentLink {
    public enum After {}
}

extension Stripe.PaymentLink.After {
    public struct Completion: Codable, Hashable, Sendable {
        public var hostedConfirmation: Stripe.PaymentLink.After.Completion.Hosted.Confirmation?
        public var redirect: Stripe.PaymentLink.After.Completion.Redirect?
        public var type: Stripe.PaymentLink.After.Completion.`Type`?

        public init(
            hostedConfirmation: Stripe.PaymentLink.After.Completion.Hosted.Confirmation? = nil,
            redirect: Stripe.PaymentLink.After.Completion.Redirect? = nil,
            type: Stripe.PaymentLink.After.Completion.`Type`? = nil
        ) {
            self.hostedConfirmation = hostedConfirmation
            self.redirect = redirect
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case hostedConfirmation = "hosted_confirmation"
            case redirect
            case type
        }
    }
}

extension Stripe.PaymentLink.After.Completion {
    public enum Hosted {}
}

extension Stripe.PaymentLink.After.Completion.Hosted {
    public struct Confirmation: Codable, Hashable, Sendable {
        public var message: String?

        private enum CodingKeys: String, CodingKey {
            case message = "custom_message"
        }

        public init(
            message: String? = nil
        ) {
            self.message = message
        }

        public init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.message = try container.decodeIfPresent(String.self, forKey: .message)
        }
    }
}

extension Stripe.PaymentLink.After.Completion {
    public struct Redirect: Codable, Hashable, Sendable {
        public var url: String?

        public init(
            url: String? = nil
        ) {
            self.url = url
        }
    }
}

extension Stripe.PaymentLink.After.Completion {
    public enum `Type`: String, Codable, Sendable {
        case redirect
        case hostedConfirmation = "hosted_confirmation"
    }
}

extension Stripe.PaymentLink {
    public struct AutomaticTax: Codable, Hashable, Sendable {
        public var enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }
}

extension Stripe.PaymentLink {
    public enum Billing {}
}

extension Stripe.PaymentLink.Billing {
    public enum Address {}
}

extension Stripe.PaymentLink.Billing.Address {
    public enum Collection: String, Codable, Sendable {
        case auto
        case `required`
    }
}

extension Stripe.PaymentLink {
    public enum Consent {}
}

extension Stripe.PaymentLink.Consent {
    public struct Collection: Codable, Hashable, Sendable {
        public var promotions: String?
        public var termsOfService: String?

        public init(
            promotions: String? = nil,
            termsOfService: String? = nil
        ) {
            self.promotions = promotions
            self.termsOfService = termsOfService
        }
    }
}

extension Stripe.PaymentLink {
    public struct CustomField: Codable, Hashable, Sendable {
        public var dropdown: Stripe.PaymentLink.CustomField.Dropdown?
        public var key: String?
        public var label: Stripe.PaymentLink.CustomField.Label?
        public var numeric: Stripe.PaymentLink.CustomField.Numeric?
        public var optional: Bool?
        public var text: Stripe.PaymentLink.CustomField.Text?
        public var type: Stripe.PaymentLink.CustomField.`Type`?

        public init(
            dropdown: Stripe.PaymentLink.CustomField.Dropdown? = nil,
            key: String? = nil,
            label: Stripe.PaymentLink.CustomField.Label? = nil,
            numeric: Stripe.PaymentLink.CustomField.Numeric? = nil,
            optional: Bool? = nil,
            text: Stripe.PaymentLink.CustomField.Text? = nil,
            type: Stripe.PaymentLink.CustomField.`Type`? = nil
        ) {
            self.dropdown = dropdown
            self.key = key
            self.label = label
            self.numeric = numeric
            self.optional = optional
            self.text = text
            self.type = type
        }
    }
}

extension Stripe.PaymentLink.CustomField {
    public struct Dropdown: Codable, Hashable, Sendable {
        public var options: [Stripe.PaymentLink.CustomField.Dropdown.Option]?
        public var value: String?

        public init(
            options: [Stripe.PaymentLink.CustomField.Dropdown.Option]? = nil,
            value: String? = nil
        ) {
            self.options = options
            self.value = value
        }
    }
}

extension Stripe.PaymentLink.CustomField.Dropdown {
    public struct Option: Codable, Hashable, Sendable {
        public var label: String?
        public var value: String?

        public init(
            label: String? = nil,
            value: String? = nil
        ) {
            self.label = label
            self.value = value
        }
    }
}

extension Stripe.PaymentLink.CustomField {
    public struct Label: Codable, Hashable, Sendable {
        public var custom: String?
        public var type: Stripe.PaymentLink.CustomField.LabelType?

        public init(
            custom: String? = nil,
            type: Stripe.PaymentLink.CustomField.LabelType? = nil
        ) {
            self.custom = custom
            self.type = type
        }
    }
}

extension Stripe.PaymentLink.CustomField {
    public enum LabelType: String, Codable, Sendable {
        case custom
    }
}

extension Stripe.PaymentLink.CustomField {
    public struct Numeric: Codable, Hashable, Sendable {
        public var maximumLength: Int?
        public var minimumLength: Int?
        public var value: String?

        public init(
            maximumLength: Int? = nil,
            minimumLength: Int? = nil,
            value: String? = nil
        ) {
            self.maximumLength = maximumLength
            self.minimumLength = minimumLength
            self.value = value
        }
    }
}

extension Stripe.PaymentLink.CustomField {
    public struct Text: Codable, Hashable, Sendable {
        public var maximumLength: Int?
        public var minimumLength: Int?
        public var value: String?

        public init(
            maximumLength: Int? = nil,
            minimumLength: Int? = nil,
            value: String? = nil
        ) {
            self.maximumLength = maximumLength
            self.minimumLength = minimumLength
            self.value = value
        }
    }
}

extension Stripe.PaymentLink.CustomField {
    public enum `Type`: String, Codable, Sendable {
        case text
        case numeric
        case dropdown
    }
}

extension Stripe.PaymentLink {
    public enum Custom {}
}

extension Stripe.PaymentLink.Custom {
    public struct Text: Codable, Hashable, Sendable {
        public var shippingAddress: Stripe.PaymentLink.Custom.Text.Shipping.Address?
        public var submit: Stripe.PaymentLink.Custom.Text.Submit?

        public init(
            shippingAddress: Stripe.PaymentLink.Custom.Text.Shipping.Address? = nil,
            submit: Stripe.PaymentLink.Custom.Text.Submit? = nil
        ) {
            self.shippingAddress = shippingAddress
            self.submit = submit
        }
    }
}

extension Stripe.PaymentLink.Custom.Text {
    public enum Shipping {}
}

extension Stripe.PaymentLink.Custom.Text.Shipping {
    public struct Address: Codable, Hashable, Sendable {
        public var message: String?

        public init(
            message: String? = nil
        ) {
            self.message = message
        }
    }
}

extension Stripe.PaymentLink.Custom.Text {
    public struct Submit: Codable, Hashable, Sendable {
        public var message: String?

        public init(
            message: String? = nil
        ) {
            self.message = message
        }
    }
}

extension Stripe.PaymentLink {
    public enum Customer {}
}

extension Stripe.PaymentLink.Customer {
    public enum Creation: String, Codable, Sendable {
        case ifRequired = "if_required"
        case always
    }
}

extension Stripe.PaymentLink {
    public enum Invoice {}
}

extension Stripe.PaymentLink.Invoice {
    public struct Creation: Codable, Hashable, Sendable {
        public var enabled: Bool?
        public var invoiceData: Stripe.PaymentLink.Invoice.Creation.Invoice.Data?

        public init(
            enabled: Bool? = nil,
            invoiceData: Stripe.PaymentLink.Invoice.Creation.Invoice.Data? = nil
        ) {
            self.enabled = enabled
            self.invoiceData = invoiceData
        }
    }
}

extension Stripe.PaymentLink.Invoice.Creation {
    public enum Invoice {}
}

extension Stripe.PaymentLink.Invoice.Creation.Invoice {
    public struct Data: Codable, Hashable, Sendable {
        @ExpandableCollection<Stripe.Tax.ID> public var accountTaxIds: [String]?
        public var customFields: [Stripe.PaymentLink.Invoice.Creation.Invoice.Data.CustomFields]?
        public var description: String?
        public var footer: String?
        public var metadata: [String: String]?
        public var renderingOptions: Stripe.PaymentLink.Invoice.Creation.Invoice.Data.Rendering.Options?

        public init(
            accountTaxIds: [String]? = nil,
            customFields: [Stripe.PaymentLink.Invoice.Creation.Invoice.Data.CustomFields]? = nil,
            description: String? = nil,
            footer: String? = nil,
            metadata: [String: String]? = nil,
            renderingOptions: Stripe.PaymentLink.Invoice.Creation.Invoice.Data.Rendering.Options? =
                nil
        ) {
            self._accountTaxIds = ExpandableCollection(ids: accountTaxIds)
            self.customFields = customFields
            self.description = description
            self.footer = footer
            self.metadata = metadata
            self.renderingOptions = renderingOptions
        }
    }
}

extension Stripe.PaymentLink.Invoice.Creation.Invoice.Data {
    public enum Rendering {}
}

extension Stripe.PaymentLink.Invoice.Creation.Invoice.Data {
    public struct CustomFields: Codable, Hashable, Sendable {
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

extension Stripe.PaymentLink.Invoice.Creation.Invoice.Data.Rendering {
    public struct Options: Codable, Hashable, Sendable {
        public var amountTaxDisplay: String?

        public init(
            amountTaxDisplay: String? = nil
        ) {
            self.amountTaxDisplay = amountTaxDisplay
        }
    }
}

extension Stripe.PaymentLink {
    public enum PaymentIntent {}
}

extension Stripe.PaymentLink.PaymentIntent {
    public struct Data: Codable, Hashable, Sendable {
        public var captureMethod: Stripe.PaymentLink.PaymentIntent.Data.Capture.Method?
        public var setupFutureUsage: Stripe.PaymentLink.PaymentIntent.Data.Setup.FutureUsage?

        public init(
            captureMethod: Stripe.PaymentLink.PaymentIntent.Data.Capture.Method? = nil,
            setupFutureUsage: Stripe.PaymentLink.PaymentIntent.Data.Setup.FutureUsage? = nil
        ) {
            self.captureMethod = captureMethod
            self.setupFutureUsage = setupFutureUsage
        }
    }
}

extension Stripe.PaymentLink.PaymentIntent.Data {
    public enum Capture {}
}

extension Stripe.PaymentLink.PaymentIntent.Data {
    public enum Setup {}
}

extension Stripe.PaymentLink.PaymentIntent.Data.Capture {
    public enum Method: String, Codable, Sendable {
        case automatic
        case automaticAsync = "automatic_async"
        case manual
    }
}

extension Stripe.PaymentLink.PaymentIntent.Data.Setup {
    public enum FutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
    }
}

extension Stripe.PaymentLink {
    public enum PaymentMethod {}
}

extension Stripe.PaymentLink.PaymentMethod {
    public enum Collection: String, Codable, Sendable {
        case always
        case ifRequired = "if_required"
    }
}

extension Stripe.PaymentLink {
    public enum Shipping {}
}

extension Stripe.PaymentLink.Shipping {
    public enum Address {}
}

extension Stripe.PaymentLink.Shipping.Address {
    public struct Collection: Codable, Hashable, Sendable {
        public var allowedCountries: [String]?

        public init(
            allowedCountries: [String]? = nil
        ) {
            self.allowedCountries = allowedCountries
        }
    }
}

extension Stripe.PaymentLink.Shipping {
    public struct Option: Codable, Hashable, Sendable {
        public var shippingAmount: Int?
        @ExpandableOf<Stripe.Products.Shipping.Rate> public var shippingRate

        public init(
            shippingAmount: Int? = nil,
            shippingRate: Stripe.Products.Shipping.Rate.ID? = nil
        ) {
            self.shippingAmount = shippingAmount
            self._shippingRate = Expandable(id: shippingRate)
        }
    }
}

extension Stripe.PaymentLink {
    public enum Submit {}
}

extension Stripe.PaymentLink.Submit {
    public enum `Type`: String, Codable, Sendable {
        case auto
        case book
        case donate
        case pay
    }
}

extension Stripe.PaymentLink {
    public enum Subscription {}
}

extension Stripe.PaymentLink.Subscription {
    public struct Data: Codable, Hashable, Sendable {
        public var description: String?
        public var trialPeriodDays: Int?

        public init(
            description: String? = nil,
            trialPeriodDays: Int? = nil
        ) {
            self.description = description
            self.trialPeriodDays = trialPeriodDays
        }
    }
}

extension Stripe.PaymentLink {
    public enum TaxId {}
}

extension Stripe.PaymentLink.TaxId {
    public struct Collection: Codable, Hashable, Sendable {
        public var enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }
}

extension Stripe.PaymentLink {
    public enum Transfer {}
}

extension Stripe.PaymentLink.Transfer {
    public struct Data: Codable, Hashable, Sendable {
        public var amount: Int?
        @ExpandableOf<Stripe.Connect.Account> public var destination: Stripe.Connect.Account.ID?

        public init(
            amount: Int? = nil,
            destination: Stripe.Connect.Account.ID? = nil
        ) {
            self.amount = amount
            self._destination = Expandable(id: destination)
        }
    }
}

extension Stripe.PaymentLink {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.PaymentLink]?
        public var hasMore: Bool?
        public var url: String?

        public init(
            object: String,
            data: [Stripe.PaymentLink]? = nil,
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
