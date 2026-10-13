public import Stripe_Types_Shared

extension Stripe {
    public struct Balance: Codable, Hashable, Sendable {
        public var object: String
        public var available: [Stripe.Balance.Amount]?
        public var connectReserved: [Stripe.Balance.Amount]?
        public var instantAvailable: [Stripe.Balance.Amount]?
        public var issuing: Stripe.Balance.Issuing?
        public var livemode: Bool?
        public var pending: [Stripe.Balance.Amount]?

        public init(
            object: String,
            available: [Stripe.Balance.Amount]? = nil,
            connectReserved: [Stripe.Balance.Amount]? = nil,
            instantAvailable: [Stripe.Balance.Amount]? = nil,
            issuing: Stripe.Balance.Issuing? = nil,
            livemode: Bool? = nil,
            pending: [Stripe.Balance.Amount]? = nil
        ) {
            self.object = object
            self.available = available
            self.connectReserved = connectReserved
            self.instantAvailable = instantAvailable
            self.issuing = issuing
            self.livemode = livemode
            self.pending = pending
        }
    }

}

extension Stripe.Balance {
    public struct Issuing: Codable, Hashable, Sendable {
        public var available: [Stripe.Balance.Amount]?

        public init(
            available: [Stripe.Balance.Amount]? = nil
        ) {
            self.available = available
        }
    }
}

extension Stripe.Balance {
    public struct Amount: Codable, Hashable, Sendable {
        public var amount: Int?
        public var currency: Stripe.Currency?
        public var sourceTypes: Stripe.Balance.Amount.Source.`Type`?

        public init(
            amount: Int? = nil,
            currency: Stripe.Currency? = nil,
            sourceTypes: Stripe.Balance.Amount.Source.`Type`? = nil
        ) {
            self.amount = amount
            self.currency = currency
            self.sourceTypes = sourceTypes
        }
    }
}

extension Stripe.Balance.Amount {
    public enum Source {}
}

extension Stripe.Balance.Amount.Source {
    public struct `Type`: Codable, Hashable, Sendable {
        public var bankAccount: Int?
        public var card: Int?
        public var fpx: Int?

        public init(
            bankAccount: Int? = nil,
            card: Int? = nil,
            fpx: Int? = nil
        ) {
            self.bankAccount = bankAccount
            self.card = card
            self.fpx = fpx
        }
    }
}
