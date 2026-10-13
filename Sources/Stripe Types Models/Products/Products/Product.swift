public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Products {
    public struct Product: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var active: Bool?
        @ExpandableOf<Stripe.Products.Price> public var defaultPrice
        public var description: String?
        public var metadata: [String: String]?
        public var name: String?
        public var object: String
        public var created: Date
        public var images: [String]?
        public var livemode: Bool?
        public var packageDimensions: Package.Dimensions?
        public var shippable: Bool?
        public var statementDescriptor: Stripe.StatementDescriptor?
        @ExpandableOf<Stripe.Tax.Code> public var taxCode
        public var unitLabel: String?
        public var updated: Date?
        public var url: String?
        public var marketingFeatures: [Marketing.Feature]?
        public var attributes: [String]?
        public var type: Product.ProductType?

        private enum CodingKeys: String, CodingKey {
            case id
            case active
            case defaultPrice = "default_price"
            case description
            case metadata
            case name
            case object
            case created
            case images
            case livemode
            case packageDimensions = "package_dimensions"
            case shippable
            case statementDescriptor = "statement_descriptor"
            case taxCode = "tax_code"
            case unitLabel = "unit_label"
            case updated
            case url
            case marketingFeatures = "marketing_features"
            case attributes
            case type
        }

        public init(
            id: ID,
            active: Bool? = nil,
            defaultPrice: Stripe.Products.Price.ID? = nil,
            description: String? = nil,
            metadata: [String: String]? = nil,
            name: String? = nil,
            object: String,
            created: Date,
            images: [String]? = nil,
            livemode: Bool? = nil,
            packageDimensions: Package.Dimensions? = nil,
            shippable: Bool? = nil,
            statementDescriptor: Stripe.StatementDescriptor? = nil,
            taxCode: Stripe.Tax.Code.ID? = nil,
            unitLabel: String? = nil,
            updated: Date? = nil,
            url: String? = nil,
            marketingFeatures: [Marketing.Feature]? = nil,
            attributes: [String]? = nil,
            type: Product.ProductType? = nil
        ) {
            self.id = id
            self.active = active
            self._defaultPrice = Expandable(id: defaultPrice)
            self.description = description
            self.metadata = metadata
            self.name = name
            self.object = object
            self.created = created
            self.images = images
            self.livemode = livemode
            self.packageDimensions = packageDimensions
            self.shippable = shippable
            self.statementDescriptor = statementDescriptor
            self._taxCode = Expandable(id: taxCode)
            self.unitLabel = unitLabel
            self.updated = updated
            self.url = url
            self.marketingFeatures = marketingFeatures
            self.attributes = attributes
            self.type = type
        }
    }
}

extension Stripe.Products.Product {
    public enum Package {}

    public enum ProductType: String, Codable, Hashable, Sendable {
        case service
        case good
    }
}

public enum Marketing {}

extension Marketing {
    public struct Feature: Codable, Hashable, Sendable {
        public var name: String?

        public init(
            name: String? = nil
        ) {
            self.name = name
        }
    }
}

extension Stripe.Products.Product.Package {
    public struct Dimensions: Codable, Hashable, Sendable {
        public var height: Decimal?
        public var length: Decimal?
        public var weight: Decimal?
        public var width: Decimal?

        public init(
            height: Decimal? = nil,
            length: Decimal? = nil,
            weight: Decimal? = nil,
            width: Decimal? = nil
        ) {
            self.height = height
            self.length = length
            self.weight = weight
            self.width = width
        }
    }
}

extension Stripe.Products.Product {
    public enum Search {}
}

extension Stripe.Products.Product.Search {
    public struct Result: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Products.Product]?
        public var hasMore: Bool?
        public var url: String?
        public var nextPage: String?
        public var totalCount: Int?

        public init(
            object: String,
            data: [Stripe.Products.Product]? = nil,
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

extension Stripe.Products.Product {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Products.Product]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Products.Product]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
