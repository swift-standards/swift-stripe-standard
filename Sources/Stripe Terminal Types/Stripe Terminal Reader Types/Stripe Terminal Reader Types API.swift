import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Terminal.Readers {
    public enum API: Equatable, Sendable {
        case create(request: Create.Request)
        case retrieve(id: Reader.ID)
        case update(id: Reader.ID, request: Update.Request)
        case list(request: List.Request)
        case delete(id: Reader.ID)
        case cancelAction(id: Reader.ID)
        case processPaymentIntent(id: Reader.ID, request: ProcessPaymentIntent.Request)
        case processSetupIntent(id: Reader.ID, request: ProcessSetupIntent.Request)
        case collectInputs(id: Reader.ID, request: CollectInputs.Request)
        case confirmPaymentIntent(id: Reader.ID, request: ConfirmPaymentIntent.Request)
        case collectPaymentMethod(id: Reader.ID, request: CollectPaymentMethod.Request)
        case refundPayment(id: Reader.ID, request: RefundPayment.Request)
        case setReaderDisplay(id: Reader.ID, request: SetReaderDisplay.Request)
        case presentPaymentMethod(id: Reader.ID, request: PresentPaymentMethod.Request)
    }
}
