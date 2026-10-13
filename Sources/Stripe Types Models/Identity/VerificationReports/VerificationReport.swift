public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct VerificationReport: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var object: String
    public var created: Date
    public var document: VerificationReportDocument?
    public var idNumber: VerificationReportIdNumber?
    public var livemode: Bool
    public var options: VerificationReportOptions?
    public var selfie: VerificationReportSelfie?
    public var type: VerificationReportType?
    public var verificationSession: String?

    public init(
        id: ID,
        object: String,
        created: Date,
        document: VerificationReportDocument? = nil,
        idNumber: VerificationReportIdNumber? = nil,
        livemode: Bool,
        options: VerificationReportOptions? = nil,
        selfie: VerificationReportSelfie? = nil,
        type: VerificationReportType? = nil,
        verificationSession: String? = nil
    ) {
        self.id = id
        self.object = object
        self.created = created
        self.document = document
        self.idNumber = idNumber
        self.livemode = livemode
        self.options = options
        self.selfie = selfie
        self.type = type
        self.verificationSession = verificationSession
    }
}

public struct VerificationReportDocument: Codable, Hashable, Sendable {
    public var address: Address?
    public var dob: Stripe.Connect.Person.DOB?
    public var error: VerificationReportDocumentError?
    public var expirationDate: Stripe.Connect.Person.DOB?
    public var files: [String]?
    public var firstName: String?
    public var issuedDate: Stripe.Connect.Person.DOB?
    public var issuingCountry: String?
    public var lastName: String?
    public var number: String?
    public var status: VerificationReportDocumentStatus?
    public var type: VerificationReportDocumentType?

    public init(
        address: Address? = nil,
        dob: Stripe.Connect.Person.DOB? = nil,
        error: VerificationReportDocumentError? = nil,
        expirationDate: Stripe.Connect.Person.DOB? = nil,
        files: [String]? = nil,
        firstName: String? = nil,
        issuedDate: Stripe.Connect.Person.DOB? = nil,
        issuingCountry: String? = nil,
        lastName: String? = nil,
        number: String? = nil,
        status: VerificationReportDocumentStatus? = nil,
        type: VerificationReportDocumentType? = nil
    ) {
        self.address = address
        self.dob = dob
        self.error = error
        self.expirationDate = expirationDate
        self.files = files
        self.firstName = firstName
        self.issuedDate = issuedDate
        self.issuingCountry = issuingCountry
        self.lastName = lastName
        self.number = number
        self.status = status
        self.type = type
    }
}

public struct VerificationReportDocumentError: Codable, Hashable, Sendable {
    public var code: VerificationReportDocumentErrorCode?
    public var reason: String?

    public init(
        code: VerificationReportDocumentErrorCode? = nil,
        reason: String? = nil
    ) {
        self.code = code
        self.reason = reason
    }
}

public enum VerificationReportDocumentErrorCode: String, Codable, Sendable {
    case documentExpired = "document_expired"
    case documentUnverifiedOther = "document_unverified_other"
    case documentTypeNotSupported = "document_type_not_supported"
}

public enum VerificationReportDocumentStatus: String, Codable, Sendable {
    case verified
    case unverified
}

public enum VerificationReportDocumentType: String, Codable, Sendable {
    case drivingLicense = "driving_license"
    case passport
    case idCard = "id_card"
}

public struct VerificationReportIdNumber: Codable, Hashable, Sendable {
    public var dob: Stripe.Connect.Person.DOB?
    public var error: VerificationReportIdNumberError?
    public var firstName: String?
    public var idNumber: String?
    public var idNumberType: VerificationReportIdNumberType?
    public var lastName: String?
    public var status: VerificationReportIdNumberStatus?

    public init(
        dob: Stripe.Connect.Person.DOB? = nil,
        error: VerificationReportIdNumberError? = nil,
        firstName: String? = nil,
        idNumber: String? = nil,
        idNumberType: VerificationReportIdNumberType? = nil,
        lastName: String? = nil,
        status: VerificationReportIdNumberStatus? = nil
    ) {
        self.dob = dob
        self.error = error
        self.firstName = firstName
        self.idNumber = idNumber
        self.idNumberType = idNumberType
        self.lastName = lastName
        self.status = status
    }
}

