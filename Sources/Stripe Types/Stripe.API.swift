public import Stripe_Balance_Transactions_Types
public import Stripe_Balance_Types
public import Stripe_Billing_Types
import Stripe_Capital_Types
public import Stripe_Charges_Types
public import Stripe_Checkout_Types
import Stripe_Climate_Types
public import Stripe_Confirmation_Token_Types
import Stripe_Connect_Types
public import Stripe_Customer_Session_Types
public import Stripe_Customers_Types
public import Stripe_Disputes_Types
import Stripe_Entitlements_Types
import Stripe_Event_Destinations_Types
public import Stripe_Events_Types
public import Stripe_File_Links_Types
public import Stripe_Files_Types
import Stripe_Financial_Connections_Types
import Stripe_Forwarding_Types
import Stripe_Fraud_Types
import Stripe_Identity_Types
import Stripe_Issuing_Types
public import Stripe_Mandates_Types
public import Stripe_Payment_Intents_Types
public import Stripe_Payment_Link_Types
public import Stripe_Payment_Methods_Types
public import Stripe_Payouts_Types
public import Stripe_Products_Types
public import Stripe_Refunds_Types
import Stripe_Reporting_Types
public import Stripe_Setup_Attempts_Types
public import Stripe_Setup_Intents_Types
import Stripe_Sigma_Types
import Stripe_Tax_Types
import Stripe_Terminal_Types
public import Stripe_Tokens_Types
import Stripe_Treasury_Types
import Stripe_Webhooks_Types

extension Stripe {
    public enum API: Equatable, Sendable {
        case balance(Stripe.Balance.API)
        case balanceTransactions(Stripe.BalanceTransactions.API)
        case charges(Stripe.Charges.API)
        case customers(Stripe.Customers.API)
        case customerSessions(Stripe.Customers.Customer.Sessions.API)
        case disputes(Stripe.Disputes.API)
        case events(Stripe.Events.API)
        case files(Stripe.Files.API)
        case fileLinks(Stripe.FileLinks.API)
        case mandates(Stripe.Mandates.API)
        case paymentIntents(Stripe.PaymentIntents.API)
        case setupIntents(Stripe.Setup.Intents.API)
        case setupAttempts(Stripe.Setup.Attempts.API)
        case payouts(Stripe.Payouts.API)
        case refunds(Stripe.Refunds.API)
        case confirmationToken(Stripe.ConfirmationToken.API)
        case tokens(Stripe.Tokens.API)
        case paymentMethods(Stripe.PaymentMethods.API)
        case products(Stripe.Products.API)
        case checkout(Stripe.Checkout.API)
        case paymentLinks(Stripe.PaymentLinks.API)
        case billing(Stripe.Billing.API)
    }
}
