// swift-tools-version: 6.4

import Foundation
import PackageDescription

extension Target.Dependency {
    static var stripeTypes: Self { .target(name: "Stripe Types") }
    static var stripeBalance: Self { .target(name: "Stripe Balance Types") }
    static var stripeBalanceTransactions: Self { .target(name: "Stripe Balance Transactions Types") }
    static var stripeCharges: Self { .target(name: "Stripe Charges Types") }
    static var stripeCustomers: Self { .target(name: "Stripe Customers Types") }
    static var stripeCustomerSession: Self { .target(name: "Stripe Customer Session Types") }
    static var stripeDisputes: Self { .target(name: "Stripe Disputes Types") }
    static var stripeEvents: Self { .target(name: "Stripe Events Types") }
    static var stripeEventDestinations: Self { .target(name: "Stripe Event Destinations Types") }
    static var stripeFiles: Self { .target(name: "Stripe Files Types") }
    static var stripeFileLinks: Self { .target(name: "Stripe File Links Types") }
    static var stripeMandates: Self { .target(name: "Stripe Mandates Types") }
    static var stripePaymentIntents: Self { .target(name: "Stripe Payment Intents Types") }
    static var stripeSetupIntents: Self { .target(name: "Stripe Setup Intents Types") }
    static var stripeSetupAttempts: Self { .target(name: "Stripe Setup Attempts Types") }
    static var stripePayouts: Self { .target(name: "Stripe Payouts Types") }
    static var stripeRefunds: Self { .target(name: "Stripe Refunds Types") }
    static var stripeConfirmationToken: Self { .target(name: "Stripe Confirmation Token Types") }
    static var stripeTokens: Self { .target(name: "Stripe Tokens Types") }
    static var stripePaymentMethods: Self { .target(name: "Stripe Payment Methods Types") }
    static var stripeProducts: Self { .target(name: "Stripe Products Types") }
    static var stripeCheckout: Self { .target(name: "Stripe Checkout Types") }
    static var stripePaymentLink: Self { .target(name: "Stripe Payment Link Types") }
    static var stripeBilling: Self { .target(name: "Stripe Billing Types") }
    static var stripeCapital: Self { .target(name: "Stripe Capital Types") }
    static var stripeConnect: Self { .target(name: "Stripe Connect Types") }
    static var stripeFraud: Self { .target(name: "Stripe Fraud Types") }
    static var stripeIssuing: Self { .target(name: "Stripe Issuing Types") }
    static var stripeTerminal: Self { .target(name: "Stripe Terminal Types") }
    static var stripeTreasury: Self { .target(name: "Stripe Treasury Types") }
    static var stripeEntitlements: Self { .target(name: "Stripe Entitlements Types") }
    static var stripeSigma: Self { .target(name: "Stripe Sigma Types") }
    static var stripeReporting: Self { .target(name: "Stripe Reporting Types") }
    static var stripeFinancialConnections: Self { .target(name: "Stripe Financial Connections Types") }
    static var stripeTax: Self { .target(name: "Stripe Tax Types") }
    static var stripeIdentity: Self { .target(name: "Stripe Identity Types") }
    static var stripeCrypto: Self { .target(name: "Stripe Crypto Types") }
    static var stripeClimate: Self { .target(name: "Stripe Climate Types") }
    static var stripeForwarding: Self { .target(name: "Stripe Forwarding Types") }
    static var stripeWebhooks: Self { .target(name: "Stripe Webhooks Types") }
    static var stripeWebElements: Self { .target(name: "Stripe Web Elements Types") }
    static var stripeTypesShared: Self { .target(name: "Stripe Types Shared") }
    static var stripeTypesModels: Self { .target(name: "Stripe Types Models") }
}

extension Target.Dependency {
    static var dependencies: Self { .product(name: "Dependencies", package: "swift-dependencies") }
    static var dependenciesTestSupport: Self {
        .product(name: "Dependencies Test Support", package: "swift-dependencies")
    }
    static var tagged: Self {
        .product(name: "Tagged", package: "swift-tagged")
    }
    static var htmlFormCoder: Self {
        .product(name: "HTML Form Coder Codable", package: "swift-html-form-coder")
    }
    static var htmlStandard: Self {
        .product(name: "HTML Standard", package: "swift-html-standard")
    }
    static var either: Self {
        .product(name: "Either", package: "swift-either")
    }
    static var asyncLifecycle: Self {
        .product(name: "Async Lifecycle", package: "swift-async")
    }
    static var witnesses: Self { .product(name: "Witnesses", package: "swift-witnesses") }
}

