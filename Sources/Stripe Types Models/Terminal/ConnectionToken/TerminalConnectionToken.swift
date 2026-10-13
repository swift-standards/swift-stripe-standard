import Foundation
import Stripe_Types_Shared

public struct TerminalConnectionToken: Codable, Hashable, Sendable {
    public var object: String
    public var location: String?
    public var secret: String?

    public init(
        object: String,
        location: String? = nil,
        secret: String? = nil
    ) {
        self.object = object
        self.location = location
        self.secret = secret
    }
}
