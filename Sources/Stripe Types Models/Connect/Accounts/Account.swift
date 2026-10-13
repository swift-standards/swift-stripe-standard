public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Connect {

    public struct Account: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var businessType: Stripe.Connect.Account.BusinessType?
        public var capabilities: Stripe.Connect.Account.Capablities?
        public var company: Stripe.Connect.Account.Company?
        public var country: String?
        public var email: String?
        public var individual: Person?
        public var metadata: [String: String]?
        public var requirements: Stripe.Connect.Account.Requirements?
        public var tosAcceptance: Stripe.Connect.Account.TOSAcceptance?
        public var type: Stripe.Connect.Account.`Type`?
        public var object: String
        public var businessProfile: Stripe.Connect.Account.BusinessProfile?
        public var chargesEnabled: Bool?
        public var controller: Stripe.Connect.Account.Controller?
        public var created: Date?
        public var defaultCurrency: Stripe.Currency?
        public var detailsSubmitted: Bool?
        public var externalAccounts: Stripe.Connect.Account.ExternalAccounts.List?
        public var futureRequirements: Stripe.Connect.Account.FutureRequirements?
        public var payoutsEnabled: Bool?
        public var settings: Stripe.Connect.Account.Settings?

        public init(
            id: ID,
            businessType: Stripe.Connect.Account.BusinessType? = nil,
            capabilities: Stripe.Connect.Account.Capablities? = nil,
            company: Stripe.Connect.Account.Company? = nil,
            country: String? = nil,
            email: String? = nil,
            individual: Person? = nil,
            metadata: [String: String]? = nil,
            requirements: Stripe.Connect.Account.Requirements? = nil,
            tosAcceptance: Stripe.Connect.Account.TOSAcceptance? = nil,
            type: Stripe.Connect.Account.`Type`? = nil,
            object: String,
            businessProfile: Stripe.Connect.Account.BusinessProfile? = nil,
            chargesEnabled: Bool? = nil,
            controller: Stripe.Connect.Account.Controller? = nil,
            created: Date? = nil,
            defaultCurrency: Stripe.Currency? = nil,
            detailsSubmitted: Bool? = nil,
            externalAccounts: Stripe.Connect.Account.ExternalAccounts.List? = nil,
            futureRequirements: Stripe.Connect.Account.FutureRequirements? = nil,
            payoutsEnabled: Bool? = nil,
            settings: Stripe.Connect.Account.Settings? = nil
        ) {
            self.id = id
            self.businessType = businessType
            self.capabilities = capabilities
            self.company = company
            self.country = country
            self.email = email
            self.individual = individual
            self.metadata = metadata
            self.requirements = requirements
            self.tosAcceptance = tosAcceptance
            self.type = type
            self.object = object
            self.businessProfile = businessProfile
            self.chargesEnabled = chargesEnabled
            self.controller = controller
            self.created = created
            self.defaultCurrency = defaultCurrency
            self.detailsSubmitted = detailsSubmitted
            self.externalAccounts = externalAccounts
            self.futureRequirements = futureRequirements
            self.payoutsEnabled = payoutsEnabled
            self.settings = settings
        }
    }
}

extension Stripe.Connect.Account {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Connect.Account]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Connect.Account]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}

extension Stripe.Connect.Account {
    public struct BusinessProfile: Codable, Hashable, Sendable {
        public var mcc: String?
        public var name: String?
        public var productDescription: String?
        public var supportAddress: Address?
        public var supportEmail: String?
        public var supportPhone: String?
        public var supportUrl: String?
        public var url: String?

        public init(
            mcc: String? = nil,
            name: String? = nil,
            productDescription: String? = nil,
            supportAddress: Address? = nil,
            supportEmail: String? = nil,
            supportPhone: String? = nil,
            supportUrl: String? = nil,
            url: String? = nil
        ) {
            self.mcc = mcc
            self.name = name
            self.productDescription = productDescription
            self.supportAddress = supportAddress
            self.supportEmail = supportEmail
            self.supportPhone = supportPhone
            self.supportUrl = supportUrl
            self.url = url
        }
    }
}

extension Stripe.Connect.Account {
    public enum BusinessType: String, Codable, Sendable {
        case individual
        case company
        case nonProfit = "non_profit"
        case governmentEntity = "government_entity"
    }
}

