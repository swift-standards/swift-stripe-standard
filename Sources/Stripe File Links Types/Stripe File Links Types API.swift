//
//  Stripe File Links Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.FileLinks {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/file_links/create.md
        case create(request: Stripe.FileLinks.Create.Request)
        // https://docs.stripe.com/api/file_links/retrieve.md
        case retrieve(id: Stripe.FileLinks.FileLink.ID)
        // https://docs.stripe.com/api/file_links/update.md
        case update(id: Stripe.FileLinks.FileLink.ID, request: Stripe.FileLinks.Update.Request)
        // https://docs.stripe.com/api/file_links/list.md
        case list(request: Stripe.FileLinks.List.Request)
    }
}
