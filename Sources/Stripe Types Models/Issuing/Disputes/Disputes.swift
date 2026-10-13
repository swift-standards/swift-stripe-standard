public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct IssuingDispute: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var amount: Int?
    public var balanceTransactions: [Stripe.Balance.Transaction]?
    public var currency: Stripe.Currency?
    public var evidence: IssuingDisputeEvidence?
    public var metadata: [String: String]?
    public var status: IssuingDisputeStatus?
    @Expandable<Transaction, String> public var transaction: String?
    public var object: String
    public var created: Date
    public var livemode: Bool?

    public init(
        id: ID,
        amount: Int? = nil,
        balanceTransactions: [Stripe.Balance.Transaction]? = nil,
        currency: Stripe.Currency? = nil,
        evidence: IssuingDisputeEvidence? = nil,
        metadata: [String: String]? = nil,
        status: IssuingDisputeStatus? = nil,
        transaction: String? = nil,
        object: String,
        created: Date,
        livemode: Bool? = nil
    ) {
        self.id = id
        self.amount = amount
        self.balanceTransactions = balanceTransactions
        self.currency = currency
        self.evidence = evidence
        self.metadata = metadata
        self.status = status
        self._transaction = Expandable(id: transaction)
        self.object = object
        self.created = created
        self.livemode = livemode
    }
}

public struct IssuingDisputeList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [IssuingDispute]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [IssuingDispute]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}

public struct IssuingDisputeEvidence: Codable, Hashable, Sendable {
    public var canceled: IssuingDisputeEvidenceCanceled?
    public var duplicate: IssuingDisputeEvidenceDuplicate?
    public var fraudulent: IssuingDisputeEvidenceFraudulent?
    public var merchandiseNotAsDescribed: IssuingDisputeEvidenceMerchandiseNotAsDescribed?
    public var notReceived: IssuingDisputeEvidenceNotReceived?
    public var other: IssuingDisputeEvidenceOther?
    public var reason: IssuingDisputeEvidenceReason?
    public var serviceNotAsDescribed: IssuingDisputeEvidenceServiceNotAsDescribed?
}

public struct IssuingDisputeEvidenceCanceled: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Files.File> public var additionalDocumentation: Stripe.Files.File.ID?
    public var canceledAt: Date?
    public var cancellationPolicyProvided: Bool?
    public var cancellationReason: String?
    public var expectedAt: Date?
    public var explanation: String?
    public var productDescription: String?
    public var productType: IssuingDisputeEvidenceCanceledProductType?
    public var returnStatus: IssuingDisputeEvidenceCanceledReturnStatus?
    public var returnedAt: Date?

    public init(
        additionalDocumentation: Stripe.Files.File.ID? = nil,
        canceledAt: Date? = nil,
        cancellationPolicyProvided: Bool? = nil,
        cancellationReason: String? = nil,
        expectedAt: Date? = nil,
        explanation: String? = nil,
        productDescription: String? = nil,
        productType: IssuingDisputeEvidenceCanceledProductType? = nil,
        returnStatus: IssuingDisputeEvidenceCanceledReturnStatus? = nil,
        returnedAt: Date? = nil
    ) {
        self._additionalDocumentation = Expandable(id: additionalDocumentation)
        self.canceledAt = canceledAt
        self.cancellationPolicyProvided = cancellationPolicyProvided
        self.cancellationReason = cancellationReason
        self.expectedAt = expectedAt
        self.explanation = explanation
        self.productDescription = productDescription
        self.productType = productType
        self.returnStatus = returnStatus
        self.returnedAt = returnedAt
    }
}

public enum IssuingDisputeEvidenceCanceledProductType: String, Codable, Sendable {
    case merchandise
    case service
}

public enum IssuingDisputeEvidenceCanceledReturnStatus: String, Codable, Sendable {
    case successful
    case merchantRejected = "merchant_rejected"
}

public struct IssuingDisputeEvidenceDuplicate: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Files.File> public var additionalDocumentation: Stripe.Files.File.ID?
    @ExpandableOf<Stripe.Files.File> public var cardStatement: Stripe.Files.File.ID?
    @ExpandableOf<Stripe.Files.File> public var cashReceipt: Stripe.Files.File.ID?
    @ExpandableOf<Stripe.Files.File> public var checkImage: Stripe.Files.File.ID?
    public var explanation: String?
    public var originalTransaction: String?

    public init(
        additionalDocumentation: Stripe.Files.File.ID? = nil,
        cardStatement: Stripe.Files.File.ID? = nil,
        cashReceipt: Stripe.Files.File.ID? = nil,
        checkImage: Stripe.Files.File.ID? = nil,
        explanation: String? = nil,
        originalTransaction: String? = nil
    ) {
        self._additionalDocumentation = Expandable(id: additionalDocumentation)
        self._cardStatement = Expandable(id: cardStatement)
        self._cashReceipt = Expandable(id: cashReceipt)
        self._checkImage = Expandable(id: checkImage)
        self.explanation = explanation
        self.originalTransaction = originalTransaction
    }
}