let package = Package(
    name: "swift-stripe-standard",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Stripe Types", targets: ["Stripe Types"]),
        .library(name: "Stripe Balance Types", targets: ["Stripe Balance Types"]),
        .library(name: "Stripe Balance Transactions Types", targets: ["Stripe Balance Transactions Types"]),
        .library(name: "Stripe Charges Types", targets: ["Stripe Charges Types"]),
        .library(name: "Stripe Customers Types", targets: ["Stripe Customers Types"]),
        .library(name: "Stripe Customer Session Types", targets: ["Stripe Customer Session Types"]),
        .library(name: "Stripe Disputes Types", targets: ["Stripe Disputes Types"]),
        .library(name: "Stripe Events Types", targets: ["Stripe Events Types"]),
        .library(name: "Stripe Event Destinations Types", targets: ["Stripe Event Destinations Types"]),
        .library(name: "Stripe Files Types", targets: ["Stripe Files Types"]),
        .library(name: "Stripe File Links Types", targets: ["Stripe File Links Types"]),
        .library(name: "Stripe Mandates Types", targets: ["Stripe Mandates Types"]),
        .library(name: "Stripe Payment Intents Types", targets: ["Stripe Payment Intents Types"]),
        .library(name: "Stripe Setup Intents Types", targets: ["Stripe Setup Intents Types"]),
        .library(name: "Stripe Setup Attempts Types", targets: ["Stripe Setup Attempts Types"]),
        .library(name: "Stripe Payouts Types", targets: ["Stripe Payouts Types"]),
        .library(name: "Stripe Refunds Types", targets: ["Stripe Refunds Types"]),
        .library(name: "Stripe Confirmation Token Types", targets: ["Stripe Confirmation Token Types"]),
        .library(name: "Stripe Tokens Types", targets: ["Stripe Tokens Types"]),
        .library(name: "Stripe Payment Methods Types", targets: ["Stripe Payment Methods Types"]),
        .library(name: "Stripe Products Types", targets: ["Stripe Products Types"]),
        .library(name: "Stripe Checkout Types", targets: ["Stripe Checkout Types"]),
        .library(name: "Stripe Payment Link Types", targets: ["Stripe Payment Link Types"]),
        .library(name: "Stripe Billing Types", targets: ["Stripe Billing Types"]),
        .library(name: "Stripe Capital Types", targets: ["Stripe Capital Types"]),
        .library(name: "Stripe Connect Types", targets: ["Stripe Connect Types"]),
        .library(name: "Stripe Fraud Types", targets: ["Stripe Fraud Types"]),
        .library(name: "Stripe Issuing Types", targets: ["Stripe Issuing Types"]),
        .library(name: "Stripe Terminal Types", targets: ["Stripe Terminal Types"]),
        .library(name: "Stripe Treasury Types", targets: ["Stripe Treasury Types"]),
        .library(name: "Stripe Entitlements Types", targets: ["Stripe Entitlements Types"]),
        .library(name: "Stripe Sigma Types", targets: ["Stripe Sigma Types"]),
        .library(name: "Stripe Reporting Types", targets: ["Stripe Reporting Types"]),
        .library(name: "Stripe Financial Connections Types", targets: ["Stripe Financial Connections Types"]),
        .library(name: "Stripe Tax Types", targets: ["Stripe Tax Types"]),
        .library(name: "Stripe Identity Types", targets: ["Stripe Identity Types"]),
        .library(name: "Stripe Crypto Types", targets: ["Stripe Crypto Types"]),
        .library(name: "Stripe Climate Types", targets: ["Stripe Climate Types"]),
        .library(name: "Stripe Forwarding Types", targets: ["Stripe Forwarding Types"]),
        .library(name: "Stripe Webhooks Types", targets: ["Stripe Webhooks Types"]),
        .library(name: "Stripe Web Elements Types", targets: ["Stripe Web Elements Types"]),
        .library(name: "Stripe Types Shared", targets: ["Stripe Types Shared"]),
        .library(name: "Stripe Types Models", targets: ["Stripe Types Models"]),
    ],
    dependencies: [
        // swift-dependencies and swift-html-form-coder have no
        // tagged release yet carrying the products this package requires (org: swift-compositions);
        // pinned to branch until upstream cuts a version.
        // BRANCH-PIN-001 exemption tracked pending a tag.
        .package(
            url: "https://github.com/swift-compositions/swift-dependencies",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-tagged",
            branch: "main"
        ),
        .package(
            url: "https://github.com/coenttb/swift-html-form-coder",
            branch: "main"
        ),
        .package(url: "https://github.com/swift-standards/swift-html-standard", branch: "main"),
        // The witness-error retype (swift-compositions/swift-witnesses#3) types every client
        // operation throws(Either<Async.Lifecycle.Error, Leaf>), so Either, the lifecycle
        // envelope, and Witness.Unimplemented.Representable are now written directly in these
        // sources rather than reached through the Dependencies umbrella re-export.
        // None of the three carries a tagged release; BRANCH-PIN-001 exemption tracked pending
        // a tag.
        .package(
            url: "https://github.com/swift-atoms/swift-either",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-atoms/swift-async",
            branch: "main"
        ),
        .package(url: "https://github.com/swift-compositions/swift-witnesses", branch: "main"),
        .package(url: "https://github.com/swift-compositions/swift-json", branch: "main"),
    ],
    targets: [
        .target(
            name: "Stripe Types Shared",
            dependencies: [
                .dependencies,
                .htmlFormCoder,
                .htmlStandard,
            ]
        ),
        .target(
            name: "Stripe Types Models",
            dependencies: [
                .dependencies,
                .htmlFormCoder,
                .tagged,
                .stripeTypesShared,
            ]
        ),
        .target(
            name: "Stripe Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
                .stripeBalance,
                .stripeBalanceTransactions,
                .stripeCharges,
                .stripeCustomers,
                .stripeCustomerSession,
                .stripeDisputes,
                .stripeEvents,
                .stripeEventDestinations,
                .stripeFiles,
                .stripeFileLinks,
                .stripeMandates,
                .stripePaymentIntents,
                .stripeSetupIntents,
                .stripeSetupAttempts,
                .stripePayouts,
                .stripeRefunds,
                .stripeConfirmationToken,
                .stripeTokens,
                .stripePaymentMethods,
                .stripeProducts,
                .stripeCheckout,
                .stripePaymentLink,
                .stripeBilling,
                .stripeCapital,
                .stripeConnect,
                .stripeFraud,
                .stripeIssuing,
                .stripeTerminal,
                .stripeTreasury,
                .stripeEntitlements,
                .stripeSigma,
                .stripeReporting,
                .stripeFinancialConnections,
                .stripeTax,
                .stripeIdentity,
                .stripeCrypto,
                .stripeClimate,
                .stripeForwarding,
                .stripeWebhooks,
                .stripeWebElements,
            ]
        ),
        .testTarget(
            name: "Stripe Types Shared Tests",
            dependencies: [
                .stripeTypesShared,
                .dependenciesTestSupport,
                .tagged,
                .product(name: "JSON", package: "swift-json"),
            ]
        ),
        .testTarget(
            name: "Stripe Types Tests",
            dependencies: [
                .either,
                .asyncLifecycle,
                .stripeTypes,
                .dependenciesTestSupport,
                .product(name: "JSON", package: "swift-json"),
            ]
        ),
        .target(
            name: "Stripe Balance Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Balance Transactions Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Charges Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Customers Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Customer Session Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Disputes Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Events Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Event Destinations Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Files Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe File Links Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Mandates Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Payment Intents Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Setup Intents Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Setup Attempts Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Payouts Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Refunds Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Confirmation Token Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Tokens Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Payment Methods Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Products Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Checkout Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Payment Link Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Billing Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .testTarget(
            name: "Stripe Billing Types Tests",
            dependencies: [
                .stripeBilling,
                .dependenciesTestSupport,
                .product(name: "JSON", package: "swift-json"),
            ]
        ),
        .target(
            name: "Stripe Capital Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Connect Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Fraud Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Issuing Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Terminal Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Treasury Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Entitlements Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Sigma Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Reporting Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Financial Connections Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Tax Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Identity Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Crypto Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Climate Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Forwarding Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Webhooks Types",
            dependencies: [
                .either,
                .asyncLifecycle,
                .witnesses,
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .target(
            name: "Stripe Web Elements Types",
            dependencies: [
                .stripeTypesModels,
                .stripeTypesShared,
                .dependencies,
                .htmlFormCoder,
                .tagged,
            ]
        ),
        .testTarget(
            name: "Stripe Web Elements Types Tests",
            dependencies: [
                .stripeWebElements,
                .dependenciesTestSupport,
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
            .enableExperimentalFeature("Lifetimes"),
            .treatAllWarnings(as: .error),
        ]
}
