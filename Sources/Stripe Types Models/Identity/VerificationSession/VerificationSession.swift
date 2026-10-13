public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct VerificationSession: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var object: String
    public var clientSecret: String?
    public var created: Date
    public var lastError: VerificationSessionLastError?
    @Expandable<VerificationReport, String> public var lastVerificationReport: String?
    public var livemode: Bool?
    public var metadata: [String: String]?
    public var options: VerificationSessionOptions?
    public var redaction: VerificationSessionRedaction?
    public var status: VerificationSessionStatus?
    public var type: VerificationSessionType?
    public var url: String?
    public var verifiedOutputs: VerificationSessionVerifiedOutputs?

    public init(
        id: ID,
        object: String,
        clientSecret: String? = nil,
        created: Date,
        lastError: VerificationSessionLastError? = nil,
        lastVerificationReport: String? = nil,
        livemode: Bool? = nil,
        metadata: [String: String]? = nil,
        options: VerificationSessionOptions? = nil,
        redaction: VerificationSessionRedaction? = nil,
        status: VerificationSessionStatus? = nil,
        type: VerificationSessionType? = nil,
        url: String? = nil,
        verifiedOutputs: VerificationSessionVerifiedOutputs? = nil
    ) {
        self.id = id
        self.object = object
        self.clientSecret = clientSecret
        self.created = created
        self.lastError = lastError
        self._lastVerificationReport = Expandable(id: lastVerificationReport)
        self.livemode = livemode
        self.metadata = metadata
        self.options = options
        self.redaction = redaction
        self.status = status
        self.type = type
        self.url = url
        self.verifiedOutputs = verifiedOutputs
    }
}

public struct VerificationSessionLastError: Codable, Hashable, Sendable {
    public var code: VerificationSessionLastErrorCode?
    public var reason: String?

    public init(
        code: VerificationSessionLastErrorCode? = nil,
        reason: String? = nil
    ) {
        self.code = code
        self.reason = reason
    }
}

public enum VerificationSessionLastErrorCode: String, Codable, Sendable {
    case consentDeclined = "consent_declined"
    case deviceNotSupported = "device_not_supported"
    case abandoned
    case underSupportedAge = "under_supported_age"
    case countryNotSupported = "country_not_supported"
    case documentExpired = "document_expired"
    case documentUnverifiedOther = "document_unverified_other"
    case documentTypeNotSupported = "document_type_not_supported"
    case selfieDocumentMissingPhoto = "selfie_document_missing_photo"
    case selfieFaceMismatch = "selfie_face_mismatch"
    case selfieUnverifiedOther = "selfie_unverified_other"
    case selfieManipulated = "selfie_manipulated"
    case idNumberUnverifiedOther = "id_number_unverified_other"
    case idNumberInsufficientDocumentData = "id_number_insufficient_document_data"
    case idNumberMismatch = "id_number_mismatch"
}

public struct VerificationSessionOptions: Codable, Hashable, Sendable {
    public var document: VerificationSessionOptionsDocument?
    public var idNumber: VerificationSessionOptionsIdNumber?

    public init(
        document: VerificationSessionOptionsDocument? = nil,
        idNumber: VerificationSessionOptionsIdNumber? = nil
    ) {
        self.document = document
        self.idNumber = idNumber
    }
}

public struct VerificationSessionOptionsDocument: Codable, Hashable, Sendable {
    public var allowedTypes: [VerificationSessionOptionsDocumentAllowedType]?
    public var requireIdNumber: Bool?
    public var requireLiveCapture: Bool?
    public var requireMatchingSelfie: Bool

    public init(
        allowedTypes: [VerificationSessionOptionsDocumentAllowedType]? = nil,
        requireIdNumber: Bool? = nil,
        requireLiveCapture: Bool? = nil,
        requireMatchingSelfie: Bool
    ) {
        self.allowedTypes = allowedTypes
        self.requireIdNumber = requireIdNumber
        self.requireLiveCapture = requireLiveCapture
        self.requireMatchingSelfie = requireMatchingSelfie
    }
}

public enum VerificationSessionOptionsDocumentAllowedType: String, Codable, Sendable {
    case drivingLicense = "driving_license"
    case passport
    case idCard = "id_card"
}

public struct VerificationSessionOptionsIdNumber: Codable, Hashable, Sendable {
    public init() {}
}

public struct VerificationSessionRedaction: Codable, Hashable, Sendable {
    public var status: VerificationSessionRedactionStatus?

    public init(
        status: VerificationSessionRedactionStatus? = nil
    ) {
        self.status = status
    }
}

public enum VerificationSessionRedactionStatus: String, Codable, Sendable {
    case redacted
    case processing
}

public enum VerificationSessionStatus: String, Codable, Sendable {
    case requiresInput = "requires_input"
    case processing
    case verified
    case canceled
}

public enum VerificationSessionType: String, Codable, Sendable {
    case document
    case idNumber = "id_number"
}

public struct VerificationSessionVerifiedOutputs: Codable, Hashable, Sendable {
    public var address: Address?
    public var dob: Stripe.Connect.Person.DOB?
    public var firstName: String?
    public var idNumber: String?
    public var idNumberType: VerificationSessionVerifiedOutputsIdNumberType?
    public var lastName: String?

    public init(
        address: Address? = nil,
        dob: Stripe.Connect.Person.DOB? = nil,
        firstName: String? = nil,
        idNumber: String? = nil,
        idNumberType: VerificationSessionVerifiedOutputsIdNumberType? = nil,
        lastName: String? = nil
    ) {
        self.address = address
        self.dob = dob
        self.firstName = firstName
        self.idNumber = idNumber
        self.idNumberType = idNumberType
        self.lastName = lastName
    }
}

public enum VerificationSessionVerifiedOutputsIdNumberType: String, Codable, Sendable {
    case brCpf = "br_cpf"
    case sgNric = "sg_nric"
    case usSsn = "us_ssn"
}

public struct VerificationSessionList: Codable, Hashable, Sendable {
    public var object: String
    public var data: [VerificationSession]?
    public var hasMore: Bool?
    public var url: String?

    public init(
        object: String,
        data: [VerificationSession]? = nil,
        hasMore: Bool? = nil,
        url: String? = nil
    ) {
        self.object = object
        self.data = data
        self.hasMore = hasMore
        self.url = url
    }
}
