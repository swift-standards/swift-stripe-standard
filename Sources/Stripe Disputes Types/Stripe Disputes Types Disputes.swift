import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Disputes {
    public enum Update {}
    public enum List {}
}

extension Stripe.Disputes.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let evidence: Evidence?
        public let metadata: [String: String]?
        public let submit: Bool?

        public init(
            evidence: Evidence? = nil,
            metadata: [String: String]? = nil,
            submit: Bool? = nil
        ) {
            self.evidence = evidence
            self.metadata = metadata
            self.submit = submit
        }
    }
}

extension Stripe.Disputes.Update.Request {
    public struct Evidence: Codable, Equatable, Sendable {
        public let accessActivityLog: String?
        public let billingAddress: String?
        public let customerCommunication: String?
        public let customerEmailAddress: String?
        public let customerName: String?
        public let customerPurchaseIp: String?
        public let customerSignature: String?
        public let duplicateChargeDocumentation: String?
        public let duplicateChargeExplanation: String?
        public let duplicateChargeId: String?
        public let productDescription: String?
        public let receipt: String?
        public let refundPolicy: String?
        public let refundPolicyDisclosure: String?
        public let refundRefusalExplanation: String?
        public let serviceDate: String?
        public let serviceDocumentation: String?
        public let shippingAddress: String?
        public let shippingCarrier: String?
        public let shippingDate: String?
        public let shippingDocumentation: String?
        public let shippingTrackingNumber: String?
        public let uncategorizedFile: String?
        public let uncategorizedText: String?

        private enum CodingKeys: String, CodingKey {
            case accessActivityLog = "access_activity_log"
            case billingAddress = "billing_address"
            case customerCommunication = "customer_communication"
            case customerEmailAddress = "customer_email_address"
            case customerName = "customer_name"
            case customerPurchaseIp = "customer_purchase_ip"
            case customerSignature = "customer_signature"
            case duplicateChargeDocumentation = "duplicate_charge_documentation"
            case duplicateChargeExplanation = "duplicate_charge_explanation"
            case duplicateChargeId = "duplicate_charge_id"
            case productDescription = "product_description"
            case receipt
            case refundPolicy = "refund_policy"
            case refundPolicyDisclosure = "refund_policy_disclosure"
            case refundRefusalExplanation = "refund_refusal_explanation"
            case serviceDate = "service_date"
            case serviceDocumentation = "service_documentation"
            case shippingAddress = "shipping_address"
            case shippingCarrier = "shipping_carrier"
            case shippingDate = "shipping_date"
            case shippingDocumentation = "shipping_documentation"
            case shippingTrackingNumber = "shipping_tracking_number"
            case uncategorizedFile = "uncategorized_file"
            case uncategorizedText = "uncategorized_text"
        }

        public init(
            accessActivityLog: String? = nil,
            billingAddress: String? = nil,
            customerCommunication: String? = nil,
            customerEmailAddress: String? = nil,
            customerName: String? = nil,
            customerPurchaseIp: String? = nil,
            customerSignature: String? = nil,
            duplicateChargeDocumentation: String? = nil,
            duplicateChargeExplanation: String? = nil,
            duplicateChargeId: String? = nil,
            productDescription: String? = nil,
            receipt: String? = nil,
            refundPolicy: String? = nil,
            refundPolicyDisclosure: String? = nil,
            refundRefusalExplanation: String? = nil,
            serviceDate: String? = nil,
            serviceDocumentation: String? = nil,
            shippingAddress: String? = nil,
            shippingCarrier: String? = nil,
            shippingDate: String? = nil,
            shippingDocumentation: String? = nil,
            shippingTrackingNumber: String? = nil,
            uncategorizedFile: String? = nil,
            uncategorizedText: String? = nil
        ) {
            self.accessActivityLog = accessActivityLog
            self.billingAddress = billingAddress
            self.customerCommunication = customerCommunication
            self.customerEmailAddress = customerEmailAddress
            self.customerName = customerName
            self.customerPurchaseIp = customerPurchaseIp
            self.customerSignature = customerSignature
            self.duplicateChargeDocumentation = duplicateChargeDocumentation
            self.duplicateChargeExplanation = duplicateChargeExplanation
            self.duplicateChargeId = duplicateChargeId
            self.productDescription = productDescription
            self.receipt = receipt
            self.refundPolicy = refundPolicy
            self.refundPolicyDisclosure = refundPolicyDisclosure
            self.refundRefusalExplanation = refundRefusalExplanation
            self.serviceDate = serviceDate
            self.serviceDocumentation = serviceDocumentation
            self.shippingAddress = shippingAddress
            self.shippingCarrier = shippingCarrier
            self.shippingDate = shippingDate
            self.shippingDocumentation = shippingDocumentation
            self.shippingTrackingNumber = shippingTrackingNumber
            self.uncategorizedFile = uncategorizedFile
            self.uncategorizedText = uncategorizedText
        }
    }
}

extension Stripe.Disputes.List {
    public struct Request: Codable, Equatable, Sendable {
        public let charge: Stripe.Charges.Charge.ID?
        public let paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public let created: Stripe.DateFilter?
        public let endingBefore: String?
        public let limit: Int?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case charge
            case paymentIntent = "payment_intent"
            case created
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            charge: Stripe.Charges.Charge.ID? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            created: Stripe.DateFilter? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.charge = charge
            self.paymentIntent = paymentIntent
            self.created = created
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Disputes.Dispute]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }

        public init(
            object: String,
            url: String,
            hasMore: Bool,
            data: [Stripe.Disputes.Dispute]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}
