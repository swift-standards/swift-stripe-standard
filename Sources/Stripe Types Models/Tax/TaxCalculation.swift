public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Tax {
    public struct Calculation: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var object: String
        public var amountTotal: Int
        public var currency: Stripe.Currency
        public var customerDetails: CustomerDetails?
        public var created: Date
        public var customerTaxIds: [CustomerTaxID]?
        public var expiresAt: Date?
        public var lineItems: LineItemList?
        public var livemode: Bool
        public var shippingCost: ShippingCost?
        public var taxAmountExclusive: Int
        public var taxAmountInclusive: Int
        public var taxBreakdown: [TaxBreakdown]?
        public var taxDate: Date

        private enum CodingKeys: String, CodingKey {
            case id
            case object
            case amountTotal = "amount_total"
            case currency
            case customerDetails = "customer_details"
            case created
            case customerTaxIds = "customer_tax_ids"
            case expiresAt = "expires_at"
            case lineItems = "line_items"
            case livemode
            case shippingCost = "shipping_cost"
            case taxAmountExclusive = "tax_amount_exclusive"
            case taxAmountInclusive = "tax_amount_inclusive"
            case taxBreakdown = "tax_breakdown"
            case taxDate = "tax_date"
        }

        public init(
            id: ID,
            object: String,
            amountTotal: Int,
            currency: Stripe.Currency,
            customerDetails: CustomerDetails? = nil,
            created: Date,
            customerTaxIds: [CustomerTaxID]? = nil,
            expiresAt: Date? = nil,
            lineItems: LineItemList? = nil,
            livemode: Bool,
            shippingCost: ShippingCost? = nil,
            taxAmountExclusive: Int,
            taxAmountInclusive: Int,
            taxBreakdown: [TaxBreakdown]? = nil,
            taxDate: Date
        ) {
            self.id = id
            self.object = object
            self.amountTotal = amountTotal
            self.currency = currency
            self.customerDetails = customerDetails
            self.created = created
            self.customerTaxIds = customerTaxIds
            self.expiresAt = expiresAt
            self.lineItems = lineItems
            self.livemode = livemode
            self.shippingCost = shippingCost
            self.taxAmountExclusive = taxAmountExclusive
            self.taxAmountInclusive = taxAmountInclusive
            self.taxBreakdown = taxBreakdown
            self.taxDate = taxDate
        }
    }
}

extension Stripe.Tax.Calculation {
    public struct CustomerDetails: Codable, Hashable, Sendable {
        public var address: Address?
        public var addressSource: AddressSource?
        public var ipAddress: String?
        public var taxability: Taxability?
        public var taxIds: [TaxID]?

        private enum CodingKeys: String, CodingKey {
            case address
            case addressSource = "address_source"
            case ipAddress = "ip_address"
            case taxability
            case taxIds = "tax_ids"
        }

        public init(
            address: Address? = nil,
            addressSource: AddressSource? = nil,
            ipAddress: String? = nil,
            taxability: Taxability? = nil,
            taxIds: [TaxID]? = nil
        ) {
            self.address = address
            self.addressSource = addressSource
            self.ipAddress = ipAddress
            self.taxability = taxability
            self.taxIds = taxIds
        }
    }

    public struct CustomerTaxID: Codable, Hashable, Sendable {
        public var type: String
        public var value: String

        public init(type: String, value: String) {
            self.type = type
            self.value = value
        }
    }

    public struct LineItem: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var object: String
        public var amount: Int
        public var amountTax: Int
        public var livemode: Bool
        public var product: Stripe.Products.Product.ID?
        public var quantity: Int
        public var reference: String?
        public var taxBehavior: TaxBehavior?
        public var taxCode: String?

        private enum CodingKeys: String, CodingKey {
            case id
            case object
            case amount
            case amountTax = "amount_tax"
            case livemode
            case product
            case quantity
            case reference
            case taxBehavior = "tax_behavior"
            case taxCode = "tax_code"
        }

