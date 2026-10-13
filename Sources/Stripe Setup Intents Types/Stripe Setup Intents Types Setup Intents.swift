import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Setup.Intents {
    public enum Create {}

    public enum Update {}

    public enum List {}

    public enum Confirm {}

    public enum Cancel {}

    public enum VerifyMicrodeposits {}
}

extension Stripe.Setup.Intents.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let attachToSelf: Bool?
        public let confirm: Bool?
        public let customer: Stripe.Customers.Customer.ID?
        public let description: String?
        public let metadata: [String: String]?
        public let paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID?
        public let paymentMethodTypes: [String]?
        public let returnUrl: String?
        public let usage: String?

        private enum CodingKeys: String, CodingKey {
            case attachToSelf = "attach_to_self"
            case confirm
            case customer
            case description
            case metadata
            case paymentMethod = "payment_method"
            case paymentMethodTypes = "payment_method_types"
            case returnUrl = "return_url"
            case usage
        }

        public init(
            attachToSelf: Bool? = nil,
            confirm: Bool? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            description: String? = nil,
            metadata: [String: String]? = nil,
            paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            paymentMethodTypes: [String]? = nil,
            returnUrl: String? = nil,
            usage: String? = nil
        ) {
            self.attachToSelf = attachToSelf
            self.confirm = confirm
            self.customer = customer
            self.description = description
            self.metadata = metadata
            self.paymentMethod = paymentMethod
            self.paymentMethodTypes = paymentMethodTypes
            self.returnUrl = returnUrl
            self.usage = usage
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(attachToSelf, forKey: .attachToSelf)
            try container.encodeIfPresent(confirm, forKey: .confirm)
            try container.encodeIfPresent(customer, forKey: .customer)
            try container.encodeIfPresent(description, forKey: .description)
            try container.encodeIfPresent(metadata, forKey: .metadata)
            try container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
            try container.encodeIfPresent(paymentMethodTypes, forKey: .paymentMethodTypes)
            try container.encodeIfPresent(returnUrl, forKey: .returnUrl)
            try container.encodeIfPresent(usage, forKey: .usage)
        }

        public init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            attachToSelf = try container.decodeIfPresent(Bool.self, forKey: .attachToSelf)
            confirm = try container.decodeIfPresent(Bool.self, forKey: .confirm)
            customer = try container.decodeIfPresent(
                Stripe.Customers.Customer.ID.self,
                forKey: .customer
            )
            description = try container.decodeIfPresent(String.self, forKey: .description)
            metadata = try container.decodeIfPresent([String: String].self, forKey: .metadata)
            paymentMethod = try container.decodeIfPresent(
                Stripe.PaymentMethods.PaymentMethod.ID.self,
                forKey: .paymentMethod
            )
            paymentMethodTypes = try container.decodeIfPresent(
                [String].self,
                forKey: .paymentMethodTypes
            )
            returnUrl = try container.decodeIfPresent(String.self, forKey: .returnUrl)
            usage = try container.decodeIfPresent(String.self, forKey: .usage)
        }
    }
}

extension Stripe.Setup.Intents.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let attachToSelf: Bool?
        public let customer: Stripe.Customers.Customer.ID?
        public let description: String?
        public let metadata: [String: String]?
        public let paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID?
        public let paymentMethodTypes: [String]?

        private enum CodingKeys: String, CodingKey {
            case attachToSelf = "attach_to_self"
            case customer
            case description
            case metadata
            case paymentMethod = "payment_method"
            case paymentMethodTypes = "payment_method_types"
        }

        public init(
            attachToSelf: Bool? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            description: String? = nil,
            metadata: [String: String]? = nil,
            paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            paymentMethodOptions: [String: Any]? = nil,
            paymentMethodTypes: [String]? = nil
        ) {
            self.attachToSelf = attachToSelf
            self.customer = customer
            self.description = description
            self.metadata = metadata
            self.paymentMethod = paymentMethod
            self.paymentMethodTypes = paymentMethodTypes
        }

        public func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(attachToSelf, forKey: .attachToSelf)
            try container.encodeIfPresent(customer, forKey: .customer)
            try container.encodeIfPresent(description, forKey: .description)
            try container.encodeIfPresent(metadata, forKey: .metadata)
            try container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
            try container.encodeIfPresent(paymentMethodTypes, forKey: .paymentMethodTypes)
        }

        public init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            attachToSelf = try container.decodeIfPresent(Bool.self, forKey: .attachToSelf)
            customer = try container.decodeIfPresent(
                Stripe.Customers.Customer.ID.self,
                forKey: .customer
            )
            description = try container.decodeIfPresent(String.self, forKey: .description)
            metadata = try container.decodeIfPresent([String: String].self, forKey: .metadata)
            paymentMethod = try container.decodeIfPresent(
                Stripe.PaymentMethods.PaymentMethod.ID.self,
                forKey: .paymentMethod
            )
            paymentMethodTypes = try container.decodeIfPresent(
                [String].self,
                forKey: .paymentMethodTypes
            )
        }
    }
}

extension Stripe.Setup.Intents.List {
    public struct Request: Codable, Equatable, Sendable {
        public let attachToSelf: Bool?
        public let created: Stripe.DateFilter?
        public let customer: Stripe.Customers.Customer.ID?
        public let endingBefore: String?
        public let limit: Int?
        public let paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID?
        public let startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case attachToSelf = "attach_to_self"
            case created
            case customer
            case endingBefore = "ending_before"
            case limit
            case paymentMethod = "payment_method"
            case startingAfter = "starting_after"
        }

        public init(
            attachToSelf: Bool? = nil,
            created: Stripe.DateFilter? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            startingAfter: String? = nil
        ) {
            self.attachToSelf = attachToSelf
            self.created = created
            self.customer = customer
            self.endingBefore = endingBefore
            self.limit = limit
            self.paymentMethod = paymentMethod
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Setup.Intent]

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
            data: [Stripe.Setup.Intent]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}

extension Stripe.Setup.Intents.Confirm {
    public struct Request: Codable, Equatable, Sendable {
        public let clientSecret: String?
        public let paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID?
        public let returnUrl: String?

        private enum CodingKeys: String, CodingKey {
            case clientSecret = "client_secret"
            case paymentMethod = "payment_method"
            case returnUrl = "return_url"
        }

        public init(
            clientSecret: String? = nil,
            paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            returnUrl: String? = nil
        ) {
            self.clientSecret = clientSecret
            self.paymentMethod = paymentMethod
            self.returnUrl = returnUrl
        }
    }
}

extension Stripe.Setup.Intents.Cancel {
    public struct Request: Codable, Equatable, Sendable {
        public let cancellationReason: Stripe.Setup.Intent.CancellationReason?

        private enum CodingKeys: String, CodingKey {
            case cancellationReason = "cancellation_reason"
        }

        public init(
            cancellationReason: Stripe.Setup.Intent.CancellationReason? = nil
        ) {
            self.cancellationReason = cancellationReason
        }
    }
}

extension Stripe.Setup.Intents.VerifyMicrodeposits {
    public struct Request: Codable, Equatable, Sendable {
        public let amounts: [Int]?
        public let descriptorCode: String?

        private enum CodingKeys: String, CodingKey {
            case amounts
            case descriptorCode = "descriptor_code"
        }

        public init(
            amounts: [Int]? = nil,
            descriptorCode: String? = nil
        ) {
            self.amounts = amounts
            self.descriptorCode = descriptorCode
        }
    }
}
