import Stripe_Types_Shared

public struct ShippingLabel: Codable, Hashable, Sendable {
    public var address: Address?
    public var carrier: String?
    public var name: String?
    public var phone: String?
    public var trackingNumber: String?

    public init(
        address: Address? = nil,
        carrier: String? = nil,
        name: String? = nil,
        phone: String? = nil,
        trackingNumber: String? = nil
    ) {
        self.address = address
        self.carrier = carrier
        self.name = name
        self.phone = phone
        self.trackingNumber = trackingNumber
    }
}
