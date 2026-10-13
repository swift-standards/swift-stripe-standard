import Foundation
public import Stripe_Types_Shared

extension Setup {
    public struct Error: Codable, Hashable, Sendable {
        public let adviceCode: String?

        public let code: String?

        public let declineCode: String?

        public let docUrl: String?

        public let message: String?

        public let networkAdviceCode: String?

        public let networkDeclineCode: String?

        public let param: String?

        public let paymentMethod: Stripe.PaymentMethods.PaymentMethod?

        public let paymentMethodType: String?

        public let type: String

        enum CodingKeys: String, CodingKey {
            case adviceCode = "advice_code"
            case code
            case declineCode = "decline_code"
            case docUrl = "doc_url"
            case message
            case networkAdviceCode = "network_advice_code"
            case networkDeclineCode = "network_decline_code"
            case param
            case paymentMethod = "payment_method"
            case paymentMethodType = "payment_method_type"
            case type
        }
    }
}

extension Stripe.Setup.Attempt {
    public enum `Type`: String, Codable, Hashable, Sendable {
        case apiError = "api_error"
        case cardError = "card_error"
        case idempotencyError = "idempotency_error"
        case invalidRequestError = "invalid_request_error"
    }
}
