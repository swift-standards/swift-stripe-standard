import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers {
    public enum Cards: Sendable {}
}

extension Stripe.Customers.Cards {
    public enum Create {}
    public enum Update {}
    public enum List {}
}

extension Stripe.Customers.Cards.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let source: Source
        public let metadata: [String: String]?

        public init(
            source: Source,
            metadata: [String: String]? = nil
        ) {
            self.source = source
            self.metadata = metadata
        }

        public enum Source: Codable, Equatable, Sendable {
            case token(String)
            case card(CardDetails)

            public func encode(to encoder: any Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .token(let token):
                    try container.encode(token)

                case .card(let details):
                    try container.encode(details)
                }
            }

            public init(from decoder: any Decoder) throws {
                let container = try decoder.singleValueContainer()
                if let token = try? container.decode(String.self) {
                    self = .token(token)
                } else {
                    let details = try container.decode(CardDetails.self)
                    self = .card(details)
                }
            }
        }

        public struct CardDetails: Codable, Equatable, Sendable {
            public let number: String
            public let expMonth: Int
            public let expYear: Int
            public let cvc: String?
            public let name: String?
            public let addressLine1: String?
            public let addressLine2: String?
            public let addressCity: String?
            public let addressState: String?
            public let addressZip: String?
            public let addressCountry: String?

            private enum CodingKeys: String, CodingKey {
                case number
                case expMonth = "exp_month"
                case expYear = "exp_year"
                case cvc
                case name
                case addressLine1 = "address_line1"
                case addressLine2 = "address_line2"
                case addressCity = "address_city"
                case addressState = "address_state"
                case addressZip = "address_zip"
                case addressCountry = "address_country"
                case object
            }

            public init(
                number: String,
                expMonth: Int,
                expYear: Int,
                cvc: String? = nil,
                name: String? = nil,
                addressLine1: String? = nil,
                addressLine2: String? = nil,
                addressCity: String? = nil,
                addressState: String? = nil,
                addressZip: String? = nil,
                addressCountry: String? = nil
            ) {
                self.number = number
                self.expMonth = expMonth
                self.expYear = expYear
                self.cvc = cvc
                self.name = name
                self.addressLine1 = addressLine1
                self.addressLine2 = addressLine2
                self.addressCity = addressCity
                self.addressState = addressState
                self.addressZip = addressZip
                self.addressCountry = addressCountry
            }

            public func encode(to encoder: any Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encode("card", forKey: .object)
                try container.encode(number, forKey: .number)
                try container.encode(expMonth, forKey: .expMonth)
                try container.encode(expYear, forKey: .expYear)
                try container.encodeIfPresent(cvc, forKey: .cvc)
                try container.encodeIfPresent(name, forKey: .name)
                try container.encodeIfPresent(addressLine1, forKey: .addressLine1)
                try container.encodeIfPresent(addressLine2, forKey: .addressLine2)
                try container.encodeIfPresent(addressCity, forKey: .addressCity)
                try container.encodeIfPresent(addressState, forKey: .addressState)
                try container.encodeIfPresent(addressZip, forKey: .addressZip)
                try container.encodeIfPresent(addressCountry, forKey: .addressCountry)
            }

            public init(from decoder: any Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                self.number = try container.decode(String.self, forKey: .number)
                self.expMonth = try container.decode(Int.self, forKey: .expMonth)
                self.expYear = try container.decode(Int.self, forKey: .expYear)
                self.cvc = try container.decodeIfPresent(String.self, forKey: .cvc)
                self.name = try container.decodeIfPresent(String.self, forKey: .name)
                self.addressLine1 = try container.decodeIfPresent(
                    String.self,
                    forKey: .addressLine1
                )
                self.addressLine2 = try container.decodeIfPresent(
                    String.self,
                    forKey: .addressLine2
                )
                self.addressCity = try container.decodeIfPresent(String.self, forKey: .addressCity)
                self.addressState = try container.decodeIfPresent(
                    String.self,
                    forKey: .addressState
                )
                self.addressZip = try container.decodeIfPresent(String.self, forKey: .addressZip)
                self.addressCountry = try container.decodeIfPresent(
                    String.self,
                    forKey: .addressCountry
                )
            }
        }
    }
}

extension Stripe.Customers.Cards.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let name: String?
        public let addressLine1: String?
        public let addressLine2: String?
        public let addressCity: String?
        public let addressState: String?
        public let addressZip: String?
        public let addressCountry: String?
        public let expMonth: Int?
        public let expYear: Int?
        public let metadata: [String: String]?

        private enum CodingKeys: String, CodingKey {
            case name
            case addressLine1 = "address_line1"
            case addressLine2 = "address_line2"
            case addressCity = "address_city"
            case addressState = "address_state"
            case addressZip = "address_zip"
            case addressCountry = "address_country"
            case expMonth = "exp_month"
            case expYear = "exp_year"
            case metadata
        }

        public init(
            name: String? = nil,
            addressLine1: String? = nil,
            addressLine2: String? = nil,
            addressCity: String? = nil,
            addressState: String? = nil,
            addressZip: String? = nil,
            addressCountry: String? = nil,
            expMonth: Int? = nil,
            expYear: Int? = nil,
            metadata: [String: String]? = nil
        ) {
            self.name = name
            self.addressLine1 = addressLine1
            self.addressLine2 = addressLine2
            self.addressCity = addressCity
            self.addressState = addressState
            self.addressZip = addressZip
            self.addressCountry = addressCountry
            self.expMonth = expMonth
            self.expYear = expYear
            self.metadata = metadata
        }
    }
}

extension Stripe.Customers.Cards.List {
    public struct Request: Codable, Equatable, Sendable {
        public let endingBefore: String?
        public let limit: Int?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Card]

        public init(
            object: String,
            url: String,
            hasMore: Bool,
            data: [Card]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}