extension Stripe.Connect.Account {
    public struct Capablities: Codable, Hashable, Sendable {
        public var acssDebitPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var affirmPayments: Stripe.Connect.Account.CapabilitiesStatus?

        public var afterpayClearpayPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var auBecsDebitPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var bacsDebitPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var bancontactPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var bankTransferPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var blikPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var boletoPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var cardIssuing: Stripe.Connect.Account.CapabilitiesStatus?
        public var cardPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var cartesBancairesPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var cashappPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var epsPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var fpxPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var giropayPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var grabpayPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var idealPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var indiaInternationalPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var jcbPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var klarnaPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var konbiniPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var legacyPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var linkPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var oxxoPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var p24Payments: Stripe.Connect.Account.CapabilitiesStatus?
        public var paynowPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var promptpayPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var sepaDebitPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var sofortPayments: Stripe.Connect.Account.CapabilitiesStatus?
        public var taxReportingUs1099K: Stripe.Connect.Account.CapabilitiesStatus?
        public var taxReportingUs1099Misc: Stripe.Connect.Account.CapabilitiesStatus?
        public var transfers: Stripe.Connect.Account.CapabilitiesStatus?
        public var usBankAccountAchPayments: Stripe.Connect.Account.CapabilitiesStatus?

        public init(
            acssDebitPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            affirmPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            afterpayClearpayPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            auBecsDebitPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            bacsDebitPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            bancontactPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            bankTransferPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            blikPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            boletoPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            cardIssuing: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            cardPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            cartesBancairesPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            cashappPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            epsPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            fpxPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            giropayPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            grabpayPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            idealPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            indiaInternationalPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            jcbPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            klarnaPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            konbiniPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            legacyPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            linkPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            oxxoPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            p24Payments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            paynowPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            promptpayPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            sepaDebitPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            sofortPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            taxReportingUs1099K: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            taxReportingUs1099Misc: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            transfers: Stripe.Connect.Account.CapabilitiesStatus? = nil,
            usBankAccountAchPayments: Stripe.Connect.Account.CapabilitiesStatus? = nil
        ) {
            self.acssDebitPayments = acssDebitPayments
            self.affirmPayments = affirmPayments
            self.afterpayClearpayPayments = afterpayClearpayPayments
            self.auBecsDebitPayments = auBecsDebitPayments
            self.bacsDebitPayments = bacsDebitPayments
            self.bancontactPayments = bancontactPayments
            self.bankTransferPayments = bankTransferPayments
            self.blikPayments = blikPayments
            self.boletoPayments = boletoPayments
            self.cardIssuing = cardIssuing
            self.cardPayments = cardPayments
            self.cartesBancairesPayments = cartesBancairesPayments
            self.cashappPayments = cashappPayments
            self.epsPayments = epsPayments
            self.fpxPayments = fpxPayments
            self.giropayPayments = giropayPayments
            self.grabpayPayments = grabpayPayments
            self.idealPayments = idealPayments
            self.indiaInternationalPayments = indiaInternationalPayments
            self.jcbPayments = jcbPayments
            self.klarnaPayments = klarnaPayments
            self.konbiniPayments = konbiniPayments
            self.legacyPayments = legacyPayments
            self.linkPayments = linkPayments
            self.oxxoPayments = oxxoPayments
            self.p24Payments = p24Payments
            self.paynowPayments = paynowPayments
            self.promptpayPayments = promptpayPayments
            self.sepaDebitPayments = sepaDebitPayments
            self.sofortPayments = sofortPayments
            self.taxReportingUs1099K = taxReportingUs1099K
            self.taxReportingUs1099Misc = taxReportingUs1099Misc
            self.transfers = transfers
            self.usBankAccountAchPayments = usBankAccountAchPayments
        }
    }
}

extension Stripe.Connect.Account {
    public enum CapabilitiesStatus: String, Codable, Sendable {
        case active
        case inactive
        case pending
    }
}

extension Stripe.Connect.Account {
    public struct Controller: Codable, Hashable, Sendable {
        public var isController: Bool?
        public var type: Stripe.Connect.Account.Controller.`Type`?

