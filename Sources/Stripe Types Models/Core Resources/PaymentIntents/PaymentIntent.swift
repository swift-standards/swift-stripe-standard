public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.PaymentIntents {
    public struct PaymentIntent: Codable, Hashable, Sendable, Identifiable {
        public var id: Stripe.PaymentIntents.PaymentIntent.ID
        public var amount: Int?
        public var automaticPaymentMethods: PaymentIntent.Automatic.Payment.Methods?
        public var clientSecret: String?
        public var currency: Stripe.Currency?
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        public var description: String?
        public var lastPaymentError: StripeError?
        @ExpandableOf<Stripe.Charges.Charge> public var latestCharge: Stripe.Charges.Charge.ID?
        public var metadata: [String: String]?
        public var nextAction: PaymentIntent.NextAction?
        @ExpandableOf<Stripe.PaymentMethods.PaymentMethod> public var paymentMethod
        public var receiptEmail: String?
        public var setupFutureUsage: PaymentIntent.SetupFutureUsage?
        public var shipping: ShippingLabel?
        public var statementDescriptor: Stripe.StatementDescriptor?
        public var statementDescriptorSuffix: String?
        public var status: PaymentIntent.Status?
        public var object: String
        public var amountCapturable: Int?
        public var amountDetails: PaymentIntent.Amount.Details?
        public var amountReceived: Int?
        public var application: String?
        public var applicationFeeAmount: Int?
        public var canceledAt: Date?
        public var cancellationReason: PaymentIntent.Cancellation.Reason?
        public var captureMethod: PaymentIntent.Capture.Method?
        public var confirmationMethod: PaymentIntent.Confirmation.Method?
        public var created: Date
        @Expandable<Stripe.Billing.Invoice, Stripe.Billing.Invoice.ID> public var invoice: Stripe.Billing.Invoice.ID?
        public var livemode: Bool?
        @ExpandableOf<Stripe.Connect.Account> public var onBehalfOn: Stripe.Connect.Account.ID?
        public var paymentMethodOptions: PaymentIntent.Payment.Method.Options?
        public var paymentMethodTypes: [String]?
        public var processing: PaymentIntent.Processing?
        @ExpandableOf<Stripe.Fraud.Reviews.Review> public var review: Stripe.Fraud.Reviews.Review.ID?
        public var transferData: PaymentIntent.Transfer.Data?
        public var transferGroup: String?

        enum CodingKeys: String, CodingKey {
            case id
            case amount
            case automaticPaymentMethods = "automatic_payment_methods"
            case clientSecret = "client_secret"
            case currency
            case customer
            case description
            case lastPaymentError = "last_payment_error"
            case latestCharge = "latest_charge"
            case metadata
            case nextAction = "next_action"
            case paymentMethod = "payment_method"
            case receiptEmail = "receipt_email"
            case setupFutureUsage = "setup_future_usage"
            case shipping
            case statementDescriptor = "statement_descriptor"
            case statementDescriptorSuffix = "statement_descriptor_suffix"
            case status
            case object
            case amountCapturable = "amount_capturable"
            case amountDetails = "amount_details"
            case amountReceived = "amount_received"
            case application
            case applicationFeeAmount = "application_fee_amount"
            case canceledAt = "canceled_at"
            case cancellationReason = "cancellation_reason"
            case captureMethod = "capture_method"
            case confirmationMethod = "confirmation_method"
            case created
            case invoice
            case livemode
            case onBehalfOn = "on_behalf_of"
            case paymentMethodOptions = "payment_method_options"
            case paymentMethodTypes = "payment_method_types"
            case processing
            case review
            case transferData = "transfer_data"
            case transferGroup = "transfer_group"
        }

        public init(
            id: PaymentIntent.ID,
            amount: Int? = nil,
            automaticPaymentMethods: PaymentIntent.Automatic.Payment.Methods? = nil,
            clientSecret: String? = nil,
            currency: Stripe.Currency? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            description: String? = nil,
            lastPaymentError: StripeError? = nil,
            latestCharge: Stripe.Charges.Charge.ID? = nil,
            metadata: [String: String]? = nil,
            nextAction: PaymentIntent.NextAction? = nil,
            paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            receiptEmail: String? = nil,
            setupFutureUsage: PaymentIntent.SetupFutureUsage? = nil,
            shipping: ShippingLabel? = nil,
            statementDescriptor: Stripe.StatementDescriptor? = nil,
            statementDescriptorSuffix: String? = nil,
            status: PaymentIntent.Status? = nil,
            object: String,
            amountCapturable: Int? = nil,
            amountDetails: PaymentIntent.Amount.Details? = nil,
            amountReceived: Int? = nil,
            application: String? = nil,
            applicationFeeAmount: Int? = nil,
            canceledAt: Date? = nil,
            cancellationReason: PaymentIntent.Cancellation.Reason? = nil,
            captureMethod: PaymentIntent.Capture.Method? = nil,
            confirmationMethod: PaymentIntent.Confirmation.Method? = nil,
            created: Date,
            invoice: Stripe.Billing.Invoice.ID? = nil,
            livemode: Bool? = nil,
            onBehalfOn: Stripe.Connect.Account.ID? = nil,
            paymentMethodOptions: PaymentIntent.Payment.Method.Options? = nil,
            paymentMethodTypes: [String]? = nil,
            processing: PaymentIntent.Processing? = nil,
            review: Stripe.Fraud.Reviews.Review.ID? = nil,
            transferData: PaymentIntent.Transfer.Data? = nil,
            transferGroup: String? = nil
        ) {
            self.id = id
            self.amount = amount
            self.automaticPaymentMethods = automaticPaymentMethods
            self.clientSecret = clientSecret
            self.currency = currency
            self._customer = Expandable(id: customer)
            self.description = description
            self.lastPaymentError = lastPaymentError
            self._latestCharge = Expandable(id: latestCharge)
            self.metadata = metadata
            self.nextAction = nextAction
            self._paymentMethod = Expandable(id: paymentMethod)
            self.receiptEmail = receiptEmail
            self.setupFutureUsage = setupFutureUsage
            self.shipping = shipping
            self.statementDescriptor = statementDescriptor
            self.statementDescriptorSuffix = statementDescriptorSuffix
            self.status = status
            self.object = object
            self.amountCapturable = amountCapturable
            self.amountDetails = amountDetails
            self.amountReceived = amountReceived
            self.application = application
            self.applicationFeeAmount = applicationFeeAmount
            self.canceledAt = canceledAt
            self.cancellationReason = cancellationReason
            self.captureMethod = captureMethod
            self.confirmationMethod = confirmationMethod
            self.created = created
            self._invoice = Expandable(id: invoice)
            self.livemode = livemode
            self._onBehalfOn = Expandable(id: onBehalfOn)
            self.paymentMethodOptions = paymentMethodOptions
            self.paymentMethodTypes = paymentMethodTypes
            self.processing = processing
            self._review = Expandable(id: review)
            self.transferData = transferData
            self.transferGroup = transferGroup
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent {
    public typealias ID = Tagged<Self, String>
}

extension Stripe.PaymentIntents.PaymentIntent {
    public struct Processing: Codable, Hashable, Sendable {
        public var card: Stripe.PaymentIntents.PaymentIntent.Processing.Card?
        public var type: String?

        public init(
            card: Stripe.PaymentIntents.PaymentIntent.Processing.Card? = nil,
            type: String? = nil
        ) {
            self.card = card
            self.type = type
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.Processing {
    public struct Card: Codable, Hashable, Sendable {
        public var customerNotification: Stripe.PaymentIntents.PaymentIntent.Processing.Card.Customer.Notification?

        public init(
            customerNotification: Stripe.PaymentIntents.PaymentIntent.Processing.Card.Customer
                .Notification? = nil
        ) {
            self.customerNotification = customerNotification
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.Processing.Card {
    public enum Customer {}
}

extension Stripe.PaymentIntents.PaymentIntent.Processing.Card.Customer {
    public struct Notification: Codable, Hashable, Sendable {
        public var approvalRequested: Bool?
        public var completesAt: Date?

        public init(
            approvalRequested: Bool? = nil,
            completesAt: Date? = nil
        ) {
            self.approvalRequested = approvalRequested
            self.completesAt = completesAt
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent {
    public enum Automatic {}
}

extension Stripe.PaymentIntents.PaymentIntent.Automatic {
    public enum Payment {}
}

extension Stripe.PaymentIntents.PaymentIntent.Automatic.Payment {
    public struct Methods: Codable, Hashable, Sendable {
        public var enabled: Bool?

        public init(
            enabled: Bool? = nil
        ) {
            self.enabled = enabled
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent {
    public enum SetupFutureUsage: String, Codable, Sendable {
        case onSession = "on_session"
        case offSession = "off_session"
    }
}

extension Stripe.PaymentIntents.PaymentIntent {
    public enum Transfer {}
}

extension Stripe.PaymentIntents.PaymentIntent.Transfer {
    public struct Data: Codable, Hashable, Sendable {
        public var amount: Int?
        @ExpandableOf<Stripe.Connect.Account> public var destination: Stripe.Connect.Account.ID?

        public init(
            amount: Int? = nil,
            destination: Stripe.Connect.Account.ID? = nil
        ) {
            self.amount = amount
            self._destination = Expandable(id: destination)
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent {
    public enum Cancellation {}
}

extension Stripe.PaymentIntents.PaymentIntent.Cancellation {
    public enum Reason: String, Codable, Sendable {
        case abandoned
        case automatic
        case duplicate
        case failedInvoice = "failed_invoice"
        case fraudulent
        case requestedByCustomer = "requested_by_customer"
        case voidInvoice = "void_invoice"
    }
}

extension Stripe.PaymentIntents.PaymentIntent {
    public enum Capture {}
}

extension Stripe.PaymentIntents.PaymentIntent.Capture {
    public enum Method: String, Codable, Sendable {
        case automatic
        case automaticAsync = "automatic_async"
        case manual
    }
}

extension Stripe.PaymentIntents.PaymentIntent {
    public enum Confirmation {

    }
}

extension Stripe.PaymentIntents.PaymentIntent.Confirmation {
    public enum Method: String, Codable, Sendable {
        case automatic
        case manual
    }
}

extension Stripe.PaymentIntents.PaymentIntent {
    public enum Status: String, Codable, Sendable {
        case requiresPaymentMethod = "requires_payment_method"
        case requiresConfirmation = "requires_confirmation"
        case requiresAction = "requires_action"
        case processing
        case requiresCapture = "requires_capture"
        case canceled
        case succeeded
    }
}

extension Stripe.PaymentIntents.PaymentIntent {
    public enum Amount {}
}

extension Stripe.PaymentIntents.PaymentIntent.Amount {
    public struct Details: Codable, Hashable, Sendable {
        public var tip: Stripe.PaymentIntents.PaymentIntent.Amount.Details.Tip?

        public init(
            tip: Stripe.PaymentIntents.PaymentIntent.Amount.Details.Tip? = nil
        ) {
            self.tip = tip
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.Amount.Details {
    public struct Tip: Codable, Hashable, Sendable {
        public var amount: Int?

        public init(
            amount: Int? = nil
        ) {
            self.amount = amount
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent {
    public enum Payment {}
}

extension Stripe.PaymentIntents.PaymentIntent.Payment {
    public enum Method {}
}

extension Stripe.PaymentIntents.PaymentIntent.Payment.Method {

    public typealias Data = Options

    public struct Options: Codable, Hashable, Sendable {
        public let acssDebit: Stripe.PaymentMethods.PaymentMethod.Options.ACSSDebit.Configuration?
        public let affirm: Stripe.PaymentMethods.PaymentMethod.Options.Affirm.Configuration?
        public let afterpayClearpay: Stripe.PaymentMethods.PaymentMethod.Options.AfterpayClearpay.Configuration?
        public let alipay: Stripe.PaymentMethods.PaymentMethod.Options.Alipay.Configuration?
        public let auBecsDebit: Stripe.PaymentMethods.PaymentMethod.Options.AUBecsDebit.Configuration?
        public let bacsDebit: Stripe.PaymentMethods.PaymentMethod.Options.BacsDebit.Configuration?
        public let bancontact: Stripe.PaymentMethods.PaymentMethod.Options.Bancontact.Configuration?
        public let blik: Stripe.PaymentMethods.PaymentMethod.Options.Blik.Configuration?
        public let boleto: Stripe.PaymentMethods.PaymentMethod.Options.Boleto.Configuration?
        public let card: Stripe.PaymentMethods.PaymentMethod.Options.Card.Configuration?
        public let cardPresent: Stripe.PaymentMethods.PaymentMethod.Options.CardPresent.Configuration?
        public let customerBalance: Stripe.PaymentMethods.PaymentMethod.Options.CustomerBalance.Configuration?
        public let eps: Stripe.PaymentMethods.PaymentMethod.Options.EPS.Configuration?
        public let fpx: Stripe.PaymentMethods.PaymentMethod.Options.FPX.Configuration?
        public let giropay: Stripe.PaymentMethods.PaymentMethod.Options.Giropay.Configuration?
        public let grabpay: Stripe.PaymentMethods.PaymentMethod.Options.GrabPay.Configuration?
        public let ideal: Stripe.PaymentMethods.PaymentMethod.Options.Ideal.Configuration?
        public let interacPresent: Stripe.PaymentMethods.PaymentMethod.Options.InteracPresent.Configuration?
        public let klarna: Stripe.PaymentMethods.PaymentMethod.Options.Klarna.Configuration?
        public let konbini: Stripe.PaymentMethods.PaymentMethod.Options.Konbini.Configuration?
        public let link: Stripe.PaymentMethods.PaymentMethod.Options.Link.Configuration?
        public let oxxo: Stripe.PaymentMethods.PaymentMethod.Options.OXXO.Configuration?
        public let p24: Stripe.PaymentMethods.PaymentMethod.Options.P24.Configuration?
        public let paynow: Stripe.PaymentMethods.PaymentMethod.Options.Paynow.Configuration?
        public let pix: Stripe.PaymentMethods.PaymentMethod.Options.Pix.Configuration?
        public let promptpay: Stripe.PaymentMethods.PaymentMethod.Options.PromptPay.Configuration?
        public let sepaDebit: Stripe.PaymentMethods.PaymentMethod.Options.SepaDebit.Configuration?
        public let sofort: Stripe.PaymentMethods.PaymentMethod.Options.Sofort.Configuration?
        public let usBankAccount: Stripe.PaymentMethods.PaymentMethod.Options.USBankAccount.Configuration?
        public let wechatPay: Stripe.PaymentMethods.PaymentMethod.Options.WechatPay.Configuration?

        public init(
            acssDebit: Stripe.PaymentMethods.PaymentMethod.Options.ACSSDebit.Configuration? = nil,
            affirm: Stripe.PaymentMethods.PaymentMethod.Options.Affirm.Configuration? = nil,
            afterpayClearpay: Stripe.PaymentMethods.PaymentMethod.Options.AfterpayClearpay
                .Configuration? = nil,
            alipay: Stripe.PaymentMethods.PaymentMethod.Options.Alipay.Configuration? = nil,
            auBecsDebit: Stripe.PaymentMethods.PaymentMethod.Options.AUBecsDebit.Configuration? =
                nil,
            bacsDebit: Stripe.PaymentMethods.PaymentMethod.Options.BacsDebit.Configuration? = nil,
            bancontact: Stripe.PaymentMethods.PaymentMethod.Options.Bancontact.Configuration? = nil,
            blik: Stripe.PaymentMethods.PaymentMethod.Options.Blik.Configuration? = nil,
            boleto: Stripe.PaymentMethods.PaymentMethod.Options.Boleto.Configuration? = nil,
            card: Stripe.PaymentMethods.PaymentMethod.Options.Card.Configuration? = nil,
            cardPresent: Stripe.PaymentMethods.PaymentMethod.Options.CardPresent.Configuration? =
                nil,
            customerBalance: Stripe.PaymentMethods.PaymentMethod.Options.CustomerBalance
                .Configuration? =
                nil,
            eps: Stripe.PaymentMethods.PaymentMethod.Options.EPS.Configuration? = nil,
            fpx: Stripe.PaymentMethods.PaymentMethod.Options.FPX.Configuration? = nil,
            giropay: Stripe.PaymentMethods.PaymentMethod.Options.Giropay.Configuration? = nil,
            grabpay: Stripe.PaymentMethods.PaymentMethod.Options.GrabPay.Configuration? = nil,
            ideal: Stripe.PaymentMethods.PaymentMethod.Options.Ideal.Configuration? = nil,
            interacPresent: Stripe.PaymentMethods.PaymentMethod.Options.InteracPresent
                .Configuration? =
                nil,
            klarna: Stripe.PaymentMethods.PaymentMethod.Options.Klarna.Configuration? = nil,
            konbini: Stripe.PaymentMethods.PaymentMethod.Options.Konbini.Configuration? = nil,
            link: Stripe.PaymentMethods.PaymentMethod.Options.Link.Configuration? = nil,
            oxxo: Stripe.PaymentMethods.PaymentMethod.Options.OXXO.Configuration? = nil,
            p24: Stripe.PaymentMethods.PaymentMethod.Options.P24.Configuration? = nil,
            paynow: Stripe.PaymentMethods.PaymentMethod.Options.Paynow.Configuration? = nil,
            pix: Stripe.PaymentMethods.PaymentMethod.Options.Pix.Configuration? = nil,
            promptpay: Stripe.PaymentMethods.PaymentMethod.Options.PromptPay.Configuration? = nil,
            sepaDebit: Stripe.PaymentMethods.PaymentMethod.Options.SepaDebit.Configuration? = nil,
            sofort: Stripe.PaymentMethods.PaymentMethod.Options.Sofort.Configuration? = nil,
            usBankAccount: Stripe.PaymentMethods.PaymentMethod.Options.USBankAccount
                .Configuration? = nil,
            wechatPay: Stripe.PaymentMethods.PaymentMethod.Options.WechatPay.Configuration? = nil
        ) {
            self.acssDebit = acssDebit
            self.affirm = affirm
            self.afterpayClearpay = afterpayClearpay
            self.alipay = alipay
            self.auBecsDebit = auBecsDebit
            self.bacsDebit = bacsDebit
            self.bancontact = bancontact
            self.blik = blik
            self.boleto = boleto
            self.card = card
            self.cardPresent = cardPresent
            self.customerBalance = customerBalance
            self.eps = eps
            self.fpx = fpx
            self.giropay = giropay
            self.grabpay = grabpay
            self.ideal = ideal
            self.interacPresent = interacPresent
            self.klarna = klarna
            self.konbini = konbini
            self.link = link
            self.oxxo = oxxo
            self.p24 = p24
            self.paynow = paynow
            self.pix = pix
            self.promptpay = promptpay
            self.sepaDebit = sepaDebit
            self.sofort = sofort
            self.usBankAccount = usBankAccount
            self.wechatPay = wechatPay
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent {
    public enum Search {}
}

extension Stripe.PaymentIntents.PaymentIntent.Search {
    public struct Result: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.PaymentIntents.PaymentIntent]?
        public var hasMore: Bool?
        public var url: String?
        public var nextPage: String?
        public var totalCount: Int?

        public init(
            object: String,
            data: [Stripe.PaymentIntents.PaymentIntent]? = nil,
            hasMore: Bool? = nil,
            url: String? = nil,
            nextPage: String? = nil,
            totalCount: Int? = nil
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
            self.nextPage = nextPage
            self.totalCount = totalCount
        }
    }
}
