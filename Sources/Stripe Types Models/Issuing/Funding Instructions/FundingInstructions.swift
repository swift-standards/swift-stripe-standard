import Foundation
public import Stripe_Types_Shared

public struct FundingInstructions: Codable, Hashable, Sendable {
    public var bankTransfer: FundingInstructionsBankTransfer?
    public var currency: Stripe.Currency?
    public var fundingType: FundingInstructionsFundingType?
    public var object: String
    public var livemode: Bool

    public init(
        bankTransfer: FundingInstructionsBankTransfer? = nil,
        currency: Stripe.Currency? = nil,
        fundingType: FundingInstructionsFundingType? = nil,
        object: String,
        livemode: Bool
    ) {
        self.bankTransfer = bankTransfer
        self.currency = currency
        self.fundingType = fundingType
        self.object = object
        self.livemode = livemode
    }
}

public struct FundingInstructionsBankTransfer: Codable, Hashable, Sendable {
    public var country: String?
    public var financialAddresses: [FundingInstructionsBankTransferFinancialAddress]?
    public var type: FundingInstructionsBankTransferType?
}

public struct FundingInstructionsBankTransferFinancialAddress: Codable, Hashable, Sendable {
    public var iban: FundingInstructionsBankTransferFinancialAddressIban?
    public var sortCode: FundingInstructionsBankTransferFinancialAddressSortCode?
    public var supportedNetworks: [FundingInstructionsBankTransferFinancialAddressSupportedNetwork]?
    public var type: FundingInstructionsBankTransferFinancialAddressType?

    public init(
        iban: FundingInstructionsBankTransferFinancialAddressIban? = nil,
        sortCode: FundingInstructionsBankTransferFinancialAddressSortCode? = nil,
        supportedNetworks: [FundingInstructionsBankTransferFinancialAddressSupportedNetwork]? = nil,
        type: FundingInstructionsBankTransferFinancialAddressType? = nil
    ) {
        self.iban = iban
        self.sortCode = sortCode
        self.supportedNetworks = supportedNetworks
        self.type = type
    }
}

public enum FundingInstructionsBankTransferFinancialAddressType: String, Codable, Sendable {
    case iban
    case sortCode = "sort_code"
}

public struct FundingInstructionsBankTransferFinancialAddressIban: Codable, Hashable, Sendable {
    public var accountHolderName: String?
    public var bic: String?
    public var country: String?
    public var iban: String?

    public init(
        accountHolderName: String? = nil,
        bic: String? = nil,
        country: String? = nil,
        iban: String? = nil
    ) {
        self.accountHolderName = accountHolderName
        self.bic = bic
        self.country = country
        self.iban = iban
    }
}

public struct FundingInstructionsBankTransferFinancialAddressSortCode: Codable, Hashable, Sendable {
    public var accountHolderName: String?
    public var accountNumber: String?
    public var sortCode: String?

    public init(
        accountHolderName: String? = nil,
        accountNumber: String? = nil,
        sortCode: String? = nil
    ) {
        self.accountHolderName = accountHolderName
        self.accountNumber = accountNumber
        self.sortCode = sortCode
    }
}

public enum FundingInstructionsBankTransferFinancialAddressSupportedNetwork: String, Codable,
    Sendable
{
    case bacs
    case fps
    case sepa
}

public enum FundingInstructionsBankTransferType: String, Codable, Sendable {
    case euBankTransfer = "eu_bank_transfer"
    case gbBankTransfer = "gb_bank_transfer"
}

public enum FundingInstructionsFundingType: String, Codable, Sendable {
    case bankTransfer = "bank_transfer"
}

public struct FundingInstructionsList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [FundingInstructions]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [FundingInstructions]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}