        public init(
            id: ID,
            object: String,
            amount: Int,
            amountTax: Int,
            livemode: Bool,
            product: Stripe.Products.Product.ID? = nil,
            quantity: Int,
            reference: String? = nil,
            taxBehavior: TaxBehavior? = nil,
            taxCode: String? = nil
        ) {
            self.id = id
            self.object = object
            self.amount = amount
            self.amountTax = amountTax
            self.livemode = livemode
            self.product = product
            self.quantity = quantity
            self.reference = reference
            self.taxBehavior = taxBehavior
            self.taxCode = taxCode
        }
    }

    public struct LineItemList: Codable, Hashable, Sendable {
        public var object: String
        public var data: [LineItem]
        public var hasMore: Bool
        public var url: String

        private enum CodingKeys: String, CodingKey {
            case object
            case data
            case hasMore = "has_more"
            case url
        }

        public init(
            object: String,
            data: [LineItem],
            hasMore: Bool,
            url: String
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
        }
    }

    public struct ShippingCost: Codable, Hashable, Sendable {
        public var amount: Int
        public var amountTax: Int
        public var taxCode: String?
        public var taxBehavior: TaxBehavior?

        private enum CodingKeys: String, CodingKey {
            case amount
            case amountTax = "amount_tax"
            case taxCode = "tax_code"
            case taxBehavior = "tax_behavior"
        }

        public init(
            amount: Int,
            amountTax: Int,
            taxCode: String? = nil,
            taxBehavior: TaxBehavior? = nil
        ) {
            self.amount = amount
            self.amountTax = amountTax
            self.taxCode = taxCode
            self.taxBehavior = taxBehavior
        }
    }

    public struct TaxBreakdown: Codable, Hashable, Sendable {
        public var amount: Int
        public var inclusive: Bool
        public var jurisdiction: TaxJurisdiction?
        public var sourcing: Sourcing?
        public var taxRateDetails: TaxRateDetails?
        public var taxabilityReason: TaxabilityReason?

        private enum CodingKeys: String, CodingKey {
            case amount
            case inclusive
            case jurisdiction
            case sourcing
            case taxRateDetails = "tax_rate_details"
            case taxabilityReason = "taxability_reason"
        }

        public init(
            amount: Int,
            inclusive: Bool,
            jurisdiction: TaxJurisdiction? = nil,
            sourcing: Sourcing? = nil,
            taxRateDetails: TaxRateDetails? = nil,
            taxabilityReason: TaxabilityReason? = nil
        ) {
            self.amount = amount
            self.inclusive = inclusive
            self.jurisdiction = jurisdiction
            self.sourcing = sourcing
            self.taxRateDetails = taxRateDetails
            self.taxabilityReason = taxabilityReason
        }
    }

    public struct TaxJurisdiction: Codable, Hashable, Sendable {
        public var country: String
        public var displayName: String
        public var level: Level?
        public var state: String?

        private enum CodingKeys: String, CodingKey {
            case country
            case displayName = "display_name"
            case level
            case state
        }

        public init(
            country: String,
            displayName: String,
            level: Level? = nil,
            state: String? = nil
        ) {
            self.country = country
            self.displayName = displayName
            self.level = level
            self.state = state
        }

        public enum Level: String, Codable, Sendable {
            case city
            case country
            case county
            case district
            case state
        }
    }

    public struct TaxRateDetails: Codable, Hashable, Sendable {
        public var percentageDecimal: String
        public var taxType: String?

        private enum CodingKeys: String, CodingKey {
            case percentageDecimal = "percentage_decimal"
            case taxType = "tax_type"
        }

        public init(
            percentageDecimal: String,
            taxType: String? = nil
        ) {
            self.percentageDecimal = percentageDecimal
            self.taxType = taxType
        }
    }

    public struct TaxID: Codable, Hashable, Sendable {
        public var type: String
        public var value: String

        public init(type: String, value: String) {
            self.type = type
            self.value = value
        }
    }

    public enum AddressSource: String, Codable, Sendable {
        case shipping
        case billing
    }

    public enum Taxability: String, Codable, Sendable {
        case exempt
        case none
        case reverse
    }

    public enum TaxBehavior: String, Codable, Sendable {
        case exclusive
        case inclusive
    }

    public enum Sourcing: String, Codable, Sendable {
        case destination
        case origin
    }

    public enum TaxabilityReason: String, Codable, Sendable {
        case accountExempt = "account_exempt"
        case customerExempt = "customer_exempt"
        case notCollecting = "not_collecting"
        case notSubjectToTax = "not_subject_to_tax"
        case notSupported = "not_supported"
        case portionProductExempt = "portion_product_exempt"
        case portionReducedRated = "portion_reduced_rated"
        case portionStandardRated = "portion_standard_rated"
        case productExempt = "product_exempt"
        case productExemptHoliday = "product_exempt_holiday"
        case reverseCharge = "reverse_charge"
        case standardRated = "standard_rated"
        case taxableBasisReduced = "taxable_basis_reduced"
        case zeroRated = "zero_rated"
    }
}
