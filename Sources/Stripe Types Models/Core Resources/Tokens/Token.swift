public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Tokens {
    public struct Token: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var object: String
        public var bankAccount: BankAccount?
        public var card: Card?
        public var clientIp: String?
        public var created: Date
        public var livemode: Bool?
        public var type: Stripe.Tokens.Token.`Type`?
        public var used: Bool?

        public init(
            id: ID,
            object: String,
            bankAccount: BankAccount? = nil,
            card: Card? = nil,
            clientIp: String? = nil,
            created: Date,
            livemode: Bool? = nil,
            type: Stripe.Tokens.Token.`Type`? = nil,
            used: Bool? = nil
        ) {
            self.id = id
            self.object = object
            self.bankAccount = bankAccount
            self.card = card
            self.clientIp = clientIp
            self.created = created
            self.livemode = livemode
            self.type = type
            self.used = used
        }
    }
}

extension Stripe.Tokens.Token {
    public enum `Type`: String, Codable, Sendable {
        case account
        case person
        case bankAccount = "bank_account"
        case card
        case cvcUpdate = "cvc_update"
        case pii
    }
}
