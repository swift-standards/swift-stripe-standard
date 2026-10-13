import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Terminal.Readers {
    public struct Reader: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var deviceType: String?
        public var label: String?
        @ExpandableOf<Stripe.Terminal.Locations.Location> public var location
        public var metadata: [String: String]?
        public var serialNumber: String?
        public var status: String?
        public var object: String
        public var action: ReaderAction?
        public var deviceSwVersion: String?
        public var ipAddress: String?
        public var lastSeenAt: Int?
        public var livemode: Bool?

        public init(
            id: ID,
            deviceType: String? = nil,
            label: String? = nil,
            location: Stripe.Terminal.Locations.Location.ID? = nil,
            metadata: [String: String]? = nil,
            serialNumber: String? = nil,
            status: String? = nil,
            object: String,
            action: ReaderAction? = nil,
            deviceSwVersion: String? = nil,
            ipAddress: String? = nil,
            lastSeenAt: Int? = nil,
            livemode: Bool? = nil
        ) {
            self.id = id
            self.deviceType = deviceType
            self.label = label
            self._location = Expandable(id: location)
            self.metadata = metadata
            self.serialNumber = serialNumber
            self.status = status
            self.object = object
            self.action = action
            self.deviceSwVersion = deviceSwVersion
            self.ipAddress = ipAddress
            self.lastSeenAt = lastSeenAt
            self.livemode = livemode
        }
    }
}

extension Stripe.Terminal.Readers {
    public struct ReaderAction: Codable, Hashable, Sendable {
        public var failureCode: String?
        public var failureMessage: String?
        public var processPaymentIntent: ReaderActionPaymentIntent?
        public var processSetupIntent: ReaderActionSetupIntent?
        public var refundPayment: ReaderActionRefundPayment?
        public var setReaderDisplay: ReaderActionSetReaderDisplay?
        public var status: ReaderActionStatus?
        public var type: ReaderActionType?

        public init(
            failureCode: String? = nil,
            failureMessage: String? = nil,
            processPaymentIntent: ReaderActionPaymentIntent? = nil,
            processSetupIntent: ReaderActionSetupIntent? = nil,
            refundPayment: ReaderActionRefundPayment? = nil,
            setReaderDisplay: ReaderActionSetReaderDisplay? = nil,
            status: ReaderActionStatus? = nil,
            type: ReaderActionType? = nil
        ) {
            self.failureCode = failureCode
            self.failureMessage = failureMessage
            self.processPaymentIntent = processPaymentIntent
            self.processSetupIntent = processSetupIntent
            self.refundPayment = refundPayment
            self.setReaderDisplay = setReaderDisplay
            self.status = status
            self.type = type
        }
    }
}

extension Stripe.Terminal.Readers {
    public enum ReaderActionStatus: String, Codable, Sendable {
        case inProgress = "in_progress"
        case succeeded
        case failed
    }

    public enum ReaderActionType: String, Codable, Sendable {
        case processPaymentIntent = "process_payment_intent"
        case processSetupIntent = "process_setup_intent"
        case setReaderDisplay = "set_reader_display"
        case refundPayment = "refund_payment"
    }
}

extension Stripe.Terminal.Readers {
    public struct ReaderActionPaymentIntent: Codable, Hashable, Sendable {
        @ExpandableOf<Stripe.PaymentIntents.PaymentIntent> public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public var processConfig: ReaderActionPaymentIntentProcessConfig?

        public init(
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            processConfig: ReaderActionPaymentIntentProcessConfig? = nil
        ) {
            self._paymentIntent = Expandable(id: paymentIntent)
            self.processConfig = processConfig
        }
    }
}

extension Stripe.Terminal.Readers {
    public struct ReaderActionPaymentIntentProcessConfig: Codable, Hashable, Sendable {
        public var skipTipping: Bool?
        public var tipping: ReaderActionPaymentIntentProcessConfigTipping?

        public init(
            skipTipping: Bool? = nil,
            tipping: ReaderActionPaymentIntentProcessConfigTipping? = nil
        ) {
            self.skipTipping = skipTipping
            self.tipping = tipping
        }
    }
}

extension Stripe.Terminal.Readers {
    public struct ReaderActionPaymentIntentProcessConfigTipping: Codable, Hashable, Sendable {
        public var amount: Int?

        public init(amount: Int? = nil) {
            self.amount = amount
        }
    }
}

extension Stripe.Terminal.Readers {
    public struct ReaderActionSetupIntent: Codable, Hashable, Sendable {
        public var generatedCard: String?
        @ExpandableOf<Stripe.Setup.Intent> public var setupIntent

        public init(
            generatedCard: String? = nil,
            setupIntent: Stripe.Setup.Intent.ID? = nil
        ) {
            self.generatedCard = generatedCard
            self._setupIntent = Expandable(id: setupIntent)
        }
    }
}

extension Stripe.Terminal.Readers {
    public struct ReaderActionRefundPayment: Codable, Hashable, Sendable {
        public var amount: Int?
        @ExpandableOf<Stripe.Charges.Charge> public var charge
        public var metadata: [String: String]?
        @ExpandableOf<Stripe.PaymentIntents.PaymentIntent> public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public var reason: String?
        @ExpandableOf<Stripe.Refunds.Refund> public var refund
        public var refundApplicationFee: Bool?
        public var reverseTransfer: Bool?

        public init(
            amount: Int? = nil,
            charge: Stripe.Charges.Charge.ID? = nil,
            metadata: [String: String]? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            reason: String? = nil,
            refund: Stripe.Refunds.Refund.ID? = nil,
            refundApplicationFee: Bool? = nil,
            reverseTransfer: Bool? = nil
        ) {
            self.amount = amount
            self._charge = Expandable(id: charge)
            self.metadata = metadata
            self._paymentIntent = Expandable(id: paymentIntent)
            self.reason = reason
            self._refund = Expandable(id: refund)
            self.refundApplicationFee = refundApplicationFee
            self.reverseTransfer = reverseTransfer
        }
    }
}

extension Stripe.Terminal.Readers {
    public struct ReaderActionSetReaderDisplay: Codable, Hashable, Sendable {
        public var cart: ReaderActionSetReaderDisplayCart?
        public var type: String?

        public init(
            cart: ReaderActionSetReaderDisplayCart? = nil,
            type: String? = nil
        ) {
            self.cart = cart
            self.type = type
        }
    }
}

extension Stripe.Terminal.Readers {
    public struct ReaderActionSetReaderDisplayCart: Codable, Hashable, Sendable {
        public var currency: Stripe.Currency?
        public var lineItems: [ReaderActionSetReaderDisplayCartLineItem]?
        public var tax: Int?
        public var total: Int?

        public init(
            currency: Stripe.Currency? = nil,
            lineItems: [ReaderActionSetReaderDisplayCartLineItem]? = nil,
            tax: Int? = nil,
            total: Int? = nil
        ) {
            self.currency = currency
            self.lineItems = lineItems
            self.tax = tax
            self.total = total
        }
    }
}

extension Stripe.Terminal.Readers {
    public struct ReaderActionSetReaderDisplayCartLineItem: Codable, Hashable, Sendable {
        public var amount: Int?
        public var description: String?
        public var quantity: Int?

        public init(
            amount: Int? = nil,
            description: String? = nil,
            quantity: Int? = nil
        ) {
            self.amount = amount
            self.description = description
            self.quantity = quantity
        }
    }
}
