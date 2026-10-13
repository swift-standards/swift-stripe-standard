import Foundation
public import Stripe_Types_Shared
public import Tagged

public final class StripeError: Codable, Hashable, Swift.Error {
    public let error: StripeError.Error?

    public func hash(into hasher: inout Hasher) {
        hasher.combine(error)
    }

    public static func == (lhs: StripeError, rhs: StripeError) -> Bool {
        lhs.error == rhs.error
    }
}

extension StripeError {
    public final class Error: Codable, Hashable, Sendable {
        public let type: StripeError.Variant?
        public let charge: Stripe.Charges.Charge.ID?
        public let code: StripeErrorCode?
        public let declineCode: StripeDeclineCode?
        public let docUrl: String?
        public let message: String?
        public let param: String?
        public let paymentIntent: Stripe.PaymentIntents.PaymentIntent?
        public let paymentMethod: Stripe.PaymentMethods.PaymentMethod?
        public let source: Source?

        public init(
            type: StripeError.Variant? = nil,
            charge: Stripe.Charges.Charge.ID? = nil,
            code: StripeErrorCode? = nil,
            declineCode: StripeDeclineCode? = nil,
            docUrl: String? = nil,
            message: String? = nil,
            param: String? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent? = nil,
            paymentMethod: Stripe.PaymentMethods.PaymentMethod? = nil,
            source: Source? = nil
        ) {
            self.type = type
            self.charge = charge
            self.code = code
            self.declineCode = declineCode
            self.docUrl = docUrl
            self.message = message
            self.param = param
            self.paymentIntent = paymentIntent
            self.paymentMethod = paymentMethod
            self.source = source
        }

        public func hash(into hasher: inout Hasher) {
            hasher.combine(type)
            hasher.combine(charge)
            hasher.combine(code)
            hasher.combine(declineCode)
            hasher.combine(docUrl)
            hasher.combine(message)
            hasher.combine(param)
            hasher.combine(paymentIntent)
            hasher.combine(paymentMethod)
            hasher.combine(source)
        }

        public static func == (lhs: StripeError.Error, rhs: StripeError.Error) -> Bool {
            lhs.type == rhs.type && lhs.charge == rhs.charge && lhs.code == rhs.code
                && lhs.declineCode == rhs.declineCode && lhs.docUrl == rhs.docUrl
                && lhs.message == rhs.message && lhs.param == rhs.param
                && lhs.paymentIntent == rhs.paymentIntent && lhs.paymentMethod == rhs.paymentMethod
                && lhs.source == rhs.source
        }
    }
}

extension StripeError {
    public enum Variant: String, Codable, Sendable {
        case apiConnectionError = "api_connection_error"
        case apiError = "api_error"
        case authenticationError = "authentication_error"
        case cardError = "card_error"
        case idempotencyError = "idempotency_error"
        case invalidRequestError = "invalid_request_error"
        case rateLimitError = "rate_limit_error"
        case validationError = "validation_error"
    }
}

