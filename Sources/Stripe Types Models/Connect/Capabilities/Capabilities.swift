public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Connect {
    public struct Capability: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        @ExpandableOf<Stripe.Connect.Account> public var account: Stripe.Connect.Account.ID?
        public var requested: Bool?
        public var requirements: Stripe.Connect.Capability.Requirements?
        public var status: Stripe.Connect.Capability.Status?
        public var object: String
        public var futureRequirements: Stripe.Connect.Capability.FutureRequirements?
        public var requestedAt: Date?

        public init(
            id: ID,
            account: Stripe.Connect.Account.ID? = nil,
            requested: Bool? = nil,
            requirements: Stripe.Connect.Capability.Requirements? = nil,
            status: Stripe.Connect.Capability.Status? = nil,
            object: String,
            futureRequirements: Stripe.Connect.Capability.FutureRequirements? = nil,
            requestedAt: Date? = nil
        ) {
            self.id = id
            self._account = Expandable(id: account)
            self.requested = requested
            self.requirements = requirements
            self.status = status
            self.object = object
            self.futureRequirements = futureRequirements
            self.requestedAt = requestedAt
        }
    }
}

extension Stripe.Connect.Capability {
    public struct Requirements: Codable, Hashable, Sendable {
        public var alternatives: [Stripe.Connect.Capability.Requirements.Alternative]?
        public var currentDeadline: Date?
        public var currentlyDue: [String]?
        public var disabledReason: String?
        public var errors: [Stripe.Connect.Account.Requirements.Error]?
        public var eventuallyDue: [String]?
        public var pastDue: [String]?
        public var pendingVerification: [String]?
    }
}

extension Stripe.Connect.Capability.Requirements {
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

extension Stripe.Connect.Capability {
    public enum Status: String, Codable, Sendable {
        case active
        case inactive
        case pending
        case unrequested
    }
}

extension Stripe.Connect.Capability {
    public struct FutureRequirements: Codable, Hashable, Sendable {
        public var alternatives: [Stripe.Connect.Capability.Requirements.Alternative]?
        public var currentDeadline: Date?
        public var currentlyDue: [String]?
        public var disabledReason: String?
        public var errors: [Stripe.Connect.Account.Requirements.Error]?
        public var eventuallyDue: [String]?
        public var pastDue: [String]?
        public var pendingVerification: [String]?

        public init(
            alternatives: [Stripe.Connect.Capability.Requirements.Alternative]? = nil,
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

extension Stripe.Connect.Capability {
    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [Stripe.Connect.Capability]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [Stripe.Connect.Capability]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
