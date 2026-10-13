public import Stripe_Types_Shared

extension Stripe.Connect.Account {
    public enum ExternalAccounts {}
}
extension Stripe.Connect.Account.ExternalAccounts {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        private var data: String?
        public var hasMore: Bool?
        public var url: String?
        public var cardAccounts: [Card]?
        public var bankAccounts: [BankAccount]?

        public init(
            from decoder: any Decoder
        ) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            object = try container.decode(String.self, forKey: .object)
            hasMore = try container.decodeIfPresent(Bool.self, forKey: .hasMore)
            url = try container.decodeIfPresent(String.self, forKey: .url)

            cardAccounts = try container.decodeIfPresent([Card].self, forKey: .data)?.filter {
                $0.object == "card"
            }
            bankAccounts = try container.decodeIfPresent([BankAccount].self, forKey: .data)?.filter {
                $0.object == "bank_account"
            }
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(object, forKey: .object)
            try container.encodeIfPresent(hasMore, forKey: .hasMore)
            try container.encodeIfPresent(url, forKey: .url)

            var accounts: [AnyEncodable] = []
            if let cardAccounts {
                accounts.append(contentsOf: cardAccounts.map { AnyEncodable($0) })
            }
            if let bankAccounts {
                accounts.append(contentsOf: bankAccounts.map { AnyEncodable($0) })
            }

            try container.encode(accounts, forKey: .data)
        }

        public init(
            object: String,
            data: String? = nil,
            hasMore: Bool? = nil,
            url: String? = nil,
            cardAccounts: [Card]? = nil,
            bankAccounts: [BankAccount]? = nil
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
            self.cardAccounts = cardAccounts
            self.bankAccounts = bankAccounts
        }

        enum CodingKeys: CodingKey {
            case object
            case data
            case hasMore
            case url
        }

        struct AnyEncodable: Encodable {
            private let _encode: (any Encoder) throws -> Void

            init<T: Encodable>(_ encodable: T) {
                _encode = encodable.encode
            }

            func encode(to encoder: any Encoder) throws {
                try _encode(encoder)
            }
        }
    }

}
