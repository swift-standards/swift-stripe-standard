//
//  Stripe Products Discounts Types Client.swift
//  swift-stripe-types
//
//  Created on 2025-01-14.
//

import Async_Lifecycle_Primitives
import Dependencies
import Either_Primitives
import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared

extension Stripe.Products.Discounts {
    @Witness
    public struct Client: Sendable {
        // https://docs.stripe.com/api/discounts/delete.md
        public var deleteCustomerDiscount:
            @Sendable (_ customerId: Stripe.Customers.Customer.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Discounts.DeleteCustomerDiscount.Error
            >) ->
                DeletedObject<
                    Stripe.Products.Discount
                >

        // https://docs.stripe.com/api/discounts/subscription_delete.md
        public var deleteSubscriptionDiscount:
            @Sendable (_ subscriptionId: Stripe.Billing.Subscription.ID) async throws(Either<
                Async.Lifecycle.Error, Stripe.Products.Discounts.DeleteSubscriptionDiscount.Error
            >) ->
                DeletedObject<
                    Stripe.Products.Discount
                >
    }
}