public struct VerificationReportIdNumberError: Codable, Hashable, Sendable {
    public var code: VerificationReportIdNumberErrorReason?
    public var reason: String?

    public init(
        code: VerificationReportIdNumberErrorReason? = nil,
        reason: String? = nil
    ) {
        self.code = code
        self.reason = reason
    }
}

public enum VerificationReportIdNumberErrorReason: String, Codable, Sendable {
    case idNumberUnverifiedOther = "id_number_unverified_other"
    case idNumberInsufficientDocumentData = "id_number_insufficient_document_data"
    case idNumberMismatch = "id_number_mismatch"
}

public enum VerificationReportIdNumberType: String, Codable, Sendable {
    case brCpf = "br_cpf"
    case sgNric = "sg_nric"
    case usSsn = "us_ssn"
}

public enum VerificationReportIdNumberStatus: String, Codable, Sendable {
    case verified
    case unverified
}

public struct VerificationReportOptions: Codable, Hashable, Sendable {
    public var document: VerificationReportOptionsDocument?
    public var idNumber: VerificationReportOptionsIdNumber?

    public init(
        document: VerificationReportOptionsDocument? = nil,
        idNumber: VerificationReportOptionsIdNumber? = nil
    ) {
        self.document = document
        self.idNumber = idNumber
    }
}

public struct VerificationReportOptionsDocument: Codable, Hashable, Sendable {
    public var allowedTypes: [VerificationReportOptionsDocumentAllowedType]?
    public var requireIdNumber: Bool?
    public var requireLiveCapture: Bool?
    public var requireMatchingSelfie: Bool

    public init(
        allowedTypes: [VerificationReportOptionsDocumentAllowedType]? = nil,
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

public enum VerificationReportOptionsDocumentAllowedType: String, Codable, Sendable {
    case drivingLicense = "driving_license"
    case passport
    case idCard = "id_card"
}

public struct VerificationReportOptionsIdNumber: Codable, Hashable, Sendable {
    public init() {}
}

public struct VerificationReportSelfie: Codable, Hashable, Sendable {
    public var document: String?
    public var error: VerificationReportSelfieError?
    public var selfie: String?
    public var status: VerificationReportSelfieStatus?

    public init(
        document: String? = nil,
        error: VerificationReportSelfieError? = nil,
        selfie: String? = nil,
        status: VerificationReportSelfieStatus? = nil
    ) {
        self.document = document
        self.error = error
        self.selfie = selfie
        self.status = status
    }
}

public struct VerificationReportSelfieError: Codable, Hashable, Sendable {
    public var code: VerificationReportSelfieErrorCode?
    public var reason: String?

    public init(
        code: VerificationReportSelfieErrorCode? = nil,
        reason: String? = nil
    ) {
        self.code = code
        self.reason = reason
    }
}

public enum VerificationReportSelfieErrorCode: String, Codable, Sendable {
    case selfieDocumentMissingPhoto = "selfie_document_missing_photo"
    case selfieFaceMismatch = "selfie_face_mismatch"
    case selfieUnverifiedOther = "selfie_unverified_other"
    case selfieManipulated = "selfie_manipulated"
}

public enum VerificationReportSelfieStatus: String, Codable, Sendable {
    case verified
    case unverified
}

public enum VerificationReportType: String, Codable, Sendable {
    case document
    case idNumber = "id_number"
}

public struct VerificationReportList: Codable, Hashable, Sendable {
    public var object: String
    public var data: [VerificationReport]?
    public var hasMore: Bool?
    public var url: String?

    public init(
        object: String,
        data: [VerificationReport]? = nil,
        hasMore: Bool? = nil,
        url: String? = nil
    ) {
        self.object = object
        self.data = data
        self.hasMore = hasMore
        self.url = url
    }
}
