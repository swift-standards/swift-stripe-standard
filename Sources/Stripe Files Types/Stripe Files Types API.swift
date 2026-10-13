import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Files {
    public enum API: Equatable, Sendable {
        case create(request: Stripe.Files.Create.Request)
        case retrieve(id: Stripe.Files.File.ID)
        case list(request: Stripe.Files.List.Request)
    }
}
