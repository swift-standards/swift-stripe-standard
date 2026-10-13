import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe {
    public struct LineItemPriceData: Codable, Equatable, Hashable, Sendable {
        public let currency: Stripe.Currency

        public let product: Stripe.Products.Product.ID?

        public let productData: ProductData?

        public let recurring: Recurring?

        public let taxBehavior: TaxBehavior?

        public let unitAmount: Int?

        public let unitAmountDecimal: String?

        private enum CodingKeys: String, CodingKey {
            case currency
            case product
            case productData = "product_data"
            case recurring
            case taxBehavior = "tax_behavior"
            case unitAmount = "unit_amount"
            case unitAmountDecimal = "unit_amount_decimal"
        }

        public init(
            currency: Stripe.Currency,
            product: Stripe.Products.Product.ID? = nil,
            productData: ProductData? = nil,
            recurring: Recurring? = nil,
            taxBehavior: TaxBehavior? = nil,
            unitAmount: Int? = nil,
            unitAmountDecimal: String? = nil
        ) {
            self.currency = currency
            self.product = product
            self.productData = productData
            self.recurring = recurring
            self.taxBehavior = taxBehavior
            self.unitAmount = unitAmount
            self.unitAmountDecimal = unitAmountDecimal
        }

        public struct ProductData: Codable, Equatable, Hashable, Sendable {
            public let name: String

            public let description: String?

            public let images: [String]?

            public let metadata: [String: String]?

            public let taxCode: String?

            private enum CodingKeys: String, CodingKey {
                case name
                case description
                case images
                case metadata
                case taxCode = "tax_code"
            }

            public init(
                name: String,
                description: String? = nil,
                images: [String]? = nil,
                metadata: [String: String]? = nil,
                taxCode: String? = nil
            ) {
                self.name = name
                self.description = description
                self.images = images
                self.metadata = metadata
                self.taxCode = taxCode
            }
        }

        public struct Recurring: Codable, Equatable, Hashable, Sendable {
            public let interval: Stripe.Interval

            public let intervalCount: Int?

            private enum CodingKeys: String, CodingKey {
                case interval
                case intervalCount = "interval_count"
            }

            public init(
                interval: Stripe.Interval,
                intervalCount: Int? = nil
            ) {
                self.interval = interval
                self.intervalCount = intervalCount
            }

            public typealias Interval = Stripe.Interval
        }

        public enum TaxBehavior: String, Codable, Sendable {
            case exclusive
            case inclusive
            case unspecified
        }
    }
}
