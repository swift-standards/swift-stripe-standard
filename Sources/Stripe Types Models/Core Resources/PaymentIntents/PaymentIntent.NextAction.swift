public import Foundation
public import Stripe_Types_Shared

extension Stripe.PaymentIntents.PaymentIntent {
    public struct NextAction: Codable, Hashable, Sendable {
        public var alipayHandleRedirect: Stripe.PaymentIntents.PaymentIntent.NextAction.Alipay.HandleRedirect?
        public var boletoDisplaydetails: Stripe.PaymentIntents.PaymentIntent.NextAction.Boleto.DisplayDetails?
        public var cardAwaitNotification: Stripe.PaymentIntents.PaymentIntent.NextAction.Card.AwaitNotification?
        public var konbiniDisplayDetails: Stripe.PaymentIntents.PaymentIntent.NextAction.Konbini.DisplayDetails?
        public var oxxoDisplayDetails: Stripe.PaymentIntents.PaymentIntent.NextAction.OXXO.DisplayDetails?
        public var paynowDisplayQrCode: Stripe.PaymentIntents.PaymentIntent.NextAction.Paynow.DisplayQRCode?
        public var promptpayDisplayQrCode: Stripe.PaymentIntents.PaymentIntent.NextAction.PromptPay.DisplayQRCode?
        public var redirectToUrl: Stripe.PaymentIntents.PaymentIntent.NextAction.RedirectToUrl?
        public var type: Stripe.PaymentIntents.PaymentIntent.NextAction.`Type`?
        public var verifyWithMicrodeposits: Stripe.PaymentIntents.PaymentIntent.NextAction.VerifyWithMicrodeposits?
        public var wechatPayDisplayQrCode: Stripe.PaymentIntents.PaymentIntent.NextAction.WechatPay.QRCode?
        public var wechatPayRedirectToAndroidApp: Stripe.PaymentIntents.PaymentIntent.NextAction.WechatPay.AndroidApp?
        public var wechatPayRedirectToIosApp: Stripe.PaymentIntents.PaymentIntent.NextAction.WechatPay.IOSApp?

