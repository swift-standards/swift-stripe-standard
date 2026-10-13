public import Stripe_Types_Shared
public import Tagged

extension Stripe.Disputes.Dispute {
    public struct Evidence: Codable, Hashable, Sendable {
        public var accessActivityLog: String?
        public var billingAddress: String?
        @ExpandableOf<Stripe.Files.File> public var cancellationPolicy: Stripe.Files.File.ID?
        public var cancellationPolicyDisclosure: String?
        public var cancellationRebuttal: String?
        @ExpandableOf<Stripe.Files.File> public var customerCommunication: Stripe.Files.File.ID?
        public var customerEmailAddress: String?
        public var customerName: String?
        public var customerPurchaseIp: String?
        @ExpandableOf<Stripe.Files.File> public var customerSignature: Stripe.Files.File.ID?
        @ExpandableOf<Stripe.Files.File> public var duplicateChargeDocumentation: Stripe.Files.File.ID?
        public var duplicateChargeExplanation: String?
        public var duplicateChargeId: String?
        public var productDescription: String?
        @ExpandableOf<Stripe.Files.File> public var receipt: Stripe.Files.File.ID?
        @ExpandableOf<Stripe.Files.File> public var refundPolicy: Stripe.Files.File.ID?
        public var refundPolicyDisclosure: String?
        public var refundRefusalExplanation: String?
        public var serviceDate: String?
        @ExpandableOf<Stripe.Files.File> public var serviceDocumentation: Stripe.Files.File.ID?
        public var shippingAddress: String?
        public var shippingCarrier: String?
        public var shippingDate: String?
        @ExpandableOf<Stripe.Files.File> public var shippingDocumentation: Stripe.Files.File.ID?
        public var shippingTrackingNumber: String?
        @ExpandableOf<Stripe.Files.File> public var uncategorizedFile: Stripe.Files.File.ID?
        public var uncategorizedText: String?

        public init(
            accessActivityLog: String? = nil,
            billingAddress: String? = nil,
            cancellationPolicy: Stripe.Files.File.ID? = nil,
            cancellationPolicyDisclosure: String? = nil,
            cancellationRebuttal: String? = nil,
            customerCommunication: Stripe.Files.File.ID? = nil,
            customerEmailAddress: String? = nil,
            customerName: String? = nil,
            customerPurchaseIp: String? = nil,
            customerSignature: Stripe.Files.File.ID? = nil,
            duplicateChargeDocumentation: Stripe.Files.File.ID? = nil,
            duplicateChargeExplanation: String? = nil,
            duplicateChargeId: String? = nil,
            productDescription: String? = nil,
            receipt: Stripe.Files.File.ID? = nil,
            refundPolicy: Stripe.Files.File.ID? = nil,
            refundPolicyDisclosure: String? = nil,
            refundRefusalExplanation: String? = nil,
            serviceDate: String? = nil,
            serviceDocumentation: Stripe.Files.File.ID? = nil,
            shippingAddress: String? = nil,
            shippingCarrier: String? = nil,
            shippingDate: String? = nil,
            shippingDocumentation: Stripe.Files.File.ID? = nil,
            shippingTrackingNumber: String? = nil,
            uncategorizedFile: Stripe.Files.File.ID? = nil,
            uncategorizedText: String? = nil
        ) {
            self.accessActivityLog = accessActivityLog
            self.billingAddress = billingAddress
            self._cancellationPolicy = Expandable(id: cancellationPolicy)
            self.cancellationPolicyDisclosure = cancellationPolicyDisclosure
            self.cancellationRebuttal = cancellationRebuttal
            self._customerCommunication = Expandable(id: customerCommunication)
            self.customerEmailAddress = customerEmailAddress
            self.customerName = customerName
            self.customerPurchaseIp = customerPurchaseIp
            self._customerSignature = Expandable(id: customerSignature)
            self._duplicateChargeDocumentation = Expandable(id: duplicateChargeDocumentation)
            self.duplicateChargeExplanation = duplicateChargeExplanation
            self.duplicateChargeId = duplicateChargeId
            self.productDescription = productDescription
            self._receipt = Expandable(id: receipt)
            self._refundPolicy = Expandable(id: refundPolicy)
            self.refundPolicyDisclosure = refundPolicyDisclosure
            self.refundRefusalExplanation = refundRefusalExplanation
            self.serviceDate = serviceDate
            self._serviceDocumentation = Expandable(id: serviceDocumentation)
            self.shippingAddress = shippingAddress
            self.shippingCarrier = shippingCarrier
            self.shippingDate = shippingDate
            self._shippingDocumentation = Expandable(id: shippingDocumentation)
            self.shippingTrackingNumber = shippingTrackingNumber
            self._uncategorizedFile = Expandable(id: uncategorizedFile)
            self.uncategorizedText = uncategorizedText
        }
    }
}
