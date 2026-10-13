import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Charges {
    public enum Create {}
    public enum Update {}
    public enum List {}
    public enum Capture {}
    public enum Search {}
}

extension Stripe.Charges.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let amount: Int
        public let currency: Stripe.Currency
        public let source: String?
        public let customer: Stripe.Customers.Customer.ID?
        public let description: String?
        public let metadata: [String: String]?
        public let capture: Bool?
        public let receiptEmail: String?
        public let shipping: Shipping?
        public let applicationFeeAmount: Int?
        public let statementDescriptor: String?
        public let statementDescriptorSuffix: String?
        public let transferData: TransferData?
        public let transferGroup: String?
        public let onBehalfOf: String?

        private enum CodingKeys: String, CodingKey {
            case amount
            case currency
            case source
            case customer
            case description
            case metadata
            case capture
            case receiptEmail = "receipt_email"
            case shipping
            case applicationFeeAmount = "application_fee_amount"
            case statementDescriptor = "statement_descriptor"
            case statementDescriptorSuffix = "statement_descriptor_suffix"
            case transferData = "transfer_data"
            case transferGroup = "transfer_group"
            case onBehalfOf = "on_behalf_of"
        }

        public init(
            amount: Int,
            currency: Stripe.Currency,
            source: String? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            description: String? = nil,
            metadata: [String: String]? = nil,
            capture: Bool? = nil,
            receiptEmail: String? = nil,
            shipping: Shipping? = nil,
            applicationFeeAmount: Int? = nil,
            statementDescriptor: String? = nil,
            statementDescriptorSuffix: String? = nil,
            transferData: TransferData? = nil,
            transferGroup: String? = nil,
            onBehalfOf: String? = nil
        ) {
            self.amount = amount
            self.currency = currency
            self.source = source
            self.customer = customer
            self.description = description
            self.metadata = metadata
            self.capture = capture
            self.receiptEmail = receiptEmail
            self.shipping = shipping
            self.applicationFeeAmount = applicationFeeAmount
            self.statementDescriptor = statementDescriptor
            self.statementDescriptorSuffix = statementDescriptorSuffix
            self.transferData = transferData
            self.transferGroup = transferGroup
            self.onBehalfOf = onBehalfOf
        }

        public struct Shipping: Codable, Equatable, Sendable {
            public let address: Address
            public let carrier: String?
            public let name: String
            public let phone: String?
            public let trackingNumber: String?

            private enum CodingKeys: String, CodingKey {
                case address
                case carrier
                case name
                case phone
                case trackingNumber = "tracking_number"
            }

            public init(
                address: Address,
                carrier: String? = nil,
                name: String,
                phone: String? = nil,
                trackingNumber: String? = nil
            ) {
                self.address = address
                self.carrier = carrier
                self.name = name
                self.phone = phone
                self.trackingNumber = trackingNumber
            }
        }

        public struct TransferData: Codable, Equatable, Sendable {
            public let amount: Int?
            public let destination: String

            public init(amount: Int? = nil, destination: String) {
                self.amount = amount
                self.destination = destination
            }
        }
    }
}

extension Stripe.Charges.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let customer: Stripe.Customers.Customer.ID?
        public let description: String?
        public let metadata: [String: String]?
        public let receiptEmail: String?
        public let shipping: Stripe.Charges.Create.Request.Shipping?
        public let fraudDetails: FraudDetails?
        public let transferGroup: String?

        private enum CodingKeys: String, CodingKey {
            case customer
            case description
            case metadata
            case receiptEmail = "receipt_email"
            case shipping
            case fraudDetails = "fraud_details"
            case transferGroup = "transfer_group"
        }

        public init(
            customer: Stripe.Customers.Customer.ID? = nil,
            description: String? = nil,
            metadata: [String: String]? = nil,
            receiptEmail: String? = nil,
            shipping: Stripe.Charges.Create.Request.Shipping? = nil,
            fraudDetails: FraudDetails? = nil,
            transferGroup: String? = nil
        ) {
            self.customer = customer
            self.description = description
            self.metadata = metadata
            self.receiptEmail = receiptEmail
            self.shipping = shipping
            self.fraudDetails = fraudDetails
            self.transferGroup = transferGroup
        }

        public struct FraudDetails: Codable, Equatable, Sendable {
            public let userReport: String?

            private enum CodingKeys: String, CodingKey {
                case userReport = "user_report"
            }

            public init(userReport: String? = nil) {
                self.userReport = userReport
            }
        }
    }
}

extension Stripe.Charges.List {
    public struct Request: Codable, Equatable, Sendable {
        public let created: Stripe.DateFilter?
        public let customer: Stripe.Customers.Customer.ID?
        public let paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?
        public let transferGroup: String?
        public let endingBefore: String?
        public let limit: Int?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case created
            case customer
            case paymentIntent = "payment_intent"
            case transferGroup = "transfer_group"
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            created: Stripe.DateFilter? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil,
            transferGroup: String? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.created = created
            self.customer = customer
            self.paymentIntent = paymentIntent
            self.transferGroup = transferGroup
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Charges.Charge]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }

        public init(
            object: String,
            url: String,
            hasMore: Bool,
            data: [Stripe.Charges.Charge]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}

extension Stripe.Charges.Capture {
    public struct Request: Codable, Equatable, Sendable {
        public let amount: Int?
        public let applicationFeeAmount: Int?
        public let receiptEmail: String?
        public let statementDescriptor: String?
        public let statementDescriptorSuffix: String?
        public let transferData: TransferData?
        public let transferGroup: String?

        private enum CodingKeys: String, CodingKey {
            case amount
            case applicationFeeAmount = "application_fee_amount"
            case receiptEmail = "receipt_email"
            case statementDescriptor = "statement_descriptor"
            case statementDescriptorSuffix = "statement_descriptor_suffix"
            case transferData = "transfer_data"
            case transferGroup = "transfer_group"
        }

        public init(
            amount: Int? = nil,
            applicationFeeAmount: Int? = nil,
            receiptEmail: String? = nil,
            statementDescriptor: String? = nil,
            statementDescriptorSuffix: String? = nil,
            transferData: TransferData? = nil,
            transferGroup: String? = nil
        ) {
            self.amount = amount
            self.applicationFeeAmount = applicationFeeAmount
            self.receiptEmail = receiptEmail
            self.statementDescriptor = statementDescriptor
            self.statementDescriptorSuffix = statementDescriptorSuffix
            self.transferData = transferData
            self.transferGroup = transferGroup
        }

        public struct TransferData: Codable, Equatable, Sendable {
            public let amount: Int?

            public init(amount: Int? = nil) {
                self.amount = amount
            }
        }
    }
}

extension Stripe.Charges.Search {
    public struct Request: Codable, Equatable, Sendable {
        public let query: String
        public let limit: Int?
        public let page: String?

        public init(
            query: String,
            limit: Int? = nil,
            page: String? = nil
        ) {
            self.query = query
            self.limit = limit
            self.page = page
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Charges.Charge]
        public let nextPage: String?
        public let totalCount: Int?

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
            case nextPage = "next_page"
            case totalCount = "total_count"
        }

        public init(
            object: String,
            url: String,
            hasMore: Bool,
            data: [Stripe.Charges.Charge],
            nextPage: String? = nil,
            totalCount: Int? = nil
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
            self.nextPage = nextPage
            self.totalCount = totalCount
        }
    }
}
