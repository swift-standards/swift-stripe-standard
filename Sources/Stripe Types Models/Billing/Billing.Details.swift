import Stripe_Types_Shared

extension BillingModel {
    public struct Details: Codable, Hashable, Sendable {
        public var address: Address?
        public var email: String?
        public var name: String?
        public var phone: String?

        public init(
            address: Address? = nil,
            email: String? = nil,
            name: String? = nil,
            phone: String? = nil
        ) {
            self.address = address
            self.email = email
            self.name = name
            self.phone = phone
        }
    }
}