public struct IssuingDisputeEvidenceFraudulent: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Files.File> public var additionalDocumentation: Stripe.Files.File.ID?
    public var explanation: String?

    public init(
        additionalDocumentation: Stripe.Files.File.ID? = nil,
        explanation: String? = nil
    ) {
        self._additionalDocumentation = Expandable(id: additionalDocumentation)
        self.explanation = explanation
    }
}

public struct IssuingDisputeEvidenceMerchandiseNotAsDescribed: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Files.File> public var additionalDocumentation: Stripe.Files.File.ID?
    public var explanation: String?
    public var receivedAt: Date?
    public var returnDescription: String?
    public var returnStatus: IssuingDisputeEvidenceMerchandiseNotAsDescribedReturnStatus?
    public var returnedAt: Date?

    public init(
        additionalDocumentation: Stripe.Files.File.ID? = nil,
        explanation: String? = nil,
        receivedAt: Date? = nil,
        returnDescription: String? = nil,
        returnStatus: IssuingDisputeEvidenceMerchandiseNotAsDescribedReturnStatus? = nil,
        returnedAt: Date? = nil
    ) {
        self._additionalDocumentation = Expandable(id: additionalDocumentation)
        self.explanation = explanation
        self.receivedAt = receivedAt
        self.returnDescription = returnDescription
        self.returnStatus = returnStatus
        self.returnedAt = returnedAt
    }
}

public enum IssuingDisputeEvidenceMerchandiseNotAsDescribedReturnStatus: String, Codable, Sendable {
    case successful
    case merchantRejected = "merchant_rejected"
}

public struct IssuingDisputeEvidenceNotReceived: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Files.File> public var additionalDocumentation: Stripe.Files.File.ID?
    public var expectedAt: Date?
    public var explanation: String?
    public var productDescription: String?
    public var productType: IssuingDisputeEvidenceNotReceivedProductType?

    public init(
        additionalDocumentation: Stripe.Files.File.ID? = nil,
        expectedAt: Date? = nil,
        explanation: String? = nil,
        productDescription: String? = nil,
        productType: IssuingDisputeEvidenceNotReceivedProductType? = nil
    ) {
        self._additionalDocumentation = Expandable(id: additionalDocumentation)
        self.expectedAt = expectedAt
        self.explanation = explanation
        self.productDescription = productDescription
        self.productType = productType
    }
}

public enum IssuingDisputeEvidenceNotReceivedProductType: String, Codable, Sendable {
    case merchandise
    case service
}

public struct IssuingDisputeEvidenceOther: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Files.File> public var additionalDocumentation: Stripe.Files.File.ID?
    public var explanation: String?
    public var productDescription: String?
    public var productType: IssuingDisputeEvidenceOtherProductType?

    public init(
        additionalDocumentation: Stripe.Files.File.ID? = nil,
        explanation: String? = nil,
        productDescription: String? = nil,
        productType: IssuingDisputeEvidenceOtherProductType? = nil
    ) {
        self._additionalDocumentation = Expandable(id: additionalDocumentation)
        self.explanation = explanation
        self.productDescription = productDescription
        self.productType = productType
    }
}

public enum IssuingDisputeEvidenceOtherProductType: String, Codable, Sendable {
    case merchandise
    case service
}

public enum IssuingDisputeEvidenceReason: String, Codable, Sendable {
    case notReceived = "not_received"
    case fraudulent
    case duplicate
    case other
    case merchandiseNotAsDescribed = "merchandise_not_as_described"
    case serviceNotAsDescribed = "service_not_as_described"
    case canceled
}

public struct IssuingDisputeEvidenceServiceNotAsDescribed: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Files.File> public var additionalDocumentation: Stripe.Files.File.ID?
    public var canceledAt: Date?
    public var cancellationReason: String?
    public var explanation: String?
    public var receivedAt: Date?

    public init(
        additionalDocumentation: Stripe.Files.File.ID? = nil,
        canceledAt: Date? = nil,
        cancellationReason: String? = nil,
        explanation: String? = nil,
        receivedAt: Date? = nil
    ) {
        self._additionalDocumentation = Expandable(id: additionalDocumentation)
        self.canceledAt = canceledAt
        self.cancellationReason = cancellationReason
        self.explanation = explanation
        self.receivedAt = receivedAt
    }
}

public enum IssuingDisputeStatus: String, Codable, Sendable {
    case won
    case lost
    case submitted
    case unsubmitted
    case expired
}
