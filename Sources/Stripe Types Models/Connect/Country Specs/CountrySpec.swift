import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Connect {
    public struct CountrySpec: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var defaultCurrency: Stripe.Currency?
        public var supportedBankAccountCurrencies: [String: [String]]?
        public var supportedPaymentCurrencies: [Stripe.Currency]?
        public var supportedPaymentMethods: [String]?
        public var supportedTransferCountries: [String]?
        public var object: String
        public var verificationFields: Stripe.Connect.CountrySpec.VerificationFields?

        public init(
            id: ID,
            defaultCurrency: Stripe.Currency? = nil,
            supportedBankAccountCurrencies: [String: [String]]? = nil,
            supportedPaymentCurrencies: [Stripe.Currency]? = nil,
            supportedPaymentMethods: [String]? = nil,
            supportedTransferCountries: [String]? = nil,
            object: String,
            verificationFields: Stripe.Connect.CountrySpec.VerificationFields? = nil
        ) {
            self.id = id
            self.defaultCurrency = defaultCurrency
            self.supportedBankAccountCurrencies = supportedBankAccountCurrencies
            self.supportedPaymentCurrencies = supportedPaymentCurrencies
            self.supportedPaymentMethods = supportedPaymentMethods
            self.supportedTransferCountries = supportedTransferCountries
            self.object = object
            self.verificationFields = verificationFields
        }
    }
}

extension Stripe.Connect.CountrySpec {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Connect.CountrySpec]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Connect.CountrySpec]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}

extension Stripe.Connect.CountrySpec {
    public struct VerificationFields: Codable, Hashable, Sendable {
        public var company: Stripe.Connect.CountrySpec.VerificationFields.Attributes?
        public var individual: Stripe.Connect.CountrySpec.VerificationFields.Attributes?

        public init(
            company: Stripe.Connect.CountrySpec.VerificationFields.Attributes? = nil,
            individual: Stripe.Connect.CountrySpec.VerificationFields.Attributes? = nil
        ) {
            self.company = company
            self.individual = individual
        }
    }
}

extension Stripe.Connect.CountrySpec.VerificationFields {
    public struct Attributes: Codable, Hashable, Sendable {
        public var additional: [String]?
        public var minimum: [String]?

        public init(
            additional: [String]? = nil,
            minimum: [String]? = nil
        ) {
            self.additional = additional
            self.minimum = minimum
        }
    }
}
