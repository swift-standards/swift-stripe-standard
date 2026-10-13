public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Invoices {
    public enum Create {}

    public enum CreatePreview {}

    public enum Update {}

    public enum List {}

    public enum Finalize {}

    public enum Pay {}

    public enum Send {}

    public enum Void {}
}

extension Stripe.Billing.Invoices.Create {
    public struct Request: Codable, Equatable, Sendable {
        public let customer: Stripe.Customers.Customer.ID?
        public let autoAdvance: Bool?
        public let collectionMethod: Stripe.Billing.Invoice.CollectionMethod?
        public let currency: Stripe.Currency?
        public let description: String?
        public let dueDate: Date?
        public let metadata: [String: String]?
        public let subscription: Stripe.Billing.Subscription.ID?

        private enum CodingKeys: String, CodingKey {
            case customer
            case autoAdvance = "auto_advance"
            case collectionMethod = "collection_method"
            case currency
            case description
            case dueDate = "due_date"
            case metadata
            case subscription
        }

        public init(
            customer: Stripe.Customers.Customer.ID? = nil,
            autoAdvance: Bool? = nil,
            collectionMethod: Stripe.Billing.Invoice.CollectionMethod? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            dueDate: Date? = nil,
            metadata: [String: String]? = nil,
            subscription: Stripe.Billing.Subscription.ID? = nil
        ) {
            self.customer = customer
            self.autoAdvance = autoAdvance
            self.collectionMethod = collectionMethod
            self.currency = currency
            self.description = description
            self.dueDate = dueDate
            self.metadata = metadata
            self.subscription = subscription
        }
    }
}

extension Stripe.Billing.Invoices.CreatePreview {
    public struct Request: Codable, Equatable, Sendable {
        public let customer: Stripe.Customers.Customer.ID?
        public let collectionMethod: Stripe.Billing.Invoice.CollectionMethod?
        public let currency: Stripe.Currency?
        public let description: String?
        public let subscription: Stripe.Billing.Subscription.ID?
        public let subscriptionDetails: SubscriptionDetails?

        private enum CodingKeys: String, CodingKey {
            case customer
            case collectionMethod = "collection_method"
            case currency
            case description
            case subscription
            case subscriptionDetails = "subscription_details"
        }

        public init(
            customer: Stripe.Customers.Customer.ID? = nil,
            collectionMethod: Stripe.Billing.Invoice.CollectionMethod? = nil,
            currency: Stripe.Currency? = nil,
            description: String? = nil,
            subscription: Stripe.Billing.Subscription.ID? = nil,
            subscriptionDetails: SubscriptionDetails? = nil
        ) {
            self.customer = customer
            self.collectionMethod = collectionMethod
            self.currency = currency
            self.description = description
            self.subscription = subscription
            self.subscriptionDetails = subscriptionDetails
        }

        public struct SubscriptionDetails: Codable, Equatable, Sendable {
            public let items: [Item]?
            public let prorationBehavior: Stripe.Billing.Subscription.ProrationBehavior?
            public let prorationDate: Date?

            private enum CodingKeys: String, CodingKey {
                case items
                case prorationBehavior = "proration_behavior"
                case prorationDate = "proration_date"
            }

            public init(
                items: [Item]? = nil,
                prorationBehavior: Stripe.Billing.Subscription.ProrationBehavior? = nil,
                prorationDate: Date? = nil
            ) {
                self.items = items
                self.prorationBehavior = prorationBehavior
                self.prorationDate = prorationDate
            }

            public struct Item: Codable, Equatable, Sendable {
                public let id: String?
                public let price: Stripe.Products.Price.ID?
                public let quantity: Int?
                public let deleted: Bool?
                public let metadata: [String: String]?
                public let taxRates: [String]?

                private enum CodingKeys: String, CodingKey {
                    case id
                    case price
                    case quantity
                    case deleted
                    case metadata
                    case taxRates = "tax_rates"
                }