        public init(
            isController: Bool? = nil,
            type: Stripe.Connect.Account.Controller.`Type`? = nil
        ) {
            self.isController = isController
            self.type = type
        }
    }
}

extension Stripe.Connect.Account.Controller {
    public enum `Type`: String, Codable, Sendable {
        case application
        case account
    }
}

extension Stripe.Connect.Account {
    public struct Company: Codable, Hashable, Sendable {
        public var address: Address?
        public var addressKana: AddressKana?
        public var addressKanji: AddressKanji?
        public var directorsProvided: Bool?
        public var executivesProvided: Bool?
        public var exportLicenseId: String?
        public var exportPurposeCode: String?
        public var name: String?
        public var nameKana: String?
        public var nameKanji: String?
        public var ownersProvided: Bool?
        public var ownershipDeclaration: Stripe.Connect.Account.Company.OwnershipDeclaration?
        public var phone: String?
        public var structure: Stripe.Connect.Account.Company.Structure?
        public var taxIdProvided: Bool?
        public var taxIdRegistrar: String?
        public var vatIdProvided: Bool?
        public var verification: Stripe.Connect.Account.Company.Verification?

        public init(
            address: Address? = nil,
            addressKana: AddressKana? = nil,
            addressKanji: AddressKanji? = nil,
            directorsProvided: Bool? = nil,
            executivesProvided: Bool? = nil,
            exportLicenseId: String? = nil,
            exportPurposeCode: String? = nil,
            name: String? = nil,
            nameKana: String? = nil,
            nameKanji: String? = nil,
            ownersProvided: Bool? = nil,
            ownershipDeclaration: Stripe.Connect.Account.Company.OwnershipDeclaration? = nil,
            phone: String? = nil,
            structure: Stripe.Connect.Account.Company.Structure? = nil,
            taxIdProvided: Bool? = nil,
            taxIdRegistrar: String? = nil,
            vatIdProvided: Bool? = nil,
            verification: Stripe.Connect.Account.Company.Verification? = nil
        ) {
            self.address = address
            self.addressKana = addressKana
            self.addressKanji = addressKanji
            self.directorsProvided = directorsProvided
            self.executivesProvided = executivesProvided
            self.exportLicenseId = exportLicenseId
            self.exportPurposeCode = exportPurposeCode
            self.name = name
            self.nameKana = nameKana
            self.nameKanji = nameKanji
            self.ownersProvided = ownersProvided
            self.ownershipDeclaration = ownershipDeclaration
            self.phone = phone
            self.structure = structure
            self.taxIdProvided = taxIdProvided
            self.taxIdRegistrar = taxIdRegistrar
            self.vatIdProvided = vatIdProvided
            self.verification = verification
        }
    }
}

extension Stripe.Connect.Account.Company {
    public struct OwnershipDeclaration: Codable, Hashable, Sendable {
        public var date: Date?
        public var ip: String?
        public var userAgent: String?

        public init(
            date: Date? = nil,
            ip: String? = nil,
            userAgent: String? = nil
        ) {
            self.date = date
            self.ip = ip
            self.userAgent = userAgent
        }
    }
}

extension Stripe.Connect.Account.Company {
    public struct Verification: Codable, Hashable, Sendable {
        public var document: Stripe.Connect.Account.Company.Verification.Document?

        public init(
            document: Stripe.Connect.Account.Company.Verification.Document? = nil
        ) {
            self.document = document
        }
    }
}

extension Stripe.Connect.Account.Company.Verification {
    public struct Document: Codable, Hashable, Sendable {
        @ExpandableOf<Stripe.Files.File> public var back: Stripe.Files.File.ID?
        public var details: String?
        public var detailsCode: Stripe.Connect.Account.Company.Verification.Document.DetailsCode?
        @ExpandableOf<Stripe.Files.File> public var front: Stripe.Files.File.ID?

        public init(
            back: Stripe.Files.File.ID? = nil,
            details: String? = nil,
            detailsCode: Stripe.Connect.Account.Company.Verification.Document.DetailsCode? = nil,
            front: Stripe.Files.File.ID? = nil
        ) {
            self._back = Expandable(id: back)
            self.details = details
            self.detailsCode = detailsCode
            self._front = Expandable(id: front)
        }
    }
}

