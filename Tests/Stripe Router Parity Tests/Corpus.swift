// ===----------------------------------------------------------------------===//
//
// This source file is part of the swift-standards open source project
//
// Copyright (c) 2024-2026 Coen ten Thije Boonkkamp and the swift-standards
// project authors
// Licensed under Apache License v2.0
//
// See LICENSE for license information
//
// ===----------------------------------------------------------------------===//

/// The wire-shape parity corpus, keyed by fixture basename.
///
/// Generated from the former `__Corpus__/<name>.txt` fixtures; each
/// document is byte-identical to the file it replaced.
enum Corpus {}

extension Corpus {
    /// The document stored under `name`, if any.
    static subscript(_ name: String) -> String? {
        documents[name]
    }
}

extension Corpus {
    fileprivate static let documents: [String: String] = [
        "Compat.CheckoutSessions": ##########"""
        == checkout.sessions.create ==
        method: POST
        path: /v1/checkout/sessions
        body(utf8): cancel_url=https%3A%2F%2Fexample.com%2Fcancel&client_reference_id=parity-fixture-1&mode=payment&success_url=https%3A%2F%2Fexample.com%2Fsuccess
        """########## + "\n",
        "Compat.Customers": ##########"""
        == customers.create ==
        method: POST
        path: /v1/customers
        body(utf8): description=parity+fixture+customer&email=parity%40example.com&name=Parity+Fixture
        """########## + "\n",
    ]
}
