import Stripe_Types_Shared

public struct Address: Codable, Hashable, Sendable {
    public var city: String?
    public var country: String?
    public var line1: String?
    public var line2: String?
    public var postalCode: String?
    public var state: String?

    public init(
        city: String? = nil,
        country: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        postalCode: String? = nil,
        state: String? = nil
    ) {
        self.city = city
        self.country = country
        self.line1 = line1
        self.line2 = line2
        self.postalCode = postalCode
        self.state = state
    }
}

public struct AddressKana: Codable, Hashable, Sendable {
    public var city: String?
    public var country: String?
    public var line1: String?
    public var line2: String?
    public var postalCode: String?
    public var state: String?
    public var town: String?

    public init(
        city: String? = nil,
        country: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        postalCode: String? = nil,
        state: String? = nil,
        town: String? = nil
    ) {
        self.city = city
        self.country = country
        self.line1 = line1
        self.line2 = line2
        self.postalCode = postalCode
        self.state = state
        self.town = town
    }
}

public struct AddressKanji: Codable, Hashable, Sendable {
    public var city: String?
    public var country: String?
    public var line1: String?
    public var line2: String?
    public var postalCode: String?
    public var state: String?
    public var town: String?

    public init(
        city: String? = nil,
        country: String? = nil,
        line1: String? = nil,
        line2: String? = nil,
        postalCode: String? = nil,
        state: String? = nil,
        town: String? = nil
    ) {
        self.city = city
        self.country = country
        self.line1 = line1
        self.line2 = line2
        self.postalCode = postalCode
        self.state = state
        self.town = town
    }
}
