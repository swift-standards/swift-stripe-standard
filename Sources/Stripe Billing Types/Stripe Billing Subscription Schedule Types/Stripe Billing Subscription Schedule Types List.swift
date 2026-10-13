import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Billing.Subscription.Schedule.List {
    public struct Request: Codable, Equatable, Sendable {
        public var canceledAt: Stripe.DateFilter?
        public var completedAt: Stripe.DateFilter?
        public var created: Stripe.DateFilter?
        public var customer: Stripe.Customers.Customer.ID?
        public var endingBefore: String?
        public var limit: Int?
        public var releasedAt: Stripe.DateFilter?
        public var scheduled: Bool?
        public var startingAfter: String?

        public init(
            canceledAt: Stripe.DateFilter? = nil,
            completedAt: Stripe.DateFilter? = nil,
            created: Stripe.DateFilter? = nil,
            customer: Stripe.Customers.Customer.ID? = nil,
            endingBefore: String? = nil,
            limit: Int? = nil,
            releasedAt: Stripe.DateFilter? = nil,
            scheduled: Bool? = nil,
            startingAfter: String? = nil
        ) {
            self.canceledAt = canceledAt
            self.completedAt = completedAt
            self.created = created
            self.customer = customer
            self.endingBefore = endingBefore
            self.limit = limit
            self.releasedAt = releasedAt
            self.scheduled = scheduled
            self.startingAfter = startingAfter
        }

        private enum CodingKeys: String, CodingKey {
            case canceledAt = "canceled_at"
            case completedAt = "completed_at"
            case created
            case customer
            case endingBefore = "ending_before"
            case limit
            case releasedAt = "released_at"
            case scheduled
            case startingAfter = "starting_after"
        }
    }

    public struct Response: Codable, Sendable {
        public let object: String
        public let url: String
        public let hasMore: Bool
        public let data: [Stripe.Billing.Subscription.Schedule]

        private enum CodingKeys: String, CodingKey {
            case object
            case url
            case hasMore = "has_more"
            case data
        }
    }
}
