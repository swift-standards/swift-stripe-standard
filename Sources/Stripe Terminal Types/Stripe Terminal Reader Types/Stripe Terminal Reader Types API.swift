import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Terminal.Readers {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/terminal/readers/create.md
        case create(request: Create.Request)
        // https://docs.stripe.com/api/terminal/readers/retrieve.md
        case retrieve(id: Reader.ID)
        // https://docs.stripe.com/api/terminal/readers/update.md
        case update(id: Reader.ID, request: Update.Request)
        // https://docs.stripe.com/api/terminal/readers/list.md
        case list(request: List.Request)
        // https://docs.stripe.com/api/terminal/readers/delete.md
        case delete(id: Reader.ID)
        // https://docs.stripe.com/api/terminal/readers/cancel_action.md
        case cancelAction(id: Reader.ID)
        // https://docs.stripe.com/api/terminal/readers/process_payment_intent.md
        case processPaymentIntent(id: Reader.ID, request: ProcessPaymentIntent.Request)
        // https://docs.stripe.com/api/terminal/readers/process_setup_intent.md
        case processSetupIntent(id: Reader.ID, request: ProcessSetupIntent.Request)
        // https://docs.stripe.com/api/terminal/readers/collect_inputs.md
        case collectInputs(id: Reader.ID, request: CollectInputs.Request)
        // https://docs.stripe.com/api/terminal/readers/confirm_payment_intent.md
        case confirmPaymentIntent(id: Reader.ID, request: ConfirmPaymentIntent.Request)
        // https://docs.stripe.com/api/terminal/readers/collect_payment_method.md
        case collectPaymentMethod(id: Reader.ID, request: CollectPaymentMethod.Request)
        // https://docs.stripe.com/api/terminal/readers/refund_payment.md
        case refundPayment(id: Reader.ID, request: RefundPayment.Request)
        // https://docs.stripe.com/api/terminal/readers/set_reader_display.md
        case setReaderDisplay(id: Reader.ID, request: SetReaderDisplay.Request)
        // https://docs.stripe.com/api/testHelpers/terminal/readers/present_payment_method.md
        case presentPaymentMethod(id: Reader.ID, request: PresentPaymentMethod.Request)
    }
}
