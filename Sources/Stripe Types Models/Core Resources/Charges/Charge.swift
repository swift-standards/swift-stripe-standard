public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Charges {
    public struct Charge: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var object: String
        public var amount: Int?
        public var amountCaptured: Int?
        public var amountRefunded: Int?
        public var application: String?
        @ExpandableOf<Stripe.Connect.Application.Fee> public var applicationFee: Stripe.Connect.Application.Fee.ID?
        public var applicationFeeAmount: Int?
        @ExpandableOf<Stripe.Balance.Transaction> public var balanceTransaction: Stripe.Balance.Transaction.ID?
        public var billingDetails: BillingModel.Details?
        public var calculatedStatementDescriptor: String?
        public var captured: Bool?
        public var created: Date
        public var currency: Stripe.Currency?
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        public var description: String?
        public var dispute: String?
        public var disputed: Bool?
        @ExpandableOf<Stripe.Balance.Transaction> public var failureBalanceTransaction: Stripe.Balance.Transaction.ID?
        public var failureCode: String?
        public var failureMessage: String?
        public var fraudDetails: Stripe.Charges.Charge.Fraud.Details?
        @Expandable<Stripe.Billing.Invoice, Stripe.Billing.Invoice.ID> public var invoice: Stripe.Billing.Invoice.ID?
        public var livemode: Bool?
        public var metadata: [String: String]?
        @ExpandableOf<Stripe.Connect.Account> public var onBehalfOf: Stripe.Connect.Account.ID?
        public var outcome: Stripe.Charges.Charge.Outcome?
        public var paid: Bool?
        @ExpandableOf<Stripe.PaymentIntents.PaymentIntent> public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public var paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID?
        public var paymentMethodDetails: Stripe.Charges.Charge.PaymentMethod.Details?
        public var radarOptions: Stripe.Charges.Charge.Radar.Options?
        public var receiptEmail: String?
        public var receiptNumber: String?
        public var receiptUrl: String?
        public var refunded: Bool?
        public var refunds: Stripe.Refunds.Refund.List?
        @ExpandableOf<Stripe.Fraud.Reviews.Review> public var review: Stripe.Fraud.Reviews.Review.ID?
        public var shipping: ShippingLabel?
        @ExpandableOf<Stripe.Connect.Transfer> public var sourceTransfer: Stripe.Connect.Transfer.ID?
        public var statementDescriptor: Stripe.StatementDescriptor?
        public var statementDescriptorSuffix: String?
        public var status: Stripe.Charges.Charge.Status?
        @ExpandableOf<Stripe.Connect.Transfer> public var transfer: Stripe.Connect.Transfer.ID?
        public var transferData: Stripe.Charges.Charge.Transfer.Data?
        public var transferGroup: String?

        public init(
            id: ID,
            object: String,
            amount: Int? = nil,
            amountCaptured: Int? = nil,
            amountRefunded: Int? = nil,
            application: String? = nil,
            applicationFee: Stripe.Connect.Application.Fee.ID? = nil,
            applicationFeeAmount: Int? = nil,
            balanceTransaction: Stripe.Balance.Transaction.ID? = nil,
            billingDetails: BillingModel.Details? = nil,
            calculatedStatementDescriptor: String? = nil,
            captured: Bool? = nil,
            created: Date,
            currency: Stripe.Currency? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            description: String? = nil,
            dispute: String? = nil,
            disputed: Bool? = nil,
            failureBalanceTransaction: Stripe.Balance.Transaction.ID? = nil,
            failureCode: String? = nil,
            failureMessage: String? = nil,
            fraudDetails: Stripe.Charges.Charge.Fraud.Details? = nil,
            invoice: Stripe.Billing.Invoice.ID? = nil,
            livemode: Bool? = nil,
            metadata: [String: String]? = nil,
            onBehalfOf: Stripe.Connect.Account.ID? = nil,
            outcome: Stripe.Charges.Charge.Outcome? = nil,
            paid: Bool? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            paymentMethodDetails: Stripe.Charges.Charge.PaymentMethod.Details? = nil,
            radarOptions: Stripe.Charges.Charge.Radar.Options? = nil,
            receiptEmail: String? = nil,
            receiptNumber: String? = nil,
            receiptUrl: String? = nil,
            refunded: Bool? = nil,
            refunds: Stripe.Refunds.Refund.List? = nil,
            review: Stripe.Fraud.Reviews.Review.ID? = nil,
            shipping: ShippingLabel? = nil,
            sourceTransfer: Stripe.Connect.Transfer.ID? = nil,
            statementDescriptor: Stripe.StatementDescriptor? = nil,
            statementDescriptorSuffix: String? = nil,
            status: Stripe.Charges.Charge.Status? = nil,
            transfer: Stripe.Connect.Transfer.ID? = nil,
            transferData: Stripe.Charges.Charge.Transfer.Data? = nil,
            transferGroup: String? = nil
        ) {
            self.id = id
            self.object = object
            self.amount = amount
            self.amountCaptured = amountCaptured
            self.amountRefunded = amountRefunded
            self.application = application
            self._applicationFee = Expandable(id: applicationFee)
            self.applicationFeeAmount = applicationFeeAmount
            self._balanceTransaction = Expandable(id: balanceTransaction)
            self.billingDetails = billingDetails
            self.calculatedStatementDescriptor = calculatedStatementDescriptor
            self.captured = captured
            self.created = created
            self.currency = currency
            self._customer = Expandable(id: customer)
            self.description = description
            self.dispute = dispute
            self.disputed = disputed
            self._failureBalanceTransaction = Expandable(id: failureBalanceTransaction)
            self.failureCode = failureCode
            self.failureMessage = failureMessage
            self.fraudDetails = fraudDetails
            self._invoice = Expandable(id: invoice)
            self.livemode = livemode
            self.metadata = metadata
            self._onBehalfOf = Expandable(id: onBehalfOf)
            self.outcome = outcome
            self.paid = paid
            self._paymentIntent = Expandable(id: paymentIntent)
            self.paymentMethod = paymentMethod
            self.paymentMethodDetails = paymentMethodDetails
            self.radarOptions = radarOptions
            self.receiptEmail = receiptEmail
            self.receiptNumber = receiptNumber
            self.receiptUrl = receiptUrl
            self.refunded = refunded
            self.refunds = refunds
            self._review = Expandable(id: review)
            self.shipping = shipping
            self._sourceTransfer = Expandable(id: sourceTransfer)
            self.statementDescriptor = statementDescriptor
            self.statementDescriptorSuffix = statementDescriptorSuffix
            self.status = status
            self._transfer = Expandable(id: transfer)
            self.transferData = transferData
            self.transferGroup = transferGroup
        }
    }
}