public enum StripeErrorCode: String, Codable, Sendable {
    case accountAlreadyExists = "account_already_exists"
    case accountCountryInvalidAddress = "account_country_invalid_address"
    case accountInvalid = "account_invalid"
    case accountNumberInvalid = "account_number_invalid"
    case alipayUpgradeRequired = "alipay_upgrade_required"
    case amountTooLarge = "amount_too_large"
    case amountTooSmall = "amount_too_small"
    case apiKeyExpired = "api_key_expired"
    case balanceInsufficient = "balance_insufficient"
    case bankAccountExists = "bank_account_exists"
    case bankAccountUnusable = "bank_account_unsuable"
    case bankAccountUnverified = "bank_account_unverified"
    case bitcoinUpgradeRequired = "bitcoin_upgrade_required"
    case cardDeclined = "card_declined"
    case chargeAlreadyCaptured = "charge_already_captured"
    case chargeAlreadyRefunded = "charge_already_refunded"
    case chargeDisputed = "charge_disputed"
    case chargeExceedsSourceLimit = "charge_exceeds_source_limit"
    case chargeExpiredForCapture = "charge_expired_for_capture"
    case countryUnsupported = "country_unsupported"
    case couponExpired = "coupon_expired"
    case customerMaxSubscriptions = "customer_max_subscriptions"
    case emailInvalid = "email_invalid"
    case expiredCard = "expired_card"
    case idempotencyKeyInUse = "idempotency_key_in_use"
    case incorrectAddress = "incorrect_address"
    case incorrectCVC = "incorrect_cvc"
    case incorrectNumber = "incorrect_number"
    case incorrectZip = "incorrect_zip"
    case instantPayoutUnsupported = "instant_payouts_unsupported"
    case invalidCardType = "invalid_card_type"
    case invalidChargeAmount = "invalid_charge_amount"
    case invalidCVC = "invalid_cvc"
    case invalidExpiryMonth = "invalid_expiry_month"
    case invalidExpiryYear = "invalid_expiry_year"
    case invalidNumber = "invalid_number"
    case invalidSourceUsage = "invalid_source_usage"
    case invoiceNoCustomerLineItems = "invoice_no_customer_line_items"
    case invoiceNoSubscriptionLineItems = "invoice_no_subscription_line_items"
    case invoiceNotEditable = "invoice_not_editable"
    case invoiceUpcomingNone = "invoice_upcoming_none"
    case livemodeMismatch = "livemode_mismatch"
    case missing
    case notAllowedOnStandardAccount = "not_allowed_on_standard_account"
    case orderCreationFailed = "order_creation_failed"
    case orderRequiredSettings = "order_required_settings"
    case orderStatusInvalid = "order_status_invalid"
    case orderUpstreamTimeout = "order_upstream_timeout"
    case outOfInventory = "out_of_inventory"
    case parameterInvalidEmpty = "parameter_invalid_empty"
    case parameterInvalidInteger = "parameter_invalid_integer"
    case parameterInvalidStringBlank = "parameter_invalid_string_blank"
    case parameterInvalidStringEmpty = "parameter_invalid_string_empty"
    case parameterMissing = "parameter_missing"
    case parameterUnknown = "parameter_unknown"
    case parametersExclusive = "parameters_exclusive"
    case paymentIntentAuthenticationFailure = "payment_intent_authentication_failure"
    case paymentIntentIncompatiblePaymentMethod = "payment_intent_incompatible_payment_method"
    case paymentIntentInvalidParameter = "payment_intent_invalid_parameter"
    case paymentIntentPaymentAttemptFailed = "payment_intent_payment_attempt_failed"
    case paymentIntentUnexpectedState = "payment_intent_unexpected_state"
    case paymentMethodUnactivated = "payment_method_unactivated"
    case paymentMethodUnexpectedState = "payment_method_unexpected_state"
    case payoutsNotAllowed = "payouts_not_allowed"
    case platformApiKeyExpired = "platform_api_key_expired"
    case postalCodeInvalid = "postal_code_invalid"
    case processingError = "processing_error"
    case productInactive = "product_inactive"
    case rateLimit = "rate_limit"
    case resourceAlreadyExists = "resource_already_exists"
    case resourceMissing = "resource_missing"
    case routingNumberInvalid = "routing_number_invalid"
    case secretKeyRequired = "secret_key_required"
    case sepaUnsupportedAccount = "sepa_unsupported_account"
    case shippingCalculationFailed = "shipping_calculation_failed"
    case skuInactive = "sku_inactive"
    case stateUnsupported = "state_unsupported"
    case taxIdInvalid = "tax_id_invalid"
    case taxesCalculationFailed = "taxes_calculation_failed"
    case testmodeChargesOnly = "testmode_charges_only"
    case tlsVersionUnsupported = "tls_version_unsupported"
    case tokenAlreadyUsed = "token_already_used"
    case tokenInUse = "token_in_use"
    case transfersNotAllowed = "transfers_not_allowed"
    case upstreamOrderCreationFailed = "upstream_order_creation_failed"
    case urlInvalid = "url_invalid"
}

public enum StripeDeclineCode: String, Codable, Sendable {
    case approveWithId = "approve_with_id"
    case callIssuer = "call_issuer"
    case cardNotSupported = "card_not_supported"
    case cardVelocityExceeded = "card_velocity_exceeded"
    case currencyNotSupported = "currency_not_supported"
    case doNotHonor = "do_not_honor"
    case doNotTryAgain = "do_not_try_again"
    case duplicateTransaction = "duplicate_transaction"
    case expiredCard = "expired_card"
    case fradulent
    case genericDecline = "generic_decline"
    case incorrectNumber = "incorrect_number"
    case incorrectCVC = "incorrect_cvc"
    case incorrectPin = "incorrect_pin"
    case incorrectZip = "incorrect_zip"
    case insufficientFunds = "insufficient_funds"
    case invalidAccount = "invalid_account"
    case invalidAmount = "invalid_amount"
    case invalidCVC = "invalid_cvc"
    case invalidExpiryYear = "invalid_expiry_year"
    case invalidNumber = "invalid_number"
    case invalidPin = "invalid_pin"
    case issuerNotAvailable = "issuer_not_available"
    case lostCard = "lost_card"
    case merchantBlacklist = "merchant_blacklist"
    case newAccountInformationAvailable = "new_account_information_available"
    case noActionTaken = "no_action_taken"
    case notPermitted = "not_permitted"
    case pickupCard = "pickup_card"
    case pinTryExceeded = "pin_try_exceeded"
    case processingError = "processing_error"
    case reenterTransaction = "reenter_transaction"
    case restrictedCard = "restricted_card"
    case revocationOfAllAuthorizations = "revocation_of_all_authorizations"
    case revocationOfAuthorization = "revocation_of_authorization"
    case securityViolation = "security_violation"
    case serviceNotAllowed = "service_not_allowed"
    case stolenCard = "stolen_card"
    case stopPaymentOrder = "stop_payment_order"
    case testmodeDecline = "testmode_decline"
    case transactionNotAllowed = "transaction_not_allowed"
    case tryAgainLater = "try_again_later"
    case withdrawalCountLimitExceeded = "withdrawal_count_limit_exceeded"
    case testModeLiveCard = "test_mode_live_card"

