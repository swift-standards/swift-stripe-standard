import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers.BankAccounts {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/customer_bank_accounts/create.md
        case create(customerId: Stripe.Customers.Customer.ID, request: Create.Request)
        // https://docs.stripe.com/api/customer_bank_accounts/retrieve.md
        case retrieve(customerId: Stripe.Customers.Customer.ID, bankAccountId: BankAccount.ID)
        // https://docs.stripe.com/api/customer_bank_accounts/update.md
        case update(
            customerId: Stripe.Customers.Customer.ID,
            bankAccountId: BankAccount.ID,
            request: Update.Request
        )
        // https://docs.stripe.com/api/customer_bank_accounts/list.md
        case list(customerId: Stripe.Customers.Customer.ID, request: List.Request)
        // https://docs.stripe.com/api/customer_bank_accounts/delete.md
        case delete(customerId: Stripe.Customers.Customer.ID, bankAccountId: BankAccount.ID)
        // https://docs.stripe.com/api/customer_bank_accounts/verify.md
        case verify(
            customerId: Stripe.Customers.Customer.ID,
            bankAccountId: BankAccount.ID,
            request: Verify.Request
        )
    }
}
