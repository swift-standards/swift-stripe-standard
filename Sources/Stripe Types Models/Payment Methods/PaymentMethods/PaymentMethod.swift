public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe {
    public typealias PaymentMethod = Stripe.PaymentMethods.PaymentMethod
}

extension Stripe.PaymentMethods {
    public struct PaymentMethod: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var billingDetails: BillingModel.Details?
        @ExpandableOf<Stripe.Customers.Customer> public var customer: Stripe.Customers.Customer.ID?
        public var metadata: [String: String]?
        public var type: PaymentMethod.`Type`?
        public var object: String
        public var acssDebit: PaymentMethodAcssDebit?
        public var afterpayClearpay: PaymentMethodAfterpayClearpay?
        public var alipay: PaymentMethodAlipay?
        public var auBecsDebit: PaymentMethodAuBecsDebit?
        public var bacsDebit: PaymentMethodBacsDebit?
        public var bancontact: PaymentMethodBancontact?
        public var boleto: PaymentMethodBoleto?
        public var card: PaymentMethodCard?
        public var cardPresent: PaymentMethodCardPresent?
        public var cashapp: PaymentMethodCashapp?
        public var created: Date
        public var customerBalance: PaymentMethodCustomerBalance?
        public var eps: PaymentMethodEps?
        public var fpx: PaymentMethodFpx?
        public var giropay: PaymentMethodGiropay?
        public var grabpay: PaymentMethodGrabpay?
        public var ideal: PaymentMethodIdeal?
        public var interacPresent: PaymentMethodInteractPresent?
        public var klarna: PaymentMethodKlarna?
        public var konbini: PaymentMethodKonbini?
        public var link: PaymentMethodLink?
        public var livemode: Bool?
        public var oxxo: PaymentMethodOXXO?
        public var p24: PaymentMethodP24?
        public var paynow: PaymentMethodPaynow?
        public var pix: PaymentMethodPix?
        public var promptpay: PaymentMethodPromptPay?
        public var radarOptions: PaymentMethod.RadarOptions?
        public var sepaDebit: PaymentMethodSepaDebit?
        public var sofort: PaymentMethodSofort?
        public var usBankAccount: PaymentMethodUSBankAccount?
        public var wechatPay: PaymentMethodWechatPay?

        public init(
            id: ID,
            billingDetails: BillingModel.Details? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            metadata: [String: String]? = nil,
            type: PaymentMethod.`Type`? = nil,
            object: String,
            acssDebit: PaymentMethodAcssDebit? = nil,
            afterpayClearpay: PaymentMethodAfterpayClearpay? = nil,
            alipay: PaymentMethodAlipay? = nil,
            auBecsDebit: PaymentMethodAuBecsDebit? = nil,
            bacsDebit: PaymentMethodBacsDebit? = nil,
            bancontact: PaymentMethodBancontact? = nil,
            boleto: PaymentMethodBoleto? = nil,
            card: PaymentMethodCard? = nil,
            cardPresent: PaymentMethodCardPresent? = nil,
            cashapp: PaymentMethodCashapp? = nil,
            created: Date,
            customerBalance: PaymentMethodCustomerBalance? = nil,
            eps: PaymentMethodEps? = nil,
            fpx: PaymentMethodFpx? = nil,
            giropay: PaymentMethodGiropay? = nil,
            grabpay: PaymentMethodGrabpay? = nil,
            ideal: PaymentMethodIdeal? = nil,
            interacPresent: PaymentMethodInteractPresent? = nil,
            klarna: PaymentMethodKlarna? = nil,
            konbini: PaymentMethodKonbini? = nil,
            link: PaymentMethodLink? = nil,
            livemode: Bool? = nil,
            oxxo: PaymentMethodOXXO? = nil,
            p24: PaymentMethodP24? = nil,
            paynow: PaymentMethodPaynow? = nil,
            pix: PaymentMethodPix? = nil,
            promptpay: PaymentMethodPromptPay? = nil,
            radarOptions: PaymentMethod.RadarOptions? = nil,
            sepaDebit: PaymentMethodSepaDebit? = nil,
            sofort: PaymentMethodSofort? = nil,
            usBankAccount: PaymentMethodUSBankAccount? = nil,
            wechatPay: PaymentMethodWechatPay? = nil
        ) {
            self.id = id
            self.billingDetails = billingDetails
            self._customer = Expandable(id: customer)
            self.metadata = metadata
            self.type = type
            self.object = object
            self.acssDebit = acssDebit
            self.afterpayClearpay = afterpayClearpay
            self.alipay = alipay
            self.auBecsDebit = auBecsDebit
            self.bacsDebit = bacsDebit
            self.bancontact = bancontact
            self.boleto = boleto
            self.card = card
            self.cardPresent = cardPresent
            self.cashapp = cashapp
            self.created = created
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
            self.livemode = livemode
            self.oxxo = oxxo
            self.p24 = p24
            self.paynow = paynow
            self.pix = pix
            self.promptpay = promptpay
            self.radarOptions = radarOptions
            self.sepaDebit = sepaDebit
            self.sofort = sofort
            self.usBankAccount = usBankAccount
            self.wechatPay = wechatPay
        }
    }
}

extension Stripe.PaymentMethods.PaymentMethod {
    public enum `Type`: String, Codable, Sendable {
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
        case interactPresent = "interact_present"
        case klarna
        case konbini
        case link
        case oxxo
        case p24
        case paynow
        case pix
        case promptpay
        case sepaDebit = "sepa_debit"
        case sofort
        case usBankAccount = "us_bank_account"
        case wechatPay = "wechat_pay"
    }
}

extension Stripe.PaymentMethods.PaymentMethod {
    public struct RadarOptions: Codable, Hashable, Sendable {
        public var session: String?

        public init(
            session: String? = nil
        ) {
            self.session = session
        }
    }
}
