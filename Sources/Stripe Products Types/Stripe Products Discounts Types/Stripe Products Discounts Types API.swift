//
//  Stripe Products Discounts Types API.swift
//  swift-stripe-types
//
//  Created on 2025-01-14.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Products.Discounts {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/discounts/delete.md
        case deleteCustomerDiscount(customerId: Stripe.Customers.Customer.ID)
        // https://docs.stripe.com/api/discounts/subscription_delete.md
        case deleteSubscriptionDiscount(subscriptionId: Stripe.Billing.Subscription.ID)
    }
}