    public var nextSteps: String {
        switch self {
        case .approveWithId:
            return
                "The payment should be attempted again. If it still cannot be processed, the customer needs to contact their card issuer."

        case .callIssuer:
            return "The customer needs to contact their card issuer for more information."

        case .cardNotSupported:
            return
                "The customer needs to contact their card issuer to make sure their card can be used to make this type of purchase."

        case .cardVelocityExceeded:
            return "The customer should contact their card issuer for more information"

        case .currencyNotSupported:
            return
                "The customer needs to check with the issuer whether the card can be used for the type of currency specified."

        case .doNotHonor:
            return "The customer needs to contact their card issuer for more information."

        case .doNotTryAgain:
            return "The customer needs to contact their card issuer for more information."

        case .duplicateTransaction: return "Check to see if a recent payment already exists."
        case .expiredCard: return "The customer should use another card."

        case .fradulent:
            return
                "Do not report more detailed information to your customer. Instead, present as you would the `generic_decline` described below."

        case .genericDecline:
            return "The customer needs to contact their card issuer for more information."

        case .incorrectNumber: return "The customer should try again using the correct card number."
        case .incorrectCVC: return "The customer should try again using the correct CVC."
        case .incorrectPin: return "The customer should try again using the correct PIN."

        case .incorrectZip:
            return "The customer should try again using the correct billing ZIP/postal code."

        case .insufficientFunds: return "The customer should use an alternative payment method."

        case .invalidAccount:
            return
                "The customer needs to contact their card issuer to check that the card is working correctly."

        case .invalidAmount:
            return
                "If the amount appears to be correct, the customer needs to check with their card issuer that they can make purchases of that amount."

        case .invalidCVC: return "The customer should try again using the correct CVC."

        case .invalidExpiryYear:
            return "The customer should try again using the correct expiration date."

        case .invalidNumber: return "The customer should try again using the correct card number."
        case .invalidPin: return "The customer should try again using the correct PIN."

        case .issuerNotAvailable:
            return
                "The payment should be attempted again. If it still cannot be processed, the customer needs to contact their card issuer."

        case .lostCard:
            return
                "The specific reason for the decline should not be reported to the customer. Instead, it needs to be presented as a generic decline."

        case .merchantBlacklist:
            return
                "Do not report more detailed information to your customer. Instead, present as you would the generic_decline described above."

        case .newAccountInformationAvailable:
            return "The customer needs to contact their card issuer for more information."

        case .noActionTaken:
            return "The customer should contact their card issuer for more information."

        case .notPermitted:
            return "The customer needs to contact their card issuer for more information."

        case .pickupCard:
            return "The customer needs to contact their card issuer for more information."

        case .pinTryExceeded: return "The customer must use another card or method of payment."

        case .processingError:
            return
                "The payment should be attempted again. If it still cannot be processed, try again later."

        case .reenterTransaction:
            return
                "The payment should be attempted again. If it still cannot be processed, the customer needs to contact their card issuer."

        case .restrictedCard:
            return "The customer needs to contact their card issuer for more information."

        case .revocationOfAllAuthorizations:
            return "The customer should contact their card issuer for more information."

        case .revocationOfAuthorization:
            return "The customer should contact their card issuer for more information."

        case .securityViolation:
            return "The customer should contact their card issuer for more information."

        case .serviceNotAllowed:
            return "The customer should contact their card issuer for more information."

        case .stolenCard:
            return
                "The specific reason for the decline should not be reported to the customer. Instead, it needs to be presented as a generic decline."

        case .stopPaymentOrder:
            return "The customer should contact their card issuer for more information."

        case .testmodeDecline: return "A genuine card must be used to make a payment."

        case .transactionNotAllowed:
            return "The customer needs to contact their card issuer for more information."

        case .tryAgainLater:
            return
                "Ask the customer to attempt the payment again. If subsequent payments are declined, the customer should contact their card issuer for more information."

        case .withdrawalCountLimitExceeded:
            return "The customer should use an alternative payment method."

        case .testModeLiveCard:
            return "The customer should use a test card https://stripe.com/docs/testing#cards"
        }
    }
}
