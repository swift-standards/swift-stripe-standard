public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct Cardholder: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var billing: CardholderBilling?
    public var email: String?
    public var metadata: [String: String]?
    public var name: String?
    public var phoneNumber: String?
    public var object: String
    public var type: CardholderType?
    public var company: CardholderCompany?
    public var created: Date
    public var individual: CardholderIndividual?
    public var livemode: Bool?
    public var requirements: CardholderAuthorizationRequirements?
    public var spendingControls: CardholderSpendingControls?
    public var status: CardholderStatus?

    public init(
        id: ID,
        billing: CardholderBilling? = nil,
        email: String? = nil,
        metadata: [String: String]? = nil,
        name: String? = nil,
        phoneNumber: String? = nil,
        object: String,
        type: CardholderType? = nil,
        company: CardholderCompany? = nil,
        created: Date,
        individual: CardholderIndividual? = nil,
        livemode: Bool? = nil,
        requirements: CardholderAuthorizationRequirements? = nil,
        spendingControls: CardholderSpendingControls? = nil,
        status: CardholderStatus? = nil
    ) {
        self.id = id
        self.billing = billing
        self.email = email
        self.metadata = metadata
        self.name = name
        self.phoneNumber = phoneNumber
        self.object = object
        self.type = type
        self.company = company
        self.created = created
        self.individual = individual
        self.livemode = livemode
        self.requirements = requirements
        self.spendingControls = spendingControls
        self.status = status
    }
}

public struct CardholderSpendingControls: Codable, Hashable, Sendable {
    public var allowedCategories: [String]?
    public var blockedCategories: [String]?
    public var spendingLimits: [CardholderSpendingControlSpendingLimit]?
    public var spendingLimitsCurrency: Stripe.Currency?

    public init(
        allowedCategories: [String]? = nil,
        blockedCategories: [String]? = nil,
        spendingLimits: [CardholderSpendingControlSpendingLimit]? = nil,
        spendingLimitsCurrency: Stripe.Currency? = nil
    ) {
        self.allowedCategories = allowedCategories
        self.blockedCategories = blockedCategories
        self.spendingLimits = spendingLimits
        self.spendingLimitsCurrency = spendingLimitsCurrency
    }
}

public struct CardholderSpendingControlSpendingLimit: Codable, Hashable, Sendable {
    public var amount: Int?
    public var categories: [String]?
    public var interval: CardholderSpendingControlSpendingLimitInterval?
}

public enum CardholderSpendingControlSpendingLimitInterval: String, Codable, Sendable {
    case perAuthorization = "per_authorization"
    case daily
    case weekly
    case monthly
    case yearly
    case allTime = "all_time"
}

public struct CardholderBilling: Codable, Hashable, Sendable {
    public var address: Address?

    public init(
        address: Address? = nil
    ) {
        self.address = address
    }
}

public struct CardholderCompany: Codable, Hashable, Sendable {
    public var taxIdProvided: Bool?

    public init(
        taxIdProvided: Bool? = nil
    ) {
        self.taxIdProvided = taxIdProvided
    }
}

public struct CardholderIndividual: Codable, Hashable, Sendable {
    public var cardIssuing: CardholderIndividualCardIssuing?
    public var dob: Stripe.Connect.Person.DOB?
    public var firstName: String?
    public var lastName: String?
    public var verification: CardholderIndividualVerification?

    public init(
        cardIssuing: CardholderIndividualCardIssuing? = nil,
        dob: Stripe.Connect.Person.DOB? = nil,
        firstName: String? = nil,
        lastName: String? = nil,
        verification: CardholderIndividualVerification? = nil
    ) {
        self.cardIssuing = cardIssuing
        self.dob = dob
        self.firstName = firstName
        self.lastName = lastName
        self.verification = verification
    }
}

public struct CardholderIndividualCardIssuing: Codable, Hashable, Sendable {
    public var userTermsAcceptance: CardholderIndividualCardIssuingUserTermsAcceptance?

    public init(
        userTermsAcceptance: CardholderIndividualCardIssuingUserTermsAcceptance? = nil
    ) {
        self.userTermsAcceptance = userTermsAcceptance
    }
}

public struct CardholderIndividualCardIssuingUserTermsAcceptance: Codable, Hashable, Sendable {
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

public struct CardholderIndividualVerification: Codable, Hashable, Sendable {
    public var document: CardholderIndividualVerificationDocument?

    public init(
        document: CardholderIndividualVerificationDocument? = nil
    ) {
        self.document = document
    }
}

public struct CardholderIndividualVerificationDocument: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Files.File> public var back: Stripe.Files.File.ID?
    @ExpandableOf<Stripe.Files.File> public var front: Stripe.Files.File.ID?

    public init(
        back: Stripe.Files.File.ID? = nil,
        front: Stripe.Files.File.ID? = nil
    ) {
        self._back = Expandable(id: back)
        self._front = Expandable(id: front)
    }
}

public struct CardholderAuthorizationRequirements: Codable, Hashable, Sendable {
    public var disabledReason: CardholderAuthorizationRequirementsDisabledReason?
    public var pastDue: [CardholderAuthorizationRequirementsPastDue]?

    public init(
        disabledReason: CardholderAuthorizationRequirementsDisabledReason? = nil,
        pastDue: [CardholderAuthorizationRequirementsPastDue]? = nil
    ) {
        self.disabledReason = disabledReason
        self.pastDue = pastDue
    }
}

public enum CardholderStatus: String, Codable, Sendable {
    case active
    case inactive
    case blocked
}

public enum CardholderType: String, Codable, Sendable {
    case individial
    case company
}

public enum CardholderAuthorizationRequirementsDisabledReason: String, Codable, Sendable {
    case listed
    case underReview = "under_review"
    case rejectedListed = "rejected.listed"
    case requirementsPastDue = "requirements.past_due"
}

public enum CardholderAuthorizationRequirementsPastDue: String, Codable, Sendable {
    case individualCardIssuingUserTermsAcceptanceIp =
        "individual.card_issuing.user_terms_acceptance.ip"
    case individualCardIssuingUserTermsAcceptanceDate =
        "individual.card_issuing.user_terms_acceptance.date"
    case individualFirstName = "individual.first_name"
    case individualLastName = "individual.last_name"
    case individualDobDay = "individual.dob.day"
    case individualDobMonth = "individual.dob.month"
    case individualDobYear = "individual.dob.year"
    case individualVerificationDocument = "individual.verification.document"
    case companyTaxId = "company.tax_id"
}

public struct CardholderList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [Cardholder]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [Cardholder]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}