extension Stripe.Charges.Charge {
    public enum Radar {}
}

extension Stripe.Charges.Charge {
    public enum Fraud {}
}

extension Stripe.Charges.Charge.Fraud {
    public struct Details: Codable, Hashable, Sendable {
        public var userReport: Stripe.Charges.Charge.Fraud.Details.Report.`Type`?
        public var stripeReport: Stripe.Charges.Charge.Fraud.Details.Report.`Type`?

        public init(
            userReport: Stripe.Charges.Charge.Fraud.Details.Report.`Type`? = nil,
            stripeReport: Stripe.Charges.Charge.Fraud.Details.Report.`Type`? = nil
        ) {
            self.userReport = userReport
            self.stripeReport = stripeReport
        }
    }
}

extension Stripe.Charges.Charge.Fraud.Details {
    public enum Report {}
}

extension Stripe.Charges.Charge.Fraud.Details.Report {
    public enum `Type`: String, Codable, Sendable {
        case safe
        case fraudulent
    }
}

extension Stripe.Charges.Charge.Outcome {
    public enum Network {}
}

extension Stripe.Charges.Charge.Outcome {
    public enum Risk {}
}

extension Stripe.Charges.Charge {
    public struct Outcome: Codable, Hashable, Sendable {
        public var networkStatus: Stripe.Charges.Charge.Outcome.Network.Status?
        public var reason: String?
        public var riskLevel: Stripe.Charges.Charge.Outcome.Risk.Level?
        public var riskScore: Int?
        public var rule: String?
        public var sellerMessage: String?
        public var type: Stripe.Charges.Charge.Outcome.`Type`?

