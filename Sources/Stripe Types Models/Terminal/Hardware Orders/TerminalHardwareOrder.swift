public import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct TerminalHardwareOrder: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var amount: Int?
    public var currency: Stripe.Currency?
    public var hardwareOrderItems: [TerminalHardwareOrderLineItem]?
    public var metadata: [String: String]?
    public var paymentType: TerminalHardwareOrderPaymentType?
    public var shipping: TerminalHardwareOrderShipping?
    public var shippingMethod: String?
    public var status: TerminalHardwareOrderStatus?
    public var object: String
    public var created: Date
    public var livemode: Bool
    public var shipmentTracking: [TerminalHardwareOrderShipmentTracking]?
    public var tax: Int?
    public var totalTaxAmounts: [TerminalHardwareOrderTotalTaxAmount]?
    public var updated: Date?

    public init(
        id: ID,
        amount: Int? = nil,
        currency: Stripe.Currency? = nil,
        hardwareOrderItems: [TerminalHardwareOrderLineItem]? = nil,
        metadata: [String: String]? = nil,
        paymentType: TerminalHardwareOrderPaymentType? = nil,
        shipping: TerminalHardwareOrderShipping? = nil,
        shippingMethod: String? = nil,
        status: TerminalHardwareOrderStatus? = nil,
        object: String,
        created: Date,
        livemode: Bool,
        shipmentTracking: [TerminalHardwareOrderShipmentTracking]? = nil,
        tax: Int? = nil,
        totalTaxAmounts: [TerminalHardwareOrderTotalTaxAmount]? = nil,
        updated: Date? = nil
    ) {
        self.id = id
        self.amount = amount
        self.currency = currency
        self.hardwareOrderItems = hardwareOrderItems
        self.metadata = metadata
        self.paymentType = paymentType
        self.shipping = shipping
        self.shippingMethod = shippingMethod
        self.status = status
        self.object = object
        self.created = created
        self.livemode = livemode
        self.shipmentTracking = shipmentTracking
        self.tax = tax
        self.totalTaxAmounts = totalTaxAmounts
        self.updated = updated
    }
}

public struct TerminalHardwareOrderLineItem: Codable, Hashable, Sendable {
    public var amount: Int?
    public var currency: Stripe.Currency?
    public var quantity: Int?
    public var terminalHardwareSku: TerminalHardwareSKU?

    public init(
        amount: Int? = nil,
        currency: Stripe.Currency? = nil,
        quantity: Int? = nil,
        terminalHardwareSku: TerminalHardwareSKU? = nil
    ) {
        self.amount = amount
        self.currency = currency
        self.quantity = quantity
        self.terminalHardwareSku = terminalHardwareSku
    }
}

public enum TerminalHardwareOrderPaymentType: String, Codable, Sendable {
    case monthlyInvoice = "monthly_invoice"
    case paymentIntent = "payment_intent"
    case `none`
}

public struct TerminalHardwareOrderShipping: Codable, Hashable, Sendable {
    public var address: Address?
    public var amount: Int?
    public var company: String?
    public var currency: Stripe.Currency?
    public var email: String?
    public var name: String?
    public var phone: String?

    public init(
        address: Address? = nil,
        amount: Int? = nil,
        company: String? = nil,
        currency: Stripe.Currency? = nil,
        email: String? = nil,
        name: String? = nil,
        phone: String? = nil
    ) {
        self.address = address
        self.amount = amount
        self.company = company
        self.currency = currency
        self.email = email
        self.name = name
        self.phone = phone
    }
}

public enum TerminalHardwareOrderStatus: String, Codable, Sendable {
    case pending
    case canceled
    case shipped
    case delivered
    case undeliverable
}

public struct TerminalHardwareOrderShipmentTracking: Codable, Hashable, Sendable {
    public var carrier: TerminalHardwareOrderShipmentTrackingCarrier?
    public var trackingNumber: String?

    public init(
        carrier: TerminalHardwareOrderShipmentTrackingCarrier? = nil,
        trackingNumber: String? = nil
    ) {
        self.carrier = carrier
        self.trackingNumber = trackingNumber
    }
}

public enum TerminalHardwareOrderShipmentTrackingCarrier: String, Codable, Sendable {
    case other
    case ups
    case purolator
    case fedex
    case australiaPost = "australia_post"
    case usps
    case canadaPost = "canada_post"
    case dhl
    case dpd
}

public struct TerminalHardwareOrderTotalTaxAmount: Codable, Hashable, Sendable {
    public var amount: Int?
    public var inclusive: Bool?
    public var rate: TerminalHardwareOrderTotalTaxAmountRate?

    public init(
        amount: Int? = nil,
        inclusive: Bool? = nil,
        rate: TerminalHardwareOrderTotalTaxAmountRate? = nil
    ) {
        self.amount = amount
        self.inclusive = inclusive
        self.rate = rate
    }
}

public struct TerminalHardwareOrderTotalTaxAmountRate: Codable, Hashable, Sendable {
    public var displayName: String?
    public var jurisdiction: String?
    public var percentage: String?

    public init(
        displayName: String? = nil,
        jurisdiction: String? = nil,
        percentage: String? = nil
    ) {
        self.displayName = displayName
        self.jurisdiction = jurisdiction
        self.percentage = percentage
    }
}

public struct TerminalHardwareOrderList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [TerminalHardwareOrder]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [TerminalHardwareOrder]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}
