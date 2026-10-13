public import Stripe_Balance_Transactions_Types
public import Stripe_Balance_Types
public import Stripe_Billing_Types
public import Stripe_Charges_Types
public import Stripe_Checkout_Types
public import Stripe_Confirmation_Token_Types
public import Stripe_Customer_Session_Types
public import Stripe_Customers_Types
public import Stripe_Disputes_Types
import Stripe_Event_Destinations_Types
public import Stripe_Events_Types
public import Stripe_File_Links_Types
public import Stripe_Files_Types
public import Stripe_Mandates_Types
public import Stripe_Payment_Intents_Types
public import Stripe_Payment_Link_Types
public import Stripe_Payment_Methods_Types
public import Stripe_Payouts_Types
public import Stripe_Products_Types
public import Stripe_Refunds_Types
public import Stripe_Setup_Attempts_Types
public import Stripe_Setup_Intents_Types
public import Stripe_Tokens_Types

extension Stripe {
    public struct Client: Sendable {
        public var balance: Stripe.Balance.Client
        public var balanceTransactions: Stripe.BalanceTransactions.Client
        public var charges: Stripe.Charges.Client
        public var customers: Stripe.Customers.Client
        public var customerSessions: Stripe.Customers.Customer.Sessions.Client
        public var disputes: Stripe.Disputes.Client
        public var events: Stripe.Events.Client
        public var files: Stripe.Files.Client
        public var fileLinks: Stripe.FileLinks.Client
        public var mandates: Stripe.Mandates.Client
        public var paymentIntents: Stripe.PaymentIntents.Client
        public var setupIntents: Stripe.Setup.Intents.Client
        public var setupAttempts: Stripe.Setup.Attempts.Client
        public var payouts: Stripe.Payouts.Client
        public var refunds: Stripe.Refunds.Client
        public var confirmationToken: Stripe.ConfirmationTokenClient
        public var tokens: Stripe.Tokens.Client
        public var paymentMethods: Stripe.PaymentMethods.Client
        public var paymentLinks: Stripe.PaymentLinks.Client
        public var products: Stripe.Products.Client
        public var checkout: Stripe.Checkout.Client
        public var billing: Stripe.Billing.Client

        public init(
            balance: Stripe.Balance.Client,
            balanceTransactions: Stripe.BalanceTransactions.Client,
            charges: Stripe.Charges.Client,
            customers: Stripe.Customers.Client,
            customerSessions: Stripe.Customers.Customer.Sessions.Client,
            disputes: Stripe.Disputes.Client,
            events: Stripe.Events.Client,
            files: Stripe.Files.Client,
            fileLinks: Stripe.FileLinks.Client,
            mandates: Stripe.Mandates.Client,
            paymentIntents: Stripe.PaymentIntents.Client,
            setupIntents: Stripe.Setup.Intents.Client,
            setupAttempts: Stripe.Setup.Attempts.Client,
            payouts: Stripe.Payouts.Client,
            refunds: Stripe.Refunds.Client,
            confirmationToken: Stripe.ConfirmationTokenClient,
            tokens: Stripe.Tokens.Client,
            paymentMethods: Stripe.PaymentMethods.Client,
            paymentLinks: Stripe.PaymentLinks.Client,
            products: Stripe.Products.Client,
            checkout: Stripe.Checkout.Client,
            billing: Stripe.Billing.Client
        ) {
            self.balance = balance
            self.balanceTransactions = balanceTransactions
            self.charges = charges
            self.customers = customers
            self.customerSessions = customerSessions
            self.disputes = disputes
            self.events = events
            self.files = files
            self.fileLinks = fileLinks
            self.mandates = mandates
            self.paymentIntents = paymentIntents
            self.setupIntents = setupIntents
            self.setupAttempts = setupAttempts
            self.payouts = payouts
            self.refunds = refunds
            self.confirmationToken = confirmationToken
            self.tokens = tokens
            self.paymentMethods = paymentMethods
            self.paymentLinks = paymentLinks
            self.products = products
            self.checkout = checkout
            self.billing = billing
        }
    }
}