        public init(
            networkStatus: Stripe.Charges.Charge.Outcome.Network.Status? = nil,
            reason: String? = nil,
            riskLevel: Stripe.Charges.Charge.Outcome.Risk.Level? = nil,
            riskScore: Int? = nil,
            rule: String? = nil,
            sellerMessage: String? = nil,
            type: Stripe.Charges.Charge.Outcome.`Type`? = nil
        ) {
            self.networkStatus = networkStatus
            self.reason = reason
            self.riskLevel = riskLevel
            self.riskScore = riskScore
            self.rule = rule
            self.sellerMessage = sellerMessage
            self.type = type
        }
    }
}

extension Stripe.Charges.Charge.Outcome.Network {
    public enum Status: String, Codable, Sendable {
        case approvedByNetwork = "approved_by_network"
        case declinedByNetwork = "declined_by_network"
        case notSentToNetwork = "not_sent_to_network"
        case reversedAfterApproval = "reversed_after_approval"
    }
}

extension Stripe.Charges.Charge.Outcome.Risk {
    public enum Level: String, Codable, Sendable {
        case normal
        case elevated
        case highest
        case notAssessed = "not_assessed"
        case unknown
    }
}

extension Stripe.Charges.Charge.Outcome {
    public enum `Type`: String, Codable, Sendable {
        case authorized
        case manualReview = "manual_review"
        case issuerDeclined = "issuer_declined"
        case blocked
        case invalid
    }
}

extension Stripe.Charges.Charge {
    public enum Status: String, Codable, Sendable {
        case succeeded
        case pending
        case failed
    }
}

extension Stripe.Charges.Charge {
    public enum Transfer {}
}

extension Stripe.Charges.Charge.Transfer {
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

extension Stripe.Charges.Charge {
    public enum Search {}
}

extension Stripe.Charges.Charge.Search {
    public struct Result: Codable, Hashable, Sendable {
        public var object: String
        public var data: [Stripe.Charges.Charge]?
        public var hasMore: Bool?
        public var url: String?
        public var nextPage: String?
        public var totalCount: Int?

