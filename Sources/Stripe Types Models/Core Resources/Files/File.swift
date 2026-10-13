public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe {
    public typealias File = Stripe.Files.File
}

extension Stripe.Files {
    public struct File: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var purpose: Stripe.Files.File.Purpose?
        public var type: Stripe.Files.File.`Type`?
        public var object: String
        public var created: Date
        public var expiresAt: Date?
        public var filename: String?
        public var links: Stripe.Files.File.Links?
        public var size: Int?
        public var title: String?
        public var url: String?

        public init(
            id: ID,
            purpose: Stripe.Files.File.Purpose? = nil,
            type: Stripe.Files.File.`Type`? = nil,
            object: String,
            created: Date,
            expiresAt: Date? = nil,
            filename: String? = nil,
            links: Stripe.Files.File.Links? = nil,
            size: Int? = nil,
            title: String? = nil,
            url: String? = nil
        ) {
            self.id = id
            self.purpose = purpose
            self.type = type
            self.object = object
            self.created = created
            self.expiresAt = expiresAt
            self.filename = filename
            self.links = links
            self.size = size
            self.title = title
            self.url = url
        }
    }
}

extension Stripe.Files.File {
    public enum Purpose: String, Codable, Sendable {
        case accountRequirement = "account_requirement"
        case additionalVerification = "additional_verification"
        case businessIcon = "business_icon"
        case businessLogo = "business_logo"
        case customerSignature = "customer_signature"
        case disputeEvidence = "dispute_evidence"
        case documentProviderIdentityDocument = "document_provider_identity_document"
        case financeReportRun = "finance_report_run"
        case identityDocument = "identity_document"
        case identityDocumentDownloadable = "identity_document_downloadable"
        case pciDocument = "pci_document"
        case selfie
        case sigmaScheduledQuery = "sigma_scheduled_query"
        case taxDocumentUserUpload = "tax_document_user_upload"
        case terminalReaderSplashscreen = "terminal_reader_splashscreen"
    }

    public enum `Type`: String, Codable, Sendable {
        case csv
        case docx
        case gif
        case jpg
        case pdf
        case png
        case xls
        case xlsx
    }
}

extension Stripe.Files.File {
    public struct Links: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.FileLinks.FileLink]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.FileLinks.FileLink]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
