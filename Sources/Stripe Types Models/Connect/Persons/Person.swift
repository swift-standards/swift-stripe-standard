public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Connect {
    public struct Person: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var account: String?
        public var address: Address?
        public var dob: Stripe.Connect.Person.DOB?
        public var email: String?
        public var firstName: String?
        public var lastName: String?
        public var metadata: [String: String]?
        public var phone: String?
        public var relationship: Stripe.Connect.Person.Relationship?
        public var requirements: Stripe.Connect.Person.Requirements?
        public var object: String
        public var addressKana: AddressKana?
        public var addressKanji: AddressKanji?
        public var created: Date
        public var firstNameKana: String?
        public var firstNameKanji: String?
        public var futureRequirements: Stripe.Connect.Person.FutureRequirements?
        public var gender: Stripe.Connect.Person.Gender?
        public var idNumberProvided: Bool?
        public var idNumberSecondaryProvided: Bool?
        public var lastNameKana: String?
        public var lastNameKanji: String?
        public var maidenName: String?
        public var nationality: String?
        public var politicalExposure: Stripe.Connect.Person.PoliticalExposure?
        public var registeredAddres: Address?
        public var ssnLast4Provided: Bool?
        public var verification: Stripe.Connect.Person.Verification?

        public init(
            id: ID,
            account: String? = nil,
            address: Address? = nil,
            dob: Stripe.Connect.Person.DOB? = nil,
            email: String? = nil,
            firstName: String? = nil,
            lastName: String? = nil,
            metadata: [String: String]? = nil,
            phone: String? = nil,
            relationship: Stripe.Connect.Person.Relationship? = nil,
            requirements: Stripe.Connect.Person.Requirements? = nil,
            object: String,
            addressKana: AddressKana? = nil,
            addressKanji: AddressKanji? = nil,
            created: Date,
            firstNameKana: String? = nil,
            firstNameKanji: String? = nil,
            futureRequirements: Stripe.Connect.Person.FutureRequirements? = nil,
            gender: Stripe.Connect.Person.Gender? = nil,
            idNumberProvided: Bool? = nil,
            idNumberSecondaryProvided: Bool? = nil,
            lastNameKana: String? = nil,
            lastNameKanji: String? = nil,
            maidenName: String? = nil,
            nationality: String? = nil,
            politicalExposure: Stripe.Connect.Person.PoliticalExposure? = nil,
            registeredAddres: Address? = nil,
            ssnLast4Provided: Bool? = nil,
            verification: Stripe.Connect.Person.Verification? = nil
        ) {
            self.id = id
            self.account = account
            self.address = address
            self.dob = dob
            self.email = email
            self.firstName = firstName
            self.lastName = lastName
            self.metadata = metadata
            self.phone = phone
            self.relationship = relationship
            self.requirements = requirements
            self.object = object
            self.addressKana = addressKana
            self.addressKanji = addressKanji
            self.created = created
            self.firstNameKana = firstNameKana
            self.firstNameKanji = firstNameKanji
            self.futureRequirements = futureRequirements
            self.gender = gender
            self.idNumberProvided = idNumberProvided
            self.idNumberSecondaryProvided = idNumberSecondaryProvided
            self.lastNameKana = lastNameKana
            self.lastNameKanji = lastNameKanji
            self.maidenName = maidenName
            self.nationality = nationality
            self.politicalExposure = politicalExposure
            self.registeredAddres = registeredAddres
            self.ssnLast4Provided = ssnLast4Provided
            self.verification = verification
        }
    }
}

extension Stripe.Connect.Person {
    public struct DOB: Codable, Hashable, Sendable {
        public var day: Int?
        public var month: Int?
        public var year: Int?

        public init(
            day: Int? = nil,
            month: Int? = nil,
            year: Int? = nil
        ) {
            self.day = day
            self.month = month
            self.year = year
        }
    }
}

extension Stripe.Connect.Person {
    public enum Gender: String, Codable, Sendable {
        case male
        case female
    }
}

extension Stripe.Connect.Person {
    public enum PoliticalExposure: String, Codable, Sendable {
        case none
        case existing
    }
}

extension Stripe.Connect.Person {
    public struct Relationship: Codable, Hashable, Sendable {
        public var director: Bool?
        public var executive: Bool?
        public var owner: Bool?
        public var percentOwnership: Decimal?
        public var representative: Bool?
        public var title: String?

        public init(
            director: Bool? = nil,
            executive: Bool? = nil,
            owner: Bool? = nil,
            percentOwnership: Decimal? = nil,
            representative: Bool? = nil,
            title: String? = nil
        ) {
            self.director = director
            self.executive = executive
            self.owner = owner
            self.percentOwnership = percentOwnership
            self.representative = representative
            self.title = title
        }
    }
}

