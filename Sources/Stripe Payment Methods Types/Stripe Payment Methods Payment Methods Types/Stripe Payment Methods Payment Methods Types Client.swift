import Dependencies
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.PaymentMethods.PaymentMethods {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/paymentMethods/create.md
        public var create:
            @Sendable (_ request: Stripe.PaymentMethods.PaymentMethods.Create.Request)
                async throws(any Swift.Error)
                ->
                Stripe.PaymentMethods.PaymentMethod

        // https://docs.stripe.com/api/paymentMethods/retrieve.md
        public var retrieve:
            @Sendable (_ id: Stripe.PaymentMethods.PaymentMethod.ID) async throws(any Swift.Error)
                ->
                Stripe.PaymentMethods.PaymentMethod

        // https://docs.stripe.com/api/paymentMethods/retrieve_customer.md
        public var retrieveCustomer:
            @Sendable (
                _ customerId: Stripe.Customers.Customer.ID,
                _ paymentMethodId: Stripe.PaymentMethods.PaymentMethod.ID
            ) async throws(any Swift.Error) -> Stripe.PaymentMethods.PaymentMethod

        // https://docs.stripe.com/api/paymentMethods/update.md
        public var update:
            @Sendable (
                _ id: Stripe.PaymentMethods.PaymentMethod.ID,
                _ request: Stripe.PaymentMethods.PaymentMethods.Update.Request
            ) async throws(any Swift.Error) -> Stripe.PaymentMethods.PaymentMethod

        // https://docs.stripe.com/api/paymentMethods/list.md
        public var list:
            @Sendable (_ request: List.Request) async throws(any Swift.Error) -> List.Response

        // https://docs.stripe.com/api/paymentMethods/customer_list.md
        public var listCustomer:
            @Sendable (
                _ customerId: Stripe.Customers.Customer.ID,
                _ request: Stripe.PaymentMethods.PaymentMethods.List.Customer.Request
            ) async throws(any Swift.Error) -> List.Customer.Response

        // https://docs.stripe.com/api/paymentMethods/attach.md
        public var attach:
            @Sendable (
                _ id: Stripe.PaymentMethods.PaymentMethod.ID,
                _ request: Stripe.PaymentMethods.PaymentMethods.Attach.Request
            ) async throws(any Swift.Error) -> Stripe.PaymentMethods.PaymentMethod

        // https://docs.stripe.com/api/paymentMethods/detach.md
        public var detach:
            @Sendable (_ id: Stripe.PaymentMethods.PaymentMethod.ID) async throws(any Swift.Error)
                ->
                Stripe.PaymentMethods.PaymentMethod
    }
}
