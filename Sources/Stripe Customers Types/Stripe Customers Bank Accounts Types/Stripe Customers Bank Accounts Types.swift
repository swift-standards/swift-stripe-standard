import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers {
    public enum BankAccounts: Sendable {}
}

extension Stripe.Customers.BankAccounts {
    public enum Create {}
    public enum Update {}
    public enum List {}
    public enum Verify {}
}

extension Stripe.Customers.BankAccounts.Create {
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
            case bankAccount(BankAccountDetails)

            public func encode(to encoder: any Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .token(let token):
                    try container.encode(token)

                case .bankAccount(let details):
                    try container.encode(details)
                }
            }

            public init(from decoder: any Decoder) throws {
                let container = try decoder.singleValueContainer()
                if let token = try? container.decode(String.self) {
                    self = .token(token)
                } else {
                    let details = try container.decode(BankAccountDetails.self)
                    self = .bankAccount(details)
                }
            }
        }

        public struct BankAccountDetails: Codable, Equatable, Sendable {
            public let accountNumber: String
            public let country: String
            public let currency: Stripe.Currency
            public let accountHolderName: String?
            public let accountHolderType: BankAccountHolderType?
            public let routingNumber: String?

            private enum CodingKeys: String, CodingKey {
                case accountNumber = "account_number"
                case country
                case currency
                case accountHolderName = "account_holder_name"
                case accountHolderType = "account_holder_type"
                case routingNumber = "routing_number"
                case object
            }

            public init(
                accountNumber: String,
                country: String,
                currency: Stripe.Currency,
                accountHolderName: String? = nil,
                accountHolderType: BankAccountHolderType? = nil,
                routingNumber: String? = nil
            ) {
                self.accountNumber = accountNumber
                self.country = country
                self.currency = currency
                self.accountHolderName = accountHolderName
                self.accountHolderType = accountHolderType
                self.routingNumber = routingNumber
            }

            public func encode(to encoder: any Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encode("bank_account", forKey: .object)
                try container.encode(accountNumber, forKey: .accountNumber)
                try container.encode(country, forKey: .country)
                try container.encode(currency, forKey: .currency)
                try container.encodeIfPresent(accountHolderName, forKey: .accountHolderName)
                try container.encodeIfPresent(accountHolderType, forKey: .accountHolderType)
                try container.encodeIfPresent(routingNumber, forKey: .routingNumber)
            }

            public init(from decoder: any Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                self.accountNumber = try container.decode(String.self, forKey: .accountNumber)
                self.country = try container.decode(String.self, forKey: .country)
                self.currency = try container.decode(Stripe.Currency.self, forKey: .currency)
                self.accountHolderName = try container.decodeIfPresent(
                    String.self,
                    forKey: .accountHolderName
                )
                self.accountHolderType = try container.decodeIfPresent(
                    BankAccountHolderType.self,
                    forKey: .accountHolderType
                )
                self.routingNumber = try container.decodeIfPresent(
                    String.self,
                    forKey: .routingNumber
                )
            }
        }
    }
}

extension Stripe.Customers.BankAccounts.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let accountHolderName: String?
        public let accountHolderType: BankAccountHolderType?
        public let metadata: [String: String]?

        private enum CodingKeys: String, CodingKey {
            case accountHolderName = "account_holder_name"
            case accountHolderType = "account_holder_type"
            case metadata
        }

        public init(
            accountHolderName: String? = nil,
            accountHolderType: BankAccountHolderType? = nil,
            metadata: [String: String]? = nil
        ) {
            self.accountHolderName = accountHolderName
            self.accountHolderType = accountHolderType
            self.metadata = metadata
        }
    }
}

extension Stripe.Customers.BankAccounts.List {
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
        public let data: [BankAccount]

        public init(
            object: String,
            url: String,
            hasMore: Bool,
            data: [BankAccount]
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

extension Stripe.Customers.BankAccounts.Verify {
    public struct Request: Codable, Equatable, Sendable {
        public let amounts: [Int]?

        public init(
            amounts: [Int]? = nil
        ) {
            self.amounts = amounts
        }
    }
}
