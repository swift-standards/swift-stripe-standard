import Foundation

extension Stripe {
    public enum BalanceTransactions: Sendable {}
    public enum Charges: Sendable {}
    public enum Customers: Sendable {}
    public enum Disputes: Sendable {}
    public enum Events: Sendable {}
    public enum Files: Sendable {}
    public enum FileLinks: Sendable {}
    public enum Mandates: Sendable {}
    public enum PaymentIntents: Sendable {}
    public enum Setup: Sendable {}
    public enum Payouts: Sendable {}
    public enum Refunds: Sendable {}
    public enum Tokens: Sendable {}

    public enum Billing: Sendable {}

    public enum Products: Sendable {}
    public enum ShippingRates: Sendable {}

    public enum PaymentMethods: Sendable {}
    public enum PaymentMethodConfigurations: Sendable {}
    public enum PaymentMethodDomains: Sendable {}

    public enum Checkout: Sendable {}
    public enum PaymentLinks: Sendable {}

    public enum Connect: Sendable {}

    public enum Reporting: Sendable {}

    public enum Capital: Sendable {}

    public enum Webhooks: Sendable {}
    public enum WebhookEndpoint: Sendable {}

    public enum Forwarding: Sendable {}

    public enum Fraud: Sendable {}

    public enum Terminal: Sendable {}

    public enum Tax: Sendable {}
}

extension Stripe.Fraud {
    public enum Reviews: Sendable {}
    public enum EarlyFraudWarnings: Sendable {}
    public enum ValueLists: Sendable {}
    public enum ValueListItems: Sendable {}
}

extension Stripe.Billing {
    public enum Customer: Sendable {}
    public enum Credit: Sendable {}
    public enum Subscriptions: Sendable {}
    public enum Tax: Sendable {}
    public enum Usage: Sendable {}
    public enum Plans: Sendable {}
    public enum Quotes: Sendable {}
    public enum Meters: Sendable {}
    public enum MeterEvents: Sendable {}
    public enum MeterEventAdjustments: Sendable {}
    public enum MeterEventSummary: Sendable {}
    public enum TestClocks: Sendable {}
    public enum Alerts: Sendable {}
    public enum CreditBalanceSummary: Sendable {}
    public enum UsageRecords: Sendable {}
    public enum UsageRecordSummary: Sendable {}
    public enum TaxIDs: Sendable {}
}

extension Stripe.Billing.Credit {
    public enum Balance: Sendable {}
}

extension Stripe.Billing.Tax {
    public enum IDs: Sendable {}
}
extension Stripe.Billing.Subscriptions {
    public enum Items: Sendable {}
    public enum Schedule: Sendable {}
}

extension Stripe.Billing.Customer {
    public enum Balance: Sendable {}

    public enum Portal: Sendable {}
}

extension Stripe.Connect {
    public enum Accounts: Sendable {}
    public enum AccountSession: Sendable {}
}

extension Stripe.Terminal {
    public enum Readers: Sendable {}
    public enum Locations: Sendable {}
    public enum Configuration: Sendable {}
    public enum ConnectionToken: Sendable {}
    public enum HardwareOrders: Sendable {}
    public enum HardwareProducts: Sendable {}
    public enum HardwareSKUs: Sendable {}
    public enum HardwareShippingMethods: Sendable {}
}

extension Stripe.PaymentMethods {
    public enum Sources: Sendable {}
}

extension Stripe.Products {
    public enum Coupons: Sendable {}
    public enum Discounts: Sendable {}
    public enum Prices: Sendable {}
    public enum PromotionCodes: Sendable {}
    public enum ShippingRates: Sendable {}
    public enum TaxCodes: Sendable {}
    public enum TaxRates: Sendable {}
}

extension Stripe.Tax {
    public enum Calculations: Sendable {}
    public enum Registrations: Sendable {}
    public enum Settings: Sendable {}
    public enum Transactions: Sendable {}
}
