public import Async_Lifecycle
import Dependencies
import Either
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Customers.BankAccounts {
    @Witness
    public struct Client: Sendable {
        public var create:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: Create.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Customers.BankAccounts.Create.Error
                >)
                -> BankAccount

        public var retrieve:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ bankAccountId: BankAccount.ID)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Customers.BankAccounts.Retrieve.Error
                >) -> BankAccount

        public var update:
            @Sendable (
                _ customerId: Stripe.Customers.Customer.ID, _ bankAccountId: BankAccount.ID,
                _ request: Update.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Customers.BankAccounts.Update.Error
            >) -> BankAccount

        public var list:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ request: List.Request)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Customers.BankAccounts.List.Error
                >)
                -> List.Response

        public var delete:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID, _ bankAccountId: BankAccount.ID)
                async throws(Either<
                    Async.Lifecycle.Error, Stripe.Customers.BankAccounts.Delete.Error
                >) -> DeletedObject<BankAccount>

        public var verify:
            @Sendable (
                _ customerId: Stripe.Customers.Customer.ID, _ bankAccountId: BankAccount.ID,
                _ request: Verify.Request
            ) async throws(Either<
                Async.Lifecycle.Error, Stripe.Customers.BankAccounts.Verify.Error
            >) -> BankAccount
    }
}
