public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Fraud.EarlyFraudWarnings {
    public struct EarlyFraudWarning: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>

        public var id: ID
        public var object: String
        public var actionable: Bool?
        @ExpandableOf<Stripe.Charges.Charge> public var charge
        public var created: Date
        public var fraudType: FraudType?
        public var livemode: Bool?
        @ExpandableOf<Stripe.PaymentIntents.PaymentIntent> public var paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID?

        public init(
            id: ID,
            object: String,
            actionable: Bool? = nil,
            charge: Stripe.Charges.Charge.ID? = nil,
            created: Date,
            fraudType: FraudType? = nil,
            livemode: Bool? = nil,
            paymentIntent: Stripe.PaymentIntents.PaymentIntent.ID? = nil
        ) {
            self.id = id
            self.object = object
            self.actionable = actionable
            self._charge = Expandable(id: charge)
            self.created = created
            self.fraudType = fraudType
            self.livemode = livemode
            self._paymentIntent = Expandable(id: paymentIntent)
        }
    }

    public enum FraudType: String, Codable, Sendable {
        case cardNeverReceived = "card_never_received"
        case fraudulentCardApplication = "fraudulent_card_application"
        case madeWithCounterfeitCard = "made_with_counterfeit_card"
        case madeWithLostCard = "made_with_lost_card"
        case madeWithStolenCard = "made_with_stolen_card"
        case misc
        case unauthorizedUseOfCard = "unauthorized_use_of_card"
    }

    public struct List: Codable, Hashable, Sendable {
        public var object: String
        public var hasMore: Bool?
        public var url: String?
        public var data: [EarlyFraudWarning]?

        public init(
            object: String,
            hasMore: Bool? = nil,
            url: String? = nil,
            data: [EarlyFraudWarning]? = nil
        ) {
            self.object = object
            self.hasMore = hasMore
            self.url = url
            self.data = data
        }
    }
}
