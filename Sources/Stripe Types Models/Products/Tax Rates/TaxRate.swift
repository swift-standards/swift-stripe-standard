public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Tax {
    public struct Rate: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var active: Bool?
        public var country: String?
        public var description: String?
        public var displayName: String?
        public var inclusive: Bool?
        public var jurisdiction: String?
        public var metadata: [String: String]?
        public var percentage: Decimal?
        public var state: String?
        public var object: String
        public var created: Date
        public var livemode: Bool?
        public var taxType: TaxType?

        public init(
            id: ID,
            active: Bool? = nil,
            country: String? = nil,
            description: String? = nil,
            displayName: String? = nil,
            inclusive: Bool? = nil,
            jurisdiction: String? = nil,
            metadata: [String: String]? = nil,
            percentage: Decimal? = nil,
            state: String? = nil,
            object: String,
            created: Date,
            livemode: Bool? = nil,
            taxType: TaxType? = nil
        ) {
            self.id = id
            self.active = active
            self.country = country
            self.description = description
            self.displayName = displayName
            self.inclusive = inclusive
            self.jurisdiction = jurisdiction
            self.metadata = metadata
            self.percentage = percentage
            self.state = state
            self.object = object
            self.created = created
            self.livemode = livemode
            self.taxType = taxType
        }
    }
}

extension Stripe.Tax.Rate {
    public enum TaxType: String, Codable, Sendable {
        case vat
        case salesTax = "sales_tax"
    }
}

public struct TaxRateList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [Stripe.Tax.Rate]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [Stripe.Tax.Rate]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}