extension Stripe.Connect.Account.Company.Verification.Document {
    public enum DetailsCode: String, Codable, Sendable {
        case documentCorrupt = "document_corrupt"
        case documentExpired = "document_expired"
        case documentFailedCopy = "document_failed_copy"
        case documentFailedGreyscale = "document_failed_greyscale"
        case documentFailedOther = "document_failed_other"
        case documentFailedTestMode = "document_failed_test_mode"
        case documentFraudulent = "document_fraudulent"
        case documentIncomplete = "document_incomplete"
        case documentInvalid = "document_invalid"
        case documentManipulated = "document_manipulated"
        case documentNotReadable = "document_not_readable"
        case documentNotUploaded = "document_not_uploaded"
        case documentTypeNotSupported = "document_type_not_supported"
        case documentTooLarge = "document_too_large"
    }
}

extension Stripe.Connect.Account.Company {
    public enum Structure: String, Codable, Sendable {
        case governmentInstrumentality = "government_instrumentality"
        case governmentalUnit = "governmental_unit"
        case incorporatedNonProfit = "incorporated_non_profit"
        case limitedLiabilityPartnership = "limited_liability_partnership"
        case multiMemberLlc = "multi_member_llc"
        case privateCompany = "private_company"
        case privateCorporation = "private_corporation"
        case privatePartnership = "private_partnership"
        case publicCompany = "public_company"
        case publicCorporation = "public_corporation"
        case publicPartnership = "public_partnership"
        case singleMemberLlc = "single_member_llc"
        case soleProprietorship = "sole_proprietorship"
        case taxExemptGovernmentInstrumentality = "tax_exempt_government_instrumentality"
        case unincorporatedAssociation = "unincorporated_association"
        case unincorporatedNonProfit = "unincorporated_non_profit"
        case freeZoneLLC = "free_zone_llc"
        case soleEstablishment = "sole_establishment"
        case freeZoneEstablishment = "free_zone_establishment"
        case llc
    }
}

extension Stripe.Connect.Account {
    public struct Requirements: Codable, Hashable, Sendable {
        public var alternatives: [Stripe.Connect.Account.Requirements.Alternative]?
        public var currentDeadline: Date?
        public var currentlyDue: [String]?
        public var disabledReason: Stripe.Connect.Account.Requirements.DisabledReason?
        public var errors: [Stripe.Connect.Account.Requirements.Error]?
        public var eventuallyDue: [String]?
        public var pastDue: [String]?
        public var pendingVerification: [String]?

        public init(
            alternatives: [Stripe.Connect.Account.Requirements.Alternative]? = nil,
            currentDeadline: Date? = nil,
            currentlyDue: [String]? = nil,
            disabledReason: Stripe.Connect.Account.Requirements.DisabledReason? = nil,
            errors: [Stripe.Connect.Account.Requirements.Error]? = nil,
            eventuallyDue: [String]? = nil,
            pastDue: [String]? = nil,
            pendingVerification: [String]? = nil
        ) {
            self.alternatives = alternatives
            self.currentDeadline = currentDeadline
            self.currentlyDue = currentlyDue
            self.disabledReason = disabledReason
            self.errors = errors
            self.eventuallyDue = eventuallyDue
            self.pastDue = pastDue
            self.pendingVerification = pendingVerification
        }
    }
}

extension Stripe.Connect.Account.Requirements {
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

extension Stripe.Connect.Account.Requirements {
    public enum DisabledReason: String, Codable, Sendable {
        case requirementsPastDue = "requirements.past_due"
        case requirementsPendingVerification = "requirements.pending_verification"
        case listed
        case platformPaused = "platform_paused"
        case rejectedFraud = "rejected.fraud"
        case rejectedListed = "rejected.listed"
        case rejectedTermsOfService = "rejected.terms_of_service"
        case rejectedOther = "rejected.other"
        case underReview = "under_review"
        case other
    }
}

extension Stripe.Connect.Account.Requirements {
    public struct Error: Codable, Hashable, Sendable {
        public var code: Stripe.Connect.Account.Requirements.ErrorCode?
        public var reason: String?
        public var requirement: String?