extension Stripe.Connect.Person {
    public struct Requirements: Codable, Hashable, Sendable {
        public var alternatives: [Stripe.Connect.Person.Requirements.Alternative]?
        public var currentlyDue: [String]?
        public var errors: [Stripe.Connect.Person.Requirements.Error]?
        public var eventuallyDue: [String]?
        public var pastDue: [String]?
        public var pendingVerification: [String]?

        public init(
            alternatives: [Stripe.Connect.Person.Requirements.Alternative]? = nil,
            currentlyDue: [String]? = nil,
            errors: [Stripe.Connect.Person.Requirements.Error]? = nil,
            eventuallyDue: [String]? = nil,
            pastDue: [String]? = nil,
            pendingVerification: [String]? = nil
        ) {
            self.alternatives = alternatives
            self.currentlyDue = currentlyDue
            self.errors = errors
            self.eventuallyDue = eventuallyDue
            self.pastDue = pastDue
            self.pendingVerification = pendingVerification
        }
    }
}

extension Stripe.Connect.Person.Requirements {
    public struct Alternative: Codable, Hashable, Sendable {
        public var alternativeFieldsDue: [String]?
        public var originalFieldsDue: [String]?

        public init(
            alternativeFieldsDue: [String]? = nil,
            originalFieldsDue: [String]? = nil
        ) {
            self.alternativeFieldsDue = alternativeFieldsDue
            self.originalFieldsDue = originalFieldsDue
        }
    }
}

extension Stripe.Connect.Person.Requirements {
    public struct Error: Codable, Hashable, Sendable {
        public var code: Stripe.Connect.Person.Requirements.ErrorCode?

        public init(
            code: Stripe.Connect.Person.Requirements.ErrorCode? = nil
        ) {
            self.code = code
        }
    }
}

extension Stripe.Connect.Person.Requirements {
    public enum ErrorCode: String, Codable, Sendable {
        case invalidAddressCityStatePostalCode = "invalid_address_city_state_postal_code"
        case invalidStreetAddress = "invalid_street_address"
        case invalidTosAcceptance = "invalid_tos_acceptance"
        case invalidValueOther = "invalid_value_other"
        case invalidRepresentativeCountry = "invalid_representative_country"
        case verificationDocumentAddressMismatch = "verification_document_address_mismatch"
        case verificationDocumentAddressMissing = "verification_document_address_missing"
        case verificationDocumentCorrupt = "verification_document_corrupt"
        case verificationDocumentCountryNotSupported = "verification_document_country_not_supported"
        case verificationDocumentDobMismatch = "verification_document_dob_mismatch"
        case verificationDocumentDuplicateType = "verification_document_duplicate_type"
        case verificationDocumentExpired = "verification_document_expired"
        case verificationDocumentFailedCopy = "verification_document_failed_copy"
        case verificationDocumentFailedGreyscale = "verification_document_failed_greyscale"
        case verificationDocumentFailedOther = "verification_document_failed_other"
        case verificationDocumentFailedTestMode = "verification_document_failed_test_mode"
        case verificationDocumentFraudulent = "verification_document_fraudulent"
        case verificationDocumentIdNumberMismatch = "verification_document_id_number_mismatch"
        case verificationDocumentIdNumberMissing = "verification_document_id_number_missing"
        case verificationDocumentIncomplete = "verification_document_incomplete"
        case verificationDocumentInvalid = "verification_document_invalid"
        case verificationDocumentIssueOrExpiryDateMissing =
            "verification_document_issue_or_expiry_date_missing"
        case verificationDocumentManipulated = "verification_document_manipulated"
        case verificationDocumentMissingBack = "verification_document_missing_back"
        case verificationDocumentMissingFront = "verification_document_missing_front"
        case verificationDocumentNameMismatch = "verification_document_name_mismatch"
        case verificationDocumentNameMissing = "verification_document_name_missing"
        case verificationDocumentNationalityMismatch = "verification_document_nationality_mismatch"
        case verificationDocumentNotReadable = "verification_document_not_readable"
        case verificationDocumentNotSigned = "verification_document_not_signed"
        case verificationDocumentNotUploaded = "verification_document_not_uploaded"
        case verificationDocumentPhotoMismatch = "verification_document_photo_mismatch"
        case verificationDocumentTooLarge = "verification_document_too_large"
        case verificationDocumentTypeNotSupported = "verification_document_type_not_supported"
        case verificationFailedAddressMatch = "verification_failed_address_match"
        case verificationFailedBusinessIecNumber = "verification_failed_business_iec_number"
        case verificationFailedDocumentMatch = "verification_failed_document_match"
        case verificationFailedIdNumberMatch = "verification_failed_id_number_match"
        case verificationFailedKeyedIdentity = "verification_failed_keyed_identity"
        case verificationFailedKeyedMatch = "verification_failed_keyed_match"
        case verificationFailedNameMatch = "verification_failed_name_match"
        case verificationFailedResidentialAddress = "verification_failed_residential_address"
        case verificationFailedTaxIdMatch = "verification_failed_tax_id_match"
        case verificationFailedTaxIdNotIssued = "verification_failed_tax_id_not_issued"
        case verificationFailedOther = "verification_failed_other"
        case verificationMissingOwners = "verification_missing_owners"
        case verificationMissingExecutives = "verification_missing_executives"
        case verificationRequiresAdditionalMemorandumOfAssociations =
            "verification_requires_additional_memorandum_of_associations"
        case invalidDobAgeUnder18 = "invalid_dob_age_under_18"
    }
}