        public init(
            object: String,
            data: [Stripe.Charges.Charge]? = nil,
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

extension Stripe.Charges.Charge {
    public enum PaymentMethod {}
}

extension Stripe.Charges.Charge.PaymentMethod {
    public struct Details: Codable, Hashable, Sendable {
        public var achCreditTransfer: Stripe.Charges.Charge.PaymentMethod.Details.ACHCredit.Transfer?
        public var achDebit: Stripe.Charges.Charge.PaymentMethod.Details.ACHDebit?
        public var acssDebit: Stripe.Charges.Charge.PaymentMethod.Details.ACSSDebit?
        public var affirm: Stripe.Charges.Charge.PaymentMethod.Details.Affirm?
        public var afterpayClearpay: Stripe.Charges.Charge.PaymentMethod.Details.AfterpayClearpay?
        public var alipay: Stripe.Charges.Charge.PaymentMethod.Details.Alipay?
        public var auBecsDebit: Stripe.Charges.Charge.PaymentMethod.Details.AuBecsDebit?
        public var bacsDebit: Stripe.Charges.Charge.PaymentMethod.Details.BacsDebit?
        public var bancontact: Stripe.Charges.Charge.PaymentMethod.Details.Bancontact?
        public var blik: Stripe.Charges.Charge.PaymentMethod.Details.Blik?
        public var boleto: Stripe.Charges.Charge.PaymentMethod.Details.Boleto?
        public var card: Stripe.Charges.Charge.PaymentMethod.Details.Card?
        public var cardPresent: Stripe.Charges.Charge.PaymentMethod.Details.CardPresent?
        public var cashapp: Stripe.Charges.Charge.PaymentMethod.Details.CashApp?
        public var customerBalance: Stripe.Charges.Charge.PaymentMethod.Details.CustomerBalance?
        public var eps: Stripe.Charges.Charge.PaymentMethod.Details.EPS?
        public var fpx: Stripe.Charges.Charge.PaymentMethod.Details.Fpx?
        public var grabpay: Stripe.Charges.Charge.PaymentMethod.Details.Grabpay?
        public var giropay: Stripe.Charges.Charge.PaymentMethod.Details.Giropay?
        public var ideal: Stripe.Charges.Charge.PaymentMethod.Details.Ideal?
        public var interacPresent: Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent?
        public var klarna: Stripe.Charges.Charge.PaymentMethod.Details.Klarna?
        public var konbini: Stripe.Charges.Charge.PaymentMethod.Details.Kobini?
        public var link: Stripe.Charges.Charge.PaymentMethod.Details.Link?
        public var multibanco: Stripe.Charges.Charge.PaymentMethod.Details.Multibanco?
        public var oxxo: Stripe.Charges.Charge.PaymentMethod.Details.OXXO?
        public var p24: Stripe.Charges.Charge.PaymentMethod.Details.P24?
        public var paynow: Stripe.Charges.Charge.PaymentMethod.Details.Paynow?
        public var paypal: Stripe.Charges.Charge.PaymentMethod.Details.Paypal?
        public var pix: Stripe.Charges.Charge.PaymentMethod.Details.Pix?
        public var promptpay: Stripe.Charges.Charge.PaymentMethod.Details.Promptpay?
        public var sepaDebit: Stripe.Charges.Charge.PaymentMethod.Details.SepaDebit?
        public var sofort: Stripe.Charges.Charge.PaymentMethod.Details.Sofort?
        public var stripeAccount: Stripe.Charges.Charge.PaymentMethod.Details.StripeAccount?
        public var type: Stripe.Charges.Charge.PaymentMethod.Details.`Type`?
        public var usBankAccount: Stripe.Charges.Charge.PaymentMethod.Details.USBankAccount?
        public var wechat: Stripe.Charges.Charge.PaymentMethod.Details.Wechat?
        public var wechatPay: Stripe.Charges.Charge.PaymentMethod.Details.WechatPay?
        public var zip: Stripe.Charges.Charge.PaymentMethod.Details.Zip?

        public init(
            achCreditTransfer: Stripe.Charges.Charge.PaymentMethod.Details.ACHCredit.Transfer? =
                nil,
            achDebit: Stripe.Charges.Charge.PaymentMethod.Details.ACHDebit? = nil,
            acssDebit: Stripe.Charges.Charge.PaymentMethod.Details.ACSSDebit? = nil,
            affirm: Stripe.Charges.Charge.PaymentMethod.Details.Affirm? = nil,
            afterpayClearpay: Stripe.Charges.Charge.PaymentMethod.Details.AfterpayClearpay? = nil,
            alipay: Stripe.Charges.Charge.PaymentMethod.Details.Alipay? = nil,
            auBecsDebit: Stripe.Charges.Charge.PaymentMethod.Details.AuBecsDebit? = nil,
            bacsDebit: Stripe.Charges.Charge.PaymentMethod.Details.BacsDebit? = nil,
            bancontact: Stripe.Charges.Charge.PaymentMethod.Details.Bancontact? = nil,
            blik: Stripe.Charges.Charge.PaymentMethod.Details.Blik? = nil,
            boleto: Stripe.Charges.Charge.PaymentMethod.Details.Boleto? = nil,
            card: Stripe.Charges.Charge.PaymentMethod.Details.Card? = nil,
            cardPresent: Stripe.Charges.Charge.PaymentMethod.Details.CardPresent? = nil,
            cashapp: Stripe.Charges.Charge.PaymentMethod.Details.CashApp? = nil,
            customerBalance: Stripe.Charges.Charge.PaymentMethod.Details.CustomerBalance? = nil,
            eps: Stripe.Charges.Charge.PaymentMethod.Details.EPS? = nil,
            fpx: Stripe.Charges.Charge.PaymentMethod.Details.Fpx? = nil,
            grabpay: Stripe.Charges.Charge.PaymentMethod.Details.Grabpay? = nil,
            giropay: Stripe.Charges.Charge.PaymentMethod.Details.Giropay? = nil,
            ideal: Stripe.Charges.Charge.PaymentMethod.Details.Ideal? = nil,
            interacPresent: Stripe.Charges.Charge.PaymentMethod.Details.InteracPresent? = nil,
            klarna: Stripe.Charges.Charge.PaymentMethod.Details.Klarna? = nil,
            konbini: Stripe.Charges.Charge.PaymentMethod.Details.Kobini? = nil,
            link: Stripe.Charges.Charge.PaymentMethod.Details.Link? = nil,
            multibanco: Stripe.Charges.Charge.PaymentMethod.Details.Multibanco? = nil,
            oxxo: Stripe.Charges.Charge.PaymentMethod.Details.OXXO? = nil,
            p24: Stripe.Charges.Charge.PaymentMethod.Details.P24? = nil,
            paynow: Stripe.Charges.Charge.PaymentMethod.Details.Paynow? = nil,
            paypal: Stripe.Charges.Charge.PaymentMethod.Details.Paypal? = nil,
            pix: Stripe.Charges.Charge.PaymentMethod.Details.Pix? = nil,
            promptpay: Stripe.Charges.Charge.PaymentMethod.Details.Promptpay? = nil,
            sepaDebit: Stripe.Charges.Charge.PaymentMethod.Details.SepaDebit? = nil,
            sofort: Stripe.Charges.Charge.PaymentMethod.Details.Sofort? = nil,
            stripeAccount: Stripe.Charges.Charge.PaymentMethod.Details.StripeAccount? = nil,
            type: Stripe.Charges.Charge.PaymentMethod.Details.`Type`? = nil,
            usBankAccount: Stripe.Charges.Charge.PaymentMethod.Details.USBankAccount? = nil,
            wechat: Stripe.Charges.Charge.PaymentMethod.Details.Wechat? = nil,
            wechatPay: Stripe.Charges.Charge.PaymentMethod.Details.WechatPay? = nil,
            zip: Stripe.Charges.Charge.PaymentMethod.Details.Zip? = nil
        ) {
            self.achCreditTransfer = achCreditTransfer
            self.achDebit = achDebit
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
            self.cashapp = cashapp
            self.customerBalance = customerBalance
            self.eps = eps
            self.fpx = fpx
            self.grabpay = grabpay
            self.giropay = giropay
            self.ideal = ideal
            self.interacPresent = interacPresent
            self.klarna = klarna
            self.link = link
            self.konbini = konbini
            self.multibanco = multibanco
            self.oxxo = oxxo
            self.p24 = p24
            self.paynow = paynow
            self.paypal = paypal
            self.pix = pix
            self.promptpay = promptpay
            self.sepaDebit = sepaDebit
            self.sofort = sofort
            self.stripeAccount = stripeAccount
            self.type = type
            self.usBankAccount = usBankAccount
            self.wechat = wechat
            self.wechatPay = wechatPay
            self.zip = zip
        }
    }
}

extension Stripe.Charges.Charge.PaymentMethod.Details {
    public enum `Type`: String, Codable, Sendable {
        case achCreditTransfer = "ach_credit_transfer"
        case achDebit = "ach_debit"
        case acssDebit = "acss_debit"
        case affirm
        case afterpayClearpay = "afterpay_clearpay"
        case alipay
        case auBecsDebit = "au_becs_debit"
        case bacsDebit = "bacs_debit"
        case bancontact
        case blik
        case boleto
        case card
        case cardPresent = "card_present"
        case cashapp
        case customerBalance = "customer_balance"
        case eps
        case fpx
        case giropay
        case grabpay
        case ideal
        case interacPresent = "interac_present"
        case klarna
        case konbini
        case link
        case multibanco
        case oxxo
        case p24
        case paynow
        case paypal
        case pix
        case promptpay
        case sepaDebit = "sepa_debit"
        case sofort
        case stripeAccount = "stripe_account"
        case usBankAccount = "us_bank_account"
        case wechat
        case wechatPay = "wechat_pay"
        case zip
    }
}

extension Stripe.Charges.Charge.Radar {
    public struct Options: Codable, Hashable, Sendable {
        public var session: String?

        public init(
            session: String? = nil
        ) {
            self.session = session
        }
    }
}