                public init(
                    id: String? = nil,
                    price: Stripe.Products.Price.ID? = nil,
                    quantity: Int? = nil,
                    deleted: Bool? = nil,
                    metadata: [String: String]? = nil,
                    taxRates: [String]? = nil
                ) {
                    self.id = id
                    self.price = price
                    self.quantity = quantity
                    self.deleted = deleted
                    self.metadata = metadata
                    self.taxRates = taxRates
                }
            }
        }
    }
}

extension Stripe.Billing.Invoices.Update {
    public struct Request: Codable, Equatable, Sendable {
        public let autoAdvance: Bool?
        public let collectionMethod: Stripe.Billing.Invoice.CollectionMethod?
        public let description: String?
        public let dueDate: Date?
        public let metadata: [String: String]?

        private enum CodingKeys: String, CodingKey {
            case autoAdvance = "auto_advance"
            case collectionMethod = "collection_method"
            case description
            case dueDate = "due_date"
            case metadata
        }

        public init(
            autoAdvance: Bool? = nil,
            collectionMethod: Stripe.Billing.Invoice.CollectionMethod? = nil,
            description: String? = nil,
            dueDate: Date? = nil,
            metadata: [String: String]? = nil
        ) {
            self.autoAdvance = autoAdvance
            self.collectionMethod = collectionMethod
            self.description = description
            self.dueDate = dueDate
            self.metadata = metadata
        }
    }
}

extension Stripe.Billing.Invoices.List {
    public struct Request: Codable, Equatable, Sendable {
        public let collectionMethod: Stripe.Billing.Invoice.CollectionMethod?
        public let created: Stripe.DateFilter?
        public let customer: Stripe.Customers.Customer.ID?
        public let dueDate: Stripe.DateFilter?
        public let endingBefore: String?
        public let limit: Int?
        public let startingAfter: String?
        public let status: Stripe.Billing.Invoice.Status?
        public let subscription: Stripe.Billing.Subscription.ID?

        private enum CodingKeys: String, CodingKey {
            case collectionMethod = "collection_method"
            case created
            case customer
            case dueDate = "due_date"
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
            case status
            case subscription
        }

        public init(
            collectionMethod: Stripe.Billing.Invoice.CollectionMethod? = nil,
            created: Stripe.DateFilter? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            dueDate: Stripe.DateFilter? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil,
            status: Stripe.Billing.Invoice.Status? = nil,
            subscription: Stripe.Billing.Subscription.ID? = nil
        ) {
            self.collectionMethod = collectionMethod
            self.created = created
            self.customer = customer
            self.dueDate = dueDate
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
            self.status = status
            self.subscription = subscription
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Billing.Invoice]

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
            data: [Stripe.Billing.Invoice]
        ) {
            self.object = object
            self.url = url
            self.hasMore = hasMore
            self.data = data
        }
    }
}

extension Stripe.Billing.Invoices.Finalize {
    public struct Request: Codable, Equatable, Sendable {
        public let autoAdvance: Bool?

        private enum CodingKeys: String, CodingKey {
            case autoAdvance = "auto_advance"
        }

        public init(autoAdvance: Bool? = nil) {
            self.autoAdvance = autoAdvance
        }
    }
}

extension Stripe.Billing.Invoices.Pay {
    public struct Request: Codable, Equatable, Sendable {
        public let paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID?
        public let source: String?

        private enum CodingKeys: String, CodingKey {
            case paymentMethod = "payment_method"
            case source
        }

        public init(
            paymentMethod: Stripe.PaymentMethods.PaymentMethod.ID? = nil,
            source: String? = nil
        ) {
            self.paymentMethod = paymentMethod
            self.source = source
        }
    }
}

extension Stripe.Billing.Invoices.Send {
    public struct Request: Codable, Equatable, Sendable {
        public init() {}
    }
}

extension Stripe.Billing.Invoices.Void {
    public struct Request: Codable, Equatable, Sendable {
        public init() {}
    }
}
