import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.PaymentMethodConfigurations {
    public enum Create {}

    public enum Update {}

    public enum List {}
}

extension Stripe.PaymentMethodConfigurations.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let name: String?
        public let parent: String?

        public let acssDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let affirm: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let afterpayClearpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let alipay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let alma: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let amazonPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let applePay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let applePayLater: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let auBecsDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let bacsDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let bancontact: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let billie: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let blik: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let boleto: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let card: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let cartesBancaires: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let cashapp: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let customerBalance: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let eps: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let fpx: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let giropay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let googlePay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let grabpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let ideal: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let jcb: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let kakaoPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let klarna: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let konbini: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let krCard: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let link: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let mobilepay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let multibanco: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let naverPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let nzBankAccount: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let oxxo: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let p24: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let payByBank: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let payco: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let paynow: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let paypal: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let pix: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let promptpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let revolutPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let samsungPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let satispay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let sepaDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let sofort: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let swish: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let twint: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let usBankAccount: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let wechatPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let zip: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?

        private enum CodingKeys: String, CodingKey {
            case name
            case parent
            case acssDebit = "acss_debit"
            case affirm
            case afterpayClearpay = "afterpay_clearpay"
            case alipay
            case alma
            case amazonPay = "amazon_pay"
            case applePay = "apple_pay"
            case applePayLater = "apple_pay_later"
            case auBecsDebit = "au_becs_debit"
            case bacsDebit = "bacs_debit"
            case bancontact
            case billie
            case blik
            case boleto
            case card
            case cartesBancaires = "cartes_bancaires"
            case cashapp
            case customerBalance = "customer_balance"
            case eps
            case fpx
            case giropay
            case googlePay = "google_pay"
            case grabpay
            case ideal
            case jcb
            case kakaoPay = "kakao_pay"
            case klarna
            case konbini
            case krCard = "kr_card"
            case link
            case mobilepay
            case multibanco
            case naverPay = "naver_pay"
            case nzBankAccount = "nz_bank_account"
            case oxxo
            case p24
            case payByBank = "pay_by_bank"
            case payco
            case paynow
            case paypal
            case pix
            case promptpay
            case revolutPay = "revolut_pay"
            case samsungPay = "samsung_pay"
            case satispay
            case sepaDebit = "sepa_debit"
            case sofort
            case swish
            case twint
            case usBankAccount = "us_bank_account"
            case wechatPay = "wechat_pay"
            case zip
        }

        public init(
            name: String? = nil,
            parent: String? = nil,
            acssDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            affirm: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            afterpayClearpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            alipay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            alma: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            amazonPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            applePay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            applePayLater: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            auBecsDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            bacsDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            bancontact: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            billie: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            blik: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            boleto: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            card: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            cartesBancaires: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            cashapp: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            customerBalance: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            eps: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            fpx: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            giropay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            googlePay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            grabpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            ideal: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            jcb: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            kakaoPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            klarna: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            konbini: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            krCard: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            link: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            mobilepay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            multibanco: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            naverPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            nzBankAccount: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            oxxo: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            p24: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            payByBank: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            payco: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            paynow: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            paypal: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            pix: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            promptpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            revolutPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            samsungPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            satispay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            sepaDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            sofort: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            swish: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            twint: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            usBankAccount: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            wechatPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            zip: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil
        ) {
            self.name = name
            self.parent = parent
            self.acssDebit = acssDebit
            self.affirm = affirm
            self.afterpayClearpay = afterpayClearpay
            self.alipay = alipay
            self.alma = alma
            self.amazonPay = amazonPay
            self.applePay = applePay
            self.applePayLater = applePayLater
            self.auBecsDebit = auBecsDebit
            self.bacsDebit = bacsDebit
            self.bancontact = bancontact
            self.billie = billie
            self.blik = blik
            self.boleto = boleto
            self.card = card
            self.cartesBancaires = cartesBancaires
            self.cashapp = cashapp
            self.customerBalance = customerBalance
            self.eps = eps
            self.fpx = fpx
            self.giropay = giropay
            self.googlePay = googlePay
            self.grabpay = grabpay
            self.ideal = ideal
            self.jcb = jcb
            self.kakaoPay = kakaoPay
            self.klarna = klarna
            self.konbini = konbini
            self.krCard = krCard
            self.link = link
            self.mobilepay = mobilepay
            self.multibanco = multibanco
            self.naverPay = naverPay
            self.nzBankAccount = nzBankAccount
            self.oxxo = oxxo
            self.p24 = p24
            self.payByBank = payByBank
            self.payco = payco
            self.paynow = paynow
            self.paypal = paypal
            self.pix = pix
            self.promptpay = promptpay
            self.revolutPay = revolutPay
            self.samsungPay = samsungPay
            self.satispay = satispay
            self.sepaDebit = sepaDebit
            self.sofort = sofort
            self.swish = swish
            self.twint = twint
            self.usBankAccount = usBankAccount
            self.wechatPay = wechatPay
            self.zip = zip
        }
    }
}