        public init(
            code: Stripe.Connect.Account.Requirements.ErrorCode? = nil,
            reason: String? = nil,
            requirement: String? = nil
        ) {
            self.code = code
            self.reason = reason
            self.requirement = requirement
        }
    }
}

extension Stripe.Connect.Account.Requirements {
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
        case invalidProductDescriptionLength = "invalid_product_description_length"
        case invalidProductDescriptionUrlMatch = "invalid_product_description_url_match"
        case invalidStatementDescriptorLength = "invalid_statement_descriptor_length"
        case invalidStatementDescriptorBusinessMismatch =
            "invalid_statement_descriptor_business_mismatch"
        case invalidStatementDescriptorDenylisted = "invalid_statement_descriptor_denylisted"
        case invalidStatementDescriptorPrefixMismatch =
            "invalid_statement_descriptor_prefix_mismatch"
        case invalidStatementDescriptorPrefixDenylisted =
            "invalid_statement_descriptor_prefix_denylisted"
        case invalidCompanyNameDenylisted = "invalid_company_name_denylisted"
        case invalidBusinessProfileNameDenylisted = "invalid_business_profile_name_denylisted"
        case invalidBusinessProfileName = "invalid_business_profile_name"
        case invalidDobAgeUnderMinimum = "invalid_dob_age_under_minimum"
        case invalidDobAgeOverMaximum = "invalid_dob_age_over_maximum"
        case invalidPhoneNumber = "invalid_phone_number"
        case invalidTaxIdFormat = "invalid_tax_id_format"
        case invalidUrlFormat = "invalid_url_format"
        case invalidUrlDenylisted = "invalid_url_denylisted"
    }
}

extension Stripe.Connect.Account {
    public struct FutureRequirements: Codable, Hashable, Sendable {
        public var alternatives: [Stripe.Connect.Account.FutureRequirements.Alternative]?
        public var currentDeadline: Date?
        public var currentlyDue: [String]?
        public var disabledReason: String?
        public var errors: [Stripe.Connect.Account.Requirements.Error]?
        public var eventuallyDue: [String]?
        public var pastDue: [String]?
        public var pendingVerification: [String]?

        public init(
            alternatives: [Stripe.Connect.Account.FutureRequirements.Alternative]? = nil,
            currentDeadline: Date? = nil,
            currentlyDue: [String]? = nil,
            disabledReason: String? = nil,
            errors: [Stripe.Connect.Account.Requirements.Error]? = nil,
            eventuallyDue: [String]? = nil,
            pastDue: [String]? = nil,
            pendingVerification: [String]? = nil
        ) {
            self.alternatives = alternatives
            self.currentDeadline = currentDeadline
            self.currentlyDue = currentlyDue
            self.disabledReason = disabledReason
            self.errors = errors
            self.eventuallyDue = eventuallyDue
            self.pastDue = pastDue
            self.pendingVerification = pendingVerification
        }
    }
}

extension Stripe.Connect.Account.FutureRequirements {
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

extension Stripe.Connect.Account {
    public struct Settings: Codable, Hashable, Sendable {
        public var bacsDebitPayments: Stripe.Connect.Account.Settings.BacsDebitPayments?
        public var branding: Stripe.Connect.Account.Settings.Branding?
        public var cardIssuing: Stripe.Connect.Account.Settings.CardIssuing?
        public var cardPayments: Stripe.Connect.Account.Settings.CardPayments?
        public var dashboard: Stripe.Connect.Account.Settings.Dashboard?
        public var payments: Stripe.Connect.Account.Settings.Payments?
        public var payouts: Stripe.Connect.Account.Settings.Payouts?
        public var sepaDebitPayments: Stripe.Connect.Account.Settings.SepaDebitPayments?