extension Stripe.Connect.Person {
    public struct FutureRequirements: Codable, Hashable, Sendable {
        public var alternatives: [Stripe.Connect.Person.Requirements.Alternative]?
        public var currentlyDue: [String]?
        public var errors: [Stripe.Connect.Person.Requirements.Error]?
        public var eventuallyDue: [String]?
        public var pastDue: [String]?
        public var pendingVerification: [String]?

        public init(
            alternatives: [Stripe.Connect.Person.Requirements.Alternative]? = nil,
            currentlyDue: [String]? = nil,
            errors: [Stripe.Connect.Person.Requirements.Error]? = nil,
            eventuallyDue: [String]? = nil,
            pastDue: [String]? = nil,
            pendingVerification: [String]? = nil
        ) {
            self.alternatives = alternatives
            self.currentlyDue = currentlyDue
            self.errors = errors
            self.eventuallyDue = eventuallyDue
            self.pastDue = pastDue
            self.pendingVerification = pendingVerification
        }
    }
}

extension Stripe.Connect.Person {
    public struct Verification: Codable, Hashable, Sendable {
        public var additionalDocument: Stripe.Connect.Person.Verification.Document?
        public var details: String?
        public var detailsCode: Stripe.Connect.Person.Verification.DetailsCode?
        public var document: Stripe.Connect.Person.Verification.Document?
        public var status: Stripe.Connect.Person.Verification.Status?

        public init(
            additionalDocument: Stripe.Connect.Person.Verification.Document? = nil,
            details: String? = nil,
            detailsCode: Stripe.Connect.Person.Verification.DetailsCode? = nil,
            document: Stripe.Connect.Person.Verification.Document? = nil,
            status: Stripe.Connect.Person.Verification.Status? = nil
        ) {
            self.additionalDocument = additionalDocument
            self.details = details
            self.detailsCode = detailsCode
            self.document = document
            self.status = status
        }
    }
}

extension Stripe.Connect.Person.Verification {
    public enum DetailsCode: String, Codable, Sendable {
        case documentAddressMismatch = "document_address_mismatch"
        case documentDobMismatch = "document_dob_mismatch"
        case documentDuplicateType = "document_duplicate_type"
        case documentIdNumberMismatch = "document_id_number_mismatch"
        case documentNameMismatch = "document_name_mismatch"
        case documentNationalityMismatch = "document_nationality_mismatch"
        case failedKeyedIdentity = "failed_keyed_identity"
        case failedOther = "failed_other"
    }
}

extension Stripe.Connect.Person.Verification {
    public struct Document: Codable, Hashable, Sendable {
        @ExpandableOf<Stripe.Files.File> public var back: Stripe.Files.File.ID?
        public var details: String?
        public var detailsCode: Stripe.Connect.Person.Verification.Document.DetailsCode?
        @ExpandableOf<Stripe.Files.File> public var front: Stripe.Files.File.ID?

        public init(
            back: Stripe.Files.File.ID? = nil,
            details: String? = nil,
            detailsCode: Stripe.Connect.Person.Verification.Document.DetailsCode? = nil,
            front: Stripe.Files.File.ID? = nil
        ) {
            self._back = Expandable(id: back)
            self.details = details
            self.detailsCode = detailsCode
            self._front = Expandable(id: front)
        }
    }
}

extension Stripe.Connect.Person.Verification.Document {
    public enum DetailsCode: String, Codable, Sendable {
        case documentCorrupt = "document_corrupt"
        case documentCountryNotSupported = "document_country_not_supported"
        case documentExpired = "document_expired"
        case documentFailedCopy = "document_failed_copy"
        case documentFailedOther = "document_failed_other"
        case documentFailedTestMode = "document_failed_test_mode"
        case documentFraudulent = "document_fraudulent"
        case documentFailedGreyscale = "document_failed_greyscale"
        case documentIncomplete = "document_incomplete"
        case documentInvalid = "document_invalid"
        case documentManipulated = "document_manipulated"
        case documentMissingBack = "document_missing_back"
        case documentMissingFront = "document_missing_front"
        case documentNotReadable = "document_not_readable"
        case documentNotUploaded = "document_not_uploaded"
        case documentPhotoMismatch = "document_photo_mismatch"
        case documentTooLarge = "document_too_large"
        case documentTypeNotSupported = "document_type_not_supported"
    }
}

extension Stripe.Connect.Person.Verification {
    public enum Status: String, Codable, Sendable {
        case unverified
        case pending
        case verified
    }
}

extension Stripe.Connect.Person {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Connect.Person]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Connect.Person]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