extension Stripe.PaymentMethodConfigurations.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let active: Bool?
        public let name: String?

        public let acssDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let affirm: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let afterpayClearpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let alipay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let alma: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let amazonPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let applePay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let applePayLater: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let auBecsDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let bacsDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let bancontact: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let billie: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let blik: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let boleto: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let card: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let cartesBancaires: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let cashapp: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let customerBalance: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let eps: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let fpx: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let giropay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let googlePay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let grabpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let ideal: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let jcb: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let kakaoPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let klarna: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let konbini: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let krCard: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let link: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let mobilepay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let multibanco: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let naverPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let nzBankAccount: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let oxxo: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let p24: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let payByBank: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let payco: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let paynow: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let paypal: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let pix: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let promptpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let revolutPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let samsungPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let satispay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let sepaDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let sofort: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let swish: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let twint: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let usBankAccount: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let wechatPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?
        public let zip: Stripe.PaymentMethodConfigurations.PaymentMethodConfig?

        private enum CodingKeys: String, CodingKey {
            case active
            case name
            case acssDebit = "acss_debit"
            case affirm
            case afterpayClearpay = "afterpay_clearpay"
            case alipay
            case alma
            case amazonPay = "amazon_pay"
            case applePay = "apple_pay"
            case applePayLater = "apple_pay_later"
            case auBecsDebit = "au_becs_debit"
            case bacsDebit = "bacs_debit"
            case bancontact
            case billie
            case blik
            case boleto
            case card
            case cartesBancaires = "cartes_bancaires"
            case cashapp
            case customerBalance = "customer_balance"
            case eps
            case fpx
            case giropay
            case googlePay = "google_pay"
            case grabpay
            case ideal
            case jcb
            case kakaoPay = "kakao_pay"
            case klarna
            case konbini
            case krCard = "kr_card"
            case link
            case mobilepay
            case multibanco
            case naverPay = "naver_pay"
            case nzBankAccount = "nz_bank_account"
            case oxxo
            case p24
            case payByBank = "pay_by_bank"
            case payco
            case paynow
            case paypal
            case pix
            case promptpay
            case revolutPay = "revolut_pay"
            case samsungPay = "samsung_pay"
            case satispay
            case sepaDebit = "sepa_debit"
            case sofort
            case swish
            case twint
            case usBankAccount = "us_bank_account"
            case wechatPay = "wechat_pay"
            case zip
        }

        public init(
            active: Bool? = nil,
            name: String? = nil,
            acssDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            affirm: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            afterpayClearpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            alipay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            alma: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            amazonPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            applePay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            applePayLater: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            auBecsDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            bacsDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            bancontact: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            billie: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            blik: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            boleto: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            card: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            cartesBancaires: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            cashapp: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            customerBalance: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            eps: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            fpx: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            giropay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            googlePay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            grabpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            ideal: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            jcb: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            kakaoPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            klarna: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            konbini: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            krCard: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            link: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            mobilepay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            multibanco: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            naverPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            nzBankAccount: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            oxxo: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            p24: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            payByBank: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            payco: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            paynow: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            paypal: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            pix: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            promptpay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            revolutPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            samsungPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            satispay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            sepaDebit: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            sofort: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            swish: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            twint: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            usBankAccount: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            wechatPay: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil,
            zip: Stripe.PaymentMethodConfigurations.PaymentMethodConfig? = nil
        ) {
            self.active = active
            self.name = name
            self.acssDebit = acssDebit
            self.affirm = affirm
            self.afterpayClearpay = afterpayClearpay
            self.alipay = alipay
            self.alma = alma
            self.amazonPay = amazonPay
            self.applePay = applePay
            self.applePayLater = applePayLater
            self.auBecsDebit = auBecsDebit
            self.bacsDebit = bacsDebit
            self.bancontact = bancontact
            self.billie = billie
            self.blik = blik
            self.boleto = boleto
            self.card = card
            self.cartesBancaires = cartesBancaires
            self.cashapp = cashapp
            self.customerBalance = customerBalance
            self.eps = eps
            self.fpx = fpx
            self.giropay = giropay
            self.googlePay = googlePay
            self.grabpay = grabpay
            self.ideal = ideal
            self.jcb = jcb
            self.kakaoPay = kakaoPay
            self.klarna = klarna
            self.konbini = konbini
            self.krCard = krCard
            self.link = link
            self.mobilepay = mobilepay
            self.multibanco = multibanco
            self.naverPay = naverPay
            self.nzBankAccount = nzBankAccount
            self.oxxo = oxxo
            self.p24 = p24
            self.payByBank = payByBank
            self.payco = payco
            self.paynow = paynow
            self.paypal = paypal
            self.pix = pix
            self.promptpay = promptpay
            self.revolutPay = revolutPay
            self.samsungPay = samsungPay
            self.satispay = satispay
            self.sepaDebit = sepaDebit
            self.sofort = sofort
            self.swish = swish
            self.twint = twint
            self.usBankAccount = usBankAccount
            self.wechatPay = wechatPay
            self.zip = zip
        }
    }
}

extension Stripe.PaymentMethodConfigurations.List {
    public struct Request: Codable, Equatable, Sendable {
        public let application: String?
        public let endingBefore: String?
        public let limit: Int?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case application
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            application: String? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.application = application
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.PaymentMethodConfigurations.Configuration]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}