        public init(
            alipayHandleRedirect: Stripe.PaymentIntents.PaymentIntent.NextAction.Alipay
                .HandleRedirect? =
                nil,
            boletoDisplaydetails: Stripe.PaymentIntents.PaymentIntent.NextAction.Boleto
                .DisplayDetails? =
                nil,
            cardAwaitNotification: Stripe.PaymentIntents.PaymentIntent.NextAction.Card
                .AwaitNotification? = nil,
            konbiniDisplayDetails: Stripe.PaymentIntents.PaymentIntent.NextAction.Konbini
                .DisplayDetails? = nil,
            oxxoDisplayDetails: Stripe.PaymentIntents.PaymentIntent.NextAction.OXXO
                .DisplayDetails? = nil,
            paynowDisplayQrCode: Stripe.PaymentIntents.PaymentIntent.NextAction.Paynow
                .DisplayQRCode? =
                nil,
            promptpayDisplayQrCode: Stripe.PaymentIntents.PaymentIntent.NextAction.PromptPay
                .DisplayQRCode? = nil,
            redirectToUrl: Stripe.PaymentIntents.PaymentIntent.NextAction.RedirectToUrl? = nil,
            type: Stripe.PaymentIntents.PaymentIntent.NextAction.`Type`? = nil,
            verifyWithMicrodeposits: Stripe.PaymentIntents.PaymentIntent.NextAction
                .VerifyWithMicrodeposits? = nil,
            wechatPayDisplayQrCode: Stripe.PaymentIntents.PaymentIntent.NextAction.WechatPay
                .QRCode? =
                nil,
            wechatPayRedirectToAndroidApp: Stripe.PaymentIntents.PaymentIntent.NextAction.WechatPay
                .AndroidApp? = nil,
            wechatPayRedirectToIosApp: Stripe.PaymentIntents.PaymentIntent.NextAction.WechatPay
                .IOSApp? =
                nil
        ) {
            self.alipayHandleRedirect = alipayHandleRedirect
            self.boletoDisplaydetails = boletoDisplaydetails
            self.cardAwaitNotification = cardAwaitNotification
            self.konbiniDisplayDetails = konbiniDisplayDetails
            self.oxxoDisplayDetails = oxxoDisplayDetails
            self.paynowDisplayQrCode = paynowDisplayQrCode
            self.promptpayDisplayQrCode = promptpayDisplayQrCode
            self.redirectToUrl = redirectToUrl
            self.type = type
            self.verifyWithMicrodeposits = verifyWithMicrodeposits
            self.wechatPayDisplayQrCode = wechatPayDisplayQrCode
            self.wechatPayRedirectToAndroidApp = wechatPayRedirectToAndroidApp
            self.wechatPayRedirectToIosApp = wechatPayRedirectToIosApp
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction {
    public enum Alipay {}
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction.Alipay {
    public struct HandleRedirect: Codable, Hashable, Sendable {
        public var nativeData: String?
        public var nativeUrl: String?
        public var returnUrl: String?
        public var url: String?

        public init(
            nativeData: String? = nil,
            nativeUrl: String? = nil,
            returnUrl: String? = nil,
            url: String? = nil
        ) {
            self.nativeData = nativeData
            self.nativeUrl = nativeUrl
            self.returnUrl = returnUrl
            self.url = url
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction {
    public enum Boleto {}
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction.Boleto {
    public struct DisplayDetails: Codable, Hashable, Sendable {
        public var expiresAt: Date?
        public var hostedVoucherUrl: String?
        public var number: String?
        public var pdf: String?

        public init(
            expiresAt: Date? = nil,
            hostedVoucherUrl: String? = nil,
            number: String? = nil,
            pdf: String? = nil
        ) {
            self.expiresAt = expiresAt
            self.hostedVoucherUrl = hostedVoucherUrl
            self.number = number
            self.pdf = pdf
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction {
    public enum Card {}
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction.Card {
    public struct AwaitNotification: Codable, Hashable, Sendable {
        public var chargeAttemptAt: Date?
        public var customerApprovalRequired: Bool?

        public init(
            chargeAttemptAt: Date? = nil,
            customerApprovalRequired: Bool? = nil
        ) {
            self.chargeAttemptAt = chargeAttemptAt
            self.customerApprovalRequired = customerApprovalRequired
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction {
    public enum Konbini {}
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction.Konbini {
    public struct DisplayDetails: Codable, Hashable, Sendable {
        public var expiresAt: Date?
        public var hostedVoucherUrl: String?
        public var stores: Stores?

        public init(
            expiresAt: Date? = nil,
            hostedVoucherUrl: String? = nil,
            stores: Stores? = nil
        ) {
            self.expiresAt = expiresAt
            self.hostedVoucherUrl = hostedVoucherUrl
            self.stores = stores
        }
    }

    public struct Stores: Codable, Hashable, Sendable {
        public var familymart: StoreDetails?
        public var lawson: StoreDetails?
        public var ministop: StoreDetails?
        public var seicomart: StoreDetails?

        public init(
            familymart: StoreDetails? = nil,
            lawson: StoreDetails? = nil,
            ministop: StoreDetails? = nil,
            seicomart: StoreDetails? = nil
        ) {
            self.familymart = familymart
            self.lawson = lawson
            self.ministop = ministop
            self.seicomart = seicomart
        }
    }

    public struct StoreDetails: Codable, Hashable, Sendable {
        public var confirmationNumber: String?
        public var paymentCode: String?

        public init(
            confirmationNumber: String? = nil,
            paymentCode: String? = nil
        ) {
            self.confirmationNumber = confirmationNumber
            self.paymentCode = paymentCode
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction {
    public enum OXXO {}
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction.OXXO {
    public struct DisplayDetails: Codable, Hashable, Sendable {
        public var expiresAfter: Date?
        public var hostedVoucherUrl: String?
        public var number: String?

        public init(
            expiresAfter: Date? = nil,
            hostedVoucherUrl: String? = nil,
            number: String? = nil
        ) {
            self.expiresAfter = expiresAfter
            self.hostedVoucherUrl = hostedVoucherUrl
            self.number = number
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction {
    public enum Paynow {}
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction.Paynow {
    public struct DisplayQRCode: Codable, Hashable, Sendable {
        public var data: String?
        public var hostedInstructionsUrl: String?
        public var imageUrlPng: String?
        public var imageUrlSvg: String?

        public init(
            data: String? = nil,
            hostedInstructionsUrl: String? = nil,
            imageUrlPng: String? = nil,
            imageUrlSvg: String? = nil
        ) {
            self.data = data
            self.hostedInstructionsUrl = hostedInstructionsUrl
            self.imageUrlPng = imageUrlPng
            self.imageUrlSvg = imageUrlSvg
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction {
    public enum PromptPay {}
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction.PromptPay {
    public struct DisplayQRCode: Codable, Hashable, Sendable {
        public var data: String?
        public var hostedInstructionsUrl: String?
        public var imageUrlPng: String?
        public var imageUrlSvg: String?

        public init(
            data: String? = nil,
            hostedInstructionsUrl: String? = nil,
            imageUrlPng: String? = nil,
            imageUrlSvg: String? = nil
        ) {
            self.data = data
            self.hostedInstructionsUrl = hostedInstructionsUrl
            self.imageUrlPng = imageUrlPng
            self.imageUrlSvg = imageUrlSvg
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction {
    public struct RedirectToUrl: Codable, Hashable, Sendable {
        public var returnUrl: String?
        public var url: String?

        public init(
            returnUrl: String? = nil,
            url: String? = nil
        ) {
            self.returnUrl = returnUrl
            self.url = url
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction {
    public enum `Type`: String, Codable, Sendable {
        case redirectToUrl = "redirect_to_url"
        case useStripeSDK = "use_stripe_sdk"
        case alipayHandleRedirect = "alipay_handle_redirect"
        case oxxoDisplayDetails = "oxxo_display_details"
        case verifyWithMicrodeposits = "verify_with_microdeposits"
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction {
    public struct VerifyWithMicrodeposits: Codable, Hashable, Sendable {
        public var arrivalDate: Date?
        public var hostedVerificationUrl: String?
        public var microdepositType: MicrodepositType?

        public init(
            arrivalDate: Date? = nil,
            hostedVerificationUrl: String? = nil,
            microdepositType: MicrodepositType? = nil
        ) {
            self.arrivalDate = arrivalDate
            self.hostedVerificationUrl = hostedVerificationUrl
            self.microdepositType = microdepositType
        }
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction.VerifyWithMicrodeposits {
    public enum MicrodepositType: String, Codable, Sendable {
        case descriptorCode = "descriptor_code"
        case amounts
    }
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction {
    public enum WechatPay {}
}

extension Stripe.PaymentIntents.PaymentIntent.NextAction.WechatPay {
    public struct QRCode: Codable, Hashable, Sendable {
        public var data: String?
        public var hostedInstructionsUrl: String?
        public var imageDataUrl: String?
        public var imageUrlPng: String?
        public var imageUrlSvg: String?

        public init(
            data: String? = nil,
            hostedInstructionsUrl: String? = nil,
            imageDataUrl: String? = nil,
            imageUrlPng: String? = nil,
            imageUrlSvg: String? = nil
        ) {
            self.data = data
            self.hostedInstructionsUrl = hostedInstructionsUrl
            self.imageDataUrl = imageDataUrl
            self.imageUrlPng = imageUrlPng
            self.imageUrlSvg = imageUrlSvg
        }
    }

    public struct AndroidApp: Codable, Hashable, Sendable {
        public var appId: String?
        public var nonceStr: String?
        public var package: String?
        public var partnerId: String?
        public var prepayId: String?
        public var sign: String?
        public var timestamp: String?

        public init(
            appId: String? = nil,
            nonceStr: String? = nil,
            package: String? = nil,
            partnerId: String? = nil,
            prepayId: String? = nil,
            sign: String? = nil,
            timestamp: String? = nil
        ) {
            self.appId = appId
            self.nonceStr = nonceStr
            self.package = package
            self.partnerId = partnerId
            self.prepayId = prepayId
            self.sign = sign
            self.timestamp = timestamp
        }
    }

    public struct IOSApp: Codable, Hashable, Sendable {
        public var nativeUrl: String?

        public init(
            nativeUrl: String? = nil
        ) {
            self.nativeUrl = nativeUrl
        }
    }
}