        public init(
            bacsDebitPayments: Stripe.Connect.Account.Settings.BacsDebitPayments? = nil,
            branding: Stripe.Connect.Account.Settings.Branding? = nil,
            cardIssuing: Stripe.Connect.Account.Settings.CardIssuing? = nil,
            cardPayments: Stripe.Connect.Account.Settings.CardPayments? = nil,
            dashboard: Stripe.Connect.Account.Settings.Dashboard? = nil,
            payments: Stripe.Connect.Account.Settings.Payments? = nil,
            payouts: Stripe.Connect.Account.Settings.Payouts? = nil,
            sepaDebitPayments: Stripe.Connect.Account.Settings.SepaDebitPayments? = nil
        ) {
            self.bacsDebitPayments = bacsDebitPayments
            self.branding = branding
            self.cardIssuing = cardIssuing
            self.cardPayments = cardPayments
            self.dashboard = dashboard
            self.payments = payments
            self.payouts = payouts
            self.sepaDebitPayments = sepaDebitPayments
        }
    }
}

extension Stripe.Connect.Account.Settings {
    public struct BacsDebitPayments: Codable, Hashable, Sendable {
        public var displayName: String?

        public init(
            displayName: String? = nil
        ) {
            self.displayName = displayName
        }
    }
}

extension Stripe.Connect.Account.Settings {
    public struct Branding: Codable, Hashable, Sendable {
        @ExpandableOf<Stripe.Files.File> public var icon: Stripe.Files.File.ID?
        @ExpandableOf<Stripe.Files.File> public var logo: Stripe.Files.File.ID?
        public var primaryColor: String?
        public var secondaryColor: String?

        public init(
            icon: Stripe.Files.File.ID? = nil,
            logo: Stripe.Files.File.ID? = nil,
            primaryColor: String? = nil,
            secondaryColor: String? = nil
        ) {
            self._icon = Expandable(id: icon)
            self._logo = Expandable(id: logo)
            self.primaryColor = primaryColor
            self.secondaryColor = secondaryColor
        }
    }
}

extension Stripe.Connect.Account.Settings {
    public struct CardIssuing: Codable, Hashable, Sendable {
        public var tosAcceptance: Stripe.Connect.Account.Settings.CardIssuing.TOSAcceptance?

        public init(
            tosAcceptance: Stripe.Connect.Account.Settings.CardIssuing.TOSAcceptance? = nil
        ) {
            self.tosAcceptance = tosAcceptance
        }
    }
}

extension Stripe.Connect.Account.Settings.CardIssuing {
    public struct TOSAcceptance: Codable, Hashable, Sendable {
        public var date: Date?
        public var ip: String?
        public var userAgent: String?

        public init(
            date: Date? = nil,
            ip: String? = nil,
            userAgent: String? = nil
        ) {
            self.date = date
            self.ip = ip
            self.userAgent = userAgent
        }
    }
}

extension Stripe.Connect.Account.Settings {
    public struct CardPayments: Codable, Hashable, Sendable {
        public var declineOn: Stripe.Connect.Account.Settings.CardPayments.DeclineOn?
        public var statementDescriptorPrefix: String?
        public var statementDescriptorPrefixKana: String?
        public var statementDescriptorPrefixKanji: String?

        public init(
            declineOn: Stripe.Connect.Account.Settings.CardPayments.DeclineOn? = nil,
            statementDescriptorPrefix: String? = nil,
            statementDescriptorPrefixKana: String? = nil,
            statementDescriptorPrefixKanji: String? = nil
        ) {
            self.declineOn = declineOn
            self.statementDescriptorPrefix = statementDescriptorPrefix
            self.statementDescriptorPrefixKana = statementDescriptorPrefixKana
            self.statementDescriptorPrefixKanji = statementDescriptorPrefixKanji
        }
    }
}

extension Stripe.Connect.Account.Settings.CardPayments {
    public struct DeclineOn: Codable, Hashable, Sendable {
        public var avsFailure: Bool?
        public var cvcFailure: Bool?

        public init(
            avsFailure: Bool? = nil,
            cvcFailure: Bool? = nil
        ) {
            self.avsFailure = avsFailure
            self.cvcFailure = cvcFailure
        }
    }
}

extension Stripe.Connect.Account.Settings {
    public struct Dashboard: Codable, Hashable, Sendable {
        public var displayName: String?
        public var timezone: String?

        public init(
            displayName: String? = nil,
            timezone: String? = nil
        ) {
            self.displayName = displayName
            self.timezone = timezone
        }
    }
}

extension Stripe.Connect.Account.Settings {
    public struct Payments: Codable, Hashable, Sendable {
        public var statementDescriptor: Stripe.StatementDescriptor?
        public var statementDescriptorKana: String?
        public var statementDescriptorKanji: String?
        public var statementDescriptorPrefixKana: String?
        public var statementDescriptorPrefixKanji: String?

