//
//  Stripe Files Types API.swift
//  swift-stripe-types
//
//  Created by Coen ten Thije Boonkkamp on 13/01/2025.
//

import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Files {
    public enum API: Equatable, Sendable {
        // https://docs.stripe.com/api/files/create.md
        case create(request: Stripe.Files.Create.Request)
        // https://docs.stripe.com/api/files/retrieve.md
        case retrieve(id: Stripe.Files.File.ID)
        // https://docs.stripe.com/api/files/list.md
        case list(request: Stripe.Files.List.Request)
    }
}
