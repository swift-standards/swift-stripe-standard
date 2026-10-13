import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers.BankAccounts {
    public enum API: Equatable, Sendable {
        case create(customerId: Stripe.Customers.Customer.ID, request: Create.Request)
        case retrieve(customerId: Stripe.Customers.Customer.ID, bankAccountId: BankAccount.ID)
        case update(
            customerId: Stripe.Customers.Customer.ID,
            bankAccountId: BankAccount.ID,
            request: Update.Request
        )
        case list(customerId: Stripe.Customers.Customer.ID, request: List.Request)
        case delete(customerId: Stripe.Customers.Customer.ID, bankAccountId: BankAccount.ID)
        case verify(
            customerId: Stripe.Customers.Customer.ID,
            bankAccountId: BankAccount.ID,
            request: Verify.Request
        )
    }
}