        public init(
            statementDescriptor: Stripe.StatementDescriptor? = nil,
            statementDescriptorKana: String? = nil,
            statementDescriptorKanji: String? = nil,
            statementDescriptorPrefixKana: String? = nil,
            statementDescriptorPrefixKanji: String? = nil
        ) {
            self.statementDescriptor = statementDescriptor
            self.statementDescriptorKana = statementDescriptorKana
            self.statementDescriptorKanji = statementDescriptorKanji
            self.statementDescriptorPrefixKana = statementDescriptorPrefixKana
            self.statementDescriptorPrefixKanji = statementDescriptorPrefixKanji
        }
    }
}

extension Stripe.Connect.Account.Settings {
    public struct Payouts: Codable, Hashable, Sendable {
        public var debitNegativeBalances: Bool?
        public var schedule: Stripe.Connect.Account.Settings.PayoutSchedule?
        public var statementDescriptor: Stripe.StatementDescriptor?

        public init(
            debitNegativeBalances: Bool? = nil,
            schedule: Stripe.Connect.Account.Settings.PayoutSchedule? = nil,
            statementDescriptor: Stripe.StatementDescriptor? = nil
        ) {
            self.debitNegativeBalances = debitNegativeBalances
            self.schedule = schedule
            self.statementDescriptor = statementDescriptor
        }
    }
}

extension Stripe.Connect.Account.Settings {
    public struct PayoutSchedule: Codable, Hashable, Sendable {
        public var delayDays: Int?
        public var interval: Stripe.Connect.Account.Settings.PayoutSchedule.Interval?
        public var monthlyAnchor: Int?
        public var weeklyAnchor: Stripe.Connect.Account.Settings.PayoutSchedule.WeeklyAnchor?

        public init(
            delayDays: Int? = nil,
            interval: Stripe.Connect.Account.Settings.PayoutSchedule.Interval? = nil,
            monthlyAnchor: Int? = nil,
            weeklyAnchor: Stripe.Connect.Account.Settings.PayoutSchedule.WeeklyAnchor? = nil
        ) {
            self.delayDays = delayDays
            self.interval = interval
            self.monthlyAnchor = monthlyAnchor
            self.weeklyAnchor = weeklyAnchor
        }
    }
}

extension Stripe.Connect.Account.Settings {
    public struct SepaDebitPayments: Codable, Hashable, Sendable {
        public var creditorId: String?

        public init(
            creditorId: String? = nil
        ) {
            self.creditorId = creditorId
        }
    }
}

extension Stripe.Connect.Account {
    public struct TOSAcceptance: Codable, Hashable, Sendable {
        public var date: Date?
        public var ip: String?
        public var userAgent: String?
        public var serviceAgreement: String?

        public init(
            date: Date? = nil,
            ip: String? = nil,
            userAgent: String? = nil,
            serviceAgreement: String? = nil
        ) {
            self.date = date
            self.ip = ip
            self.userAgent = userAgent
            self.serviceAgreement = serviceAgreement
        }
    }
}

extension Stripe.Connect.Account {
    public enum `Type`: String, Codable, Sendable {
        case standard
        case express
        case custom
    }
}

extension Stripe.Connect.Account {
    public struct LoginLink: Codable, Hashable, Sendable {
        public var object: String
        public var created: Date
        public var url: String?

        public init(
            object: String,
            created: Date,
            url: String? = nil
        ) {
            self.object = object
            self.created = created
            self.url = url
        }
    }
}

extension Stripe.Connect.Account {
    public enum ConnectAccountRejectReason: String, Codable, Sendable {
        case fraud
        case termsOfService = "terms_of_service"
        case other
    }
}

extension Stripe.Connect.Account.Settings.PayoutSchedule {
    public enum Interval: String, Codable, Sendable {
        case manual
        case daily
        case weekly
        case monthly
    }
}

extension Stripe.Connect.Account.Settings.PayoutSchedule {
    public enum WeeklyAnchor: String, Codable, Sendable {
        case sunday
        case monday
        case tuesday
        case wednesday
        case thursday
        case friday
        case saturday
    }
}
