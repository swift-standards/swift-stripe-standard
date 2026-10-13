public import Foundation
public import Stripe_Types_Shared
public import Tagged

extension Stripe.Events {
    public struct Event: Codable, Hashable, Sendable, Identifiable {
        public typealias ID = Tagged<Self, String>
        public var id: ID
        public var apiVersion: String?
        public var data: Stripe.Events.Event.Data?
        public var request: Stripe.Events.Event.Request?
        public var type: Stripe.Events.Event.`Type`?
        public var object: String
        public var account: String?
        public var created: Date?
        public var livemode: Bool?
        public var pendingWebhooks: Int?

        public init(
            id: ID,
            apiVersion: String? = nil,
            data: Stripe.Events.Event.Data? = nil,
            request: Stripe.Events.Event.Request? = nil,
            type: Stripe.Events.Event.`Type`? = nil,
            object: String,
            account: String? = nil,
            created: Date? = nil,
            livemode: Bool? = nil,
            pendingWebhooks: Int? = nil
        ) {
            self.id = id
            self.apiVersion = apiVersion
            self.data = data
            self.request = request
            self.type = type
            self.object = object
            self.account = account
            self.created = created
            self.livemode = livemode
            self.pendingWebhooks = pendingWebhooks
        }
    }
}

extension Stripe.Events.Event {
    public struct Data: Codable, Hashable, Sendable {
        public var object: Stripe.Events.Event.Object

        public init(
            object: Stripe.Events.Event.Object
        ) {
            self.object = object
        }
    }
}

extension Stripe.Events.Event {
    public enum Object: Codable, Hashable, Sendable {
        case account(Stripe.Connect.Account)
        case application(Stripe.Connect.Application)
        case card(Stripe_Types_Models.Card)
        case cashBalance(Stripe_Types_Models.CashBalance)
        case bankAccount(Stripe_Types_Models.BankAccount)
        case applicationFee(Stripe.Connect.Application.Fee)
        case applicationFeeRefund(Stripe.Connect.Application.Fee.Refund)
        case balance(Stripe.Balance)
        case billingPortalSession(Stripe.Billing.Customer.Portal.Session)
        case capability(Stripe.Connect.Capability)
        case charge(Stripe.Charges.Charge)
        case dispute(Stripe.Disputes.Dispute)
        case refund(Stripe.Refunds.Refund)
        case checkoutSession(Stripe.Checkout.Session)
        case configuration(Stripe.Billing.Customer.Portal.Configuration)
        case coupon(Stripe.Products.Coupon)
        case creditNote(Stripe.Billing.Credit.Note)
        case customer(Stripe.Customers.Customer)
        case discount(Stripe.Products.Discount)
        case subscription(Stripe.Billing.Subscription)
        case taxId(Stripe.Tax.ID)
        case file(Stripe.Files.File)
        case invoice(Stripe.Billing.Invoice)
        case invoiceItem(Stripe.Billing.Invoice.Item)
        case issuingAuthorization(Stripe_Types_Models.Authorization)
        case issuingCard(Stripe_Types_Models.IssuingCard)
        case issuingCardHolder(Stripe_Types_Models.Cardholder)
        case issuingDispute(Stripe_Types_Models.IssuingDispute)
        case issuingTransaction(Stripe_Types_Models.Transaction)
        case mandate(Stripe.Mandates.Mandate)
        case paymentIntent(Stripe.PaymentIntents.PaymentIntent)
        case paymentLink(Stripe.PaymentLink)
        case paymentMethod(Stripe.PaymentMethods.PaymentMethod)
        case payout(Stripe.Payouts.Payout)
        case person(Stripe.Connect.Person)
        case plan(Stripe.Billing.Plan)
        case price(Stripe.Products.Price)
        case product(Stripe.Products.Product)
        case promotionCode(Stripe_Types_Models.Promotion.Code)
        case earlyFraudWarning(Stripe.Fraud.EarlyFraudWarnings.EarlyFraudWarning)
        case quote(Stripe.Billing.Quote)
        case reportRun(Stripe_Types_Models.ReportRun)
        case reportType(Stripe_Types_Models.ReportType)
        case review(Stripe.Fraud.Reviews.Review)
        case setupIntent(Stripe.Setup.Intent)
        case scheduledQueryRun(Stripe_Types_Models.ScheduledQueryRun)
        case subscriptionSchedule(Stripe.Billing.Subscription.Schedule)
        case taxRate(Stripe.Tax.Rate)
        case topup(Stripe.Connect.TopUp)
        case transfer(Stripe.Connect.Transfer)
        case testClock(Stripe.Billing.TestClocks.TestClock)
        case reader(Stripe.Terminal.Readers.Reader)
        case verificationSession(Stripe_Types_Models.VerificationSession)

        public init(
            from decoder: any Decoder
        ) throws {
            let object =
                try decoder
                .container(keyedBy: CodingKeys.self)
                .decode(String.self, forKey: .object)
            switch object {
            case "account":
                self = try .account(Stripe.Connect.Account(from: decoder))

            case "application":
                self = try .application(Stripe.Connect.Application(from: decoder))

            case "application_fee":
                self = try .applicationFee(Stripe.Connect.Application.Fee(from: decoder))

            case "card":
                self = try .card(Card(from: decoder))

            case "cash_balance":
                self = try .cashBalance(CashBalance(from: decoder))

            case "bank_account":
                self = try .bankAccount(BankAccount(from: decoder))

            case "billingPortal.configuration":
                self = try .configuration(
                    Stripe.Billing.Customer.Portal.Configuration(from: decoder)
                )

            case "billingPortal.session":
                self = try .billingPortalSession(
                    Stripe.Billing.Customer.Portal.Session(from: decoder)
                )

            case "fee_refund":
                self = try .applicationFeeRefund(
                    Stripe.Connect.Application.Fee.Refund(from: decoder)
                )

            case "balance":
                self = try .balance(Stripe.Balance(from: decoder))

            case "capability":
                self = try .capability(Stripe.Connect.Capability(from: decoder))

            case "charge":
                self = try .charge(Stripe.Charges.Charge(from: decoder))

            case "dispute":
                self = try .dispute(Stripe.Disputes.Dispute(from: decoder))

            case "refund":
                self = try .refund(Stripe.Refunds.Refund(from: decoder))

            case "checkout.session":
                self = try .checkoutSession(Stripe.Checkout.Session(from: decoder))

            case "coupon":
                self = try .coupon(Stripe.Products.Coupon(from: decoder))

            case "credit_note":
                self = try .creditNote(Stripe.Billing.Credit.Note(from: decoder))

            case "customer":
                self = try .customer(Stripe.Customers.Customer(from: decoder))

            case "discount":
                self = try .discount(Stripe.Products.Discount(from: decoder))

            case "subscription":
                self = try .subscription(Stripe.Billing.Subscription(from: decoder))

            case "tax_id":
                self = try .taxId(Stripe.Tax.ID(from: decoder))

            case "file":
                self = try .file(Stripe.Files.File(from: decoder))

            case "identity.verification_session":
                self = try .verificationSession(VerificationSession(from: decoder))

            case "invoice":
                self = try .invoice(Stripe.Billing.Invoice(from: decoder))

            case "invoice_payment":
                self = try .invoice(Stripe.Billing.Invoice(from: decoder))

            case "invoiceitem":
                self = try .invoiceItem(Stripe.Billing.Invoice.Item(from: decoder))

            case "issuing.authorization":
                self = try .issuingAuthorization(Authorization(from: decoder))

            case "issuing.card":
                self = try .issuingCard(IssuingCard(from: decoder))

            case "issuing.cardholder":
                self = try .issuingCardHolder(Cardholder(from: decoder))

            case "issuing.dispute":
                self = try .issuingDispute(IssuingDispute(from: decoder))

            case "issuing.transaction":
                self = try .issuingTransaction(Transaction(from: decoder))

            case "mandate":
                self = try .mandate(Stripe.Mandates.Mandate(from: decoder))

            case "payment_intent":
                self = try .paymentIntent(Stripe.PaymentIntents.PaymentIntent(from: decoder))

            case "payment_link":
                self = try .paymentLink(Stripe.PaymentLink(from: decoder))

            case "payment_method":
                self = try .paymentMethod(Stripe.PaymentMethods.PaymentMethod(from: decoder))

            case "payout":
                self = try .payout(Stripe.Payouts.Payout(from: decoder))

            case "person":
                self = try .person(Stripe.Connect.Person(from: decoder))

            case "plan":
                self = try .plan(Stripe.Billing.Plan(from: decoder))

            case "price":
                self = try .price(Stripe.Products.Price(from: decoder))

            case "product":
                self = try .product(Stripe.Products.Product(from: decoder))

            case "promotion_code":
                self = try .promotionCode(Promotion.Code(from: decoder))

            case "radar.early_fraud_warning":
                self = try .earlyFraudWarning(
                    Stripe.Fraud.EarlyFraudWarnings.EarlyFraudWarning(from: decoder)
                )

            case "quote":
                self = try .quote(Stripe.Billing.Quote(from: decoder))

            case "reporting.report_run":
                self = try .reportRun(ReportRun(from: decoder))

            case "reporting.report_type":
                self = try .reportType(ReportType(from: decoder))

            case "review":
                self = try .review(Stripe.Fraud.Reviews.Review(from: decoder))

            case "setup_intent":
                self = try .setupIntent(Stripe.Setup.Intent(from: decoder))

            case "scheduled_query_run":
                self = try .scheduledQueryRun(ScheduledQueryRun(from: decoder))

            case "subscription_schedule":
                self = try .subscriptionSchedule(
                    Stripe.Billing.Subscription.Schedule(from: decoder)
                )

            case "tax_rate":
                self = try .taxRate(Stripe.Tax.Rate(from: decoder))

            case "testHelpers.test_clock":
                self = try .testClock(Stripe.Billing.TestClocks.TestClock(from: decoder))

            case "terminal.reader":
                self = try .reader(Stripe.Terminal.Readers.Reader(from: decoder))

            case "topup":
                self = try .topup(Stripe.Connect.TopUp(from: decoder))

            case "transfer":
                self = try .transfer(Stripe.Connect.Transfer(from: decoder))

            default:
                throw DecodingError.keyNotFound(
                    CodingKeys.object,
                    DecodingError.Context(
                        codingPath: [CodingKeys.object],
                        debugDescription: "Missing type '\(object)' cannot be decoded."
                    )
                )
            }
        }

        public func encode(to encoder: any Encoder) throws {
            switch self {
            case .account(let connectAccount):
                try connectAccount.encode(to: encoder)

            case .application(let connectApplication):
                try connectApplication.encode(to: encoder)

            case .card(let card):
                try card.encode(to: encoder)

            case .cashBalance(let cashBalance):
                try cashBalance.encode(to: encoder)

            case .bankAccount(let bankAccount):
                try bankAccount.encode(to: encoder)

            case .billingPortalSession(let portalSession):
                try portalSession.encode(to: encoder)

            case .applicationFee(let applicationFee):
                try applicationFee.encode(to: encoder)

            case .applicationFeeRefund(let applicationFeeRefund):
                try applicationFeeRefund.encode(to: encoder)

            case .balance(let balance):
                try balance.encode(to: encoder)

            case .capability(let capability):
                try capability.encode(to: encoder)

            case .charge(let charge):
                try charge.encode(to: encoder)

            case .dispute(let dispute):
                try dispute.encode(to: encoder)

            case .refund(let refund):
                try refund.encode(to: encoder)

            case .checkoutSession(let session):
                try session.encode(to: encoder)

            case .configuration(let portalConfiguration):
                try portalConfiguration.encode(to: encoder)

            case .coupon(let coupon):
                try coupon.encode(to: encoder)

            case .creditNote(let creditNote):
                try creditNote.encode(to: encoder)

            case .customer(let customer):
                try customer.encode(to: encoder)

            case .discount(let discount):
                try discount.encode(to: encoder)

            case .subscription(let subscription):
                try subscription.encode(to: encoder)

            case .taxId(let taxID):
                try taxID.encode(to: encoder)

            case .file(let file):
                try file.encode(to: encoder)

            case .invoice(let invoice):
                try invoice.encode(to: encoder)

            case .invoiceItem(let invoiceItem):
                try invoiceItem.encode(to: encoder)

            case .issuingAuthorization(let authorization):
                try authorization.encode(to: encoder)

            case .issuingCard(let issuingCard):
                try issuingCard.encode(to: encoder)

            case .issuingCardHolder(let cardholder):
                try cardholder.encode(to: encoder)

            case .issuingDispute(let issuingDispute):
                try issuingDispute.encode(to: encoder)

            case .issuingTransaction(let transaction):
                try transaction.encode(to: encoder)

            case .mandate(let mandate):
                try mandate.encode(to: encoder)

            case .paymentIntent(let paymentIntent):
                try paymentIntent.encode(to: encoder)

            case .paymentLink(let paymentLink):
                try paymentLink.encode(to: encoder)

            case .paymentMethod(let paymentMethod):
                try paymentMethod.encode(to: encoder)

            case .payout(let payout):
                try payout.encode(to: encoder)

            case .person(let person):
                try person.encode(to: encoder)

            case .plan(let plan):
                try plan.encode(to: encoder)

            case .price(let price):
                try price.encode(to: encoder)

            case .product(let product):
                try product.encode(to: encoder)

            case .promotionCode(let promotionCode):
                try promotionCode.encode(to: encoder)

            case .earlyFraudWarning(let earlyFraudWarning):
                try earlyFraudWarning.encode(to: encoder)

            case .quote(let quote):
                try quote.encode(to: encoder)

            case .reportRun(let reportRun):
                try reportRun.encode(to: encoder)

            case .reportType(let reportType):
                try reportType.encode(to: encoder)

            case .review(let review):
                try review.encode(to: encoder)

            case .setupIntent(let setupIntent):
                try setupIntent.encode(to: encoder)

            case .scheduledQueryRun(let scheduledQueryRun):
                try scheduledQueryRun.encode(to: encoder)

            case .subscriptionSchedule(let subscriptionSchedule):
                try subscriptionSchedule.encode(to: encoder)

            case .taxRate(let taxRate):
                try taxRate.encode(to: encoder)

            case .topup(let topUp):
                try topUp.encode(to: encoder)

            case .transfer(let transfer):
                try transfer.encode(to: encoder)

            case .testClock(let testClock):
                try testClock.encode(to: encoder)

            case .reader(let terminalReader):
                try terminalReader.encode(to: encoder)

            case .verificationSession(let verificationSession):
                try verificationSession.encode(to: encoder)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case object
        }
    }
}

extension Stripe.Events.Event {
    public struct Request: Codable, Hashable, Sendable {
        public var id: String?
        public var idempotencyKey: String?

        public init(
            id: String? = nil,
            idempotencyKey: String? = nil
        ) {
            self.id = id
            self.idempotencyKey = idempotencyKey
        }
    }
}

extension Stripe.Events.Event {
    public enum `Type`: String, Codable, Sendable {
        case accountApplicationAuthorized = "account.application.authorized"
        case accountApplicationDeauthorized = "account.application.deauthorized"
        case accountExternalAccountCreated = "account.external_account.created"
        case accountExternalAccountDeleted = "account.external_account.deleted"
        case accountExternalAccountUpdated = "account.external_account.updated"
        case accountUpdated = "account.updated"
        case applicationFeeCreated = "application_fee.created"
        case applicationFeeRefundUpdated = "application_fee.refund.updated"
        case applicationFeeRefunded = "application_fee.refunded"
        case balanceAvailable = "balance.available"
        case billingPortalConfigurationCreated = "billingPortal.configuration.created"
        case billingPortalConfigurationUpdated = "billingPortal.configuration.updated"
        case billingPortalSessionCreated = "billingPortal.session.created"
        case capabilityUpdated = "capability.updated"
        case billingAlertTriggered = "billing.alert.triggered"
        case cashBalanceFundsAvailable = "cash_balance.funds_available"
        case chargeCaptured = "charge.captured"
        case chargeDisputeClosed = "charge.dispute.closed"
        case chargeDisputeCreated = "charge.dispute.created"
        case chargeDisputeFundsReinstated = "charge.dispute.funds_reinstated"
        case chargeDisputeFundsWithdrawn = "charge.dispute.funds_withdrawn"
        case chargeDisputeUpdated = "charge.dispute.updated"
        case chargeExpired = "charge.expired"
        case chargeFailed = "charge.failed"
        case chargePending = "charge.pending"
        case chargeRefundUpdated = "charge.refund.updated"
        case chargeRefunded = "charge.refunded"
        case chargeSucceeded = "charge.succeeded"
        case chargeUpdated = "charge.updated"
        case checkoutSessionAsyncPaymentFailed = "checkout.session.async_payment_failed"
        case checkoutSessionAsyncPaymentSucceeded = "checkout.session.async_payment_succeeded"
        case checkoutSessionCompleted = "checkout.session.completed"
        case checkoutSessionExpired = "checkout.session.expired"
        case couponCreated = "coupon.created"
        case couponDeleted = "coupon.deleted"
        case couponUpdated = "coupon.updated"
        case creditNoteCreated = "credit_note.created"
        case creditNoteUpdated = "credit_note.updated"
        case creditNoteVoided = "credit_note.voided"
        case customerCashBalanceTransactionCreated = "customer_cash_balance_transaction.created"
        case customerCreated = "customer.created"
        case customerDeleted = "customer.deleted"
        case customerDiscountCreated = "customer.discount.created"
        case customerDiscountDeleted = "customer.discount.deleted"
        case customerDiscountUpdated = "customer.discount.updated"
        case customerSourceCreated = "customer.source.created"
        case customerSourceDeleted = "customer.source.deleted"
        case customerSourceExpiring = "customer.source.expiring"
        case customerSourceUpdated = "customer.source.updated"
        case customerSubscriptionCreated = "customer.subscription.created"
        case customerSubscriptionDeleted = "customer.subscription.deleted"
        case customerSubscriptionPaused = "customer.subscription.paused"
        case customerSubscriptionPendingUpdateApplied =
            "customer.subscription.pending_update_applied"
        case customerSubscriptionPendingUpdateExpired =
            "customer.subscription.pending_update_expired"
        case customerSubscriptionResumed = "customer.subscription.resumed"
        case customerSubscriptionTrialWillEnd = "customer.subscription.trial_will_end"
        case customerSubscriptionUpdated = "customer.subscription.updated"
        case customerTaxIdCreated = "customer.tax_id.created"
        case customerTaxIdDeleted = "customer.tax_id.deleted"
        case customerTaxIdUpdated = "customer.tax_id.updated"
        case customerUpdated = "customer.updated"
        case fileCreated = "file.created"
        case financialConnectionsAccountCreated = "financial_connections.account.created"
        case financialConnectionsAccountDeactivated = "financial_connections.account.deactivated"
        case financialConnectionsAccountDisconnected = "financial_connections.account.disconnected"
        case financialConnectionsAccountReactivated = "financial_connections.account.reactivated"
        case financialConnectionsAccountRefreshedBalance =
            "financial_connections.account.refreshed_balance"
        case identityVerificationSessionCanceled = "identity.verification_session.canceled"
        case identityVerificationSessionCreated = "identity.verification_session.created"
        case identityVerificationSessionProcessing = "identity.verification_session.processing"
        case identityVerificationSessionRedacted = "identity.verification_session.redacted"
        case identityVerificationSessionRequiresInput =
            "identity.verification_session.requires_input"
        case identityVerificationSessionVerified = "identity.verification_session.verified"
        case invoiceCreated = "invoice.created"
        case invoiceDeleted = "invoice.deleted"
        case invoiceFinalizationFailed = "invoice.finalization_failed"
        case invoiceFinalized = "invoice.finalized"
        case invoiceMarkedUncollectible = "invoice.marked_uncollectible"
        case invoiceOverdue = "invoice.overdue"
        case invoicePaid = "invoice.paid"
        case invoicePaymentActionRequired = "invoice.payment_action_required"
        case invoicePaymentFailed = "invoice.payment_failed"
        case invoicePaymentSucceeded = "invoice.payment_succeeded"
        case invoicePaymentPaid = "invoice_payment.paid"
        case invoiceSent = "invoice.sent"
        case invoiceUpcoming = "invoice.upcoming"
        case invoiceUpdated = "invoice.updated"
        case invoiceWillBeDue = "invoice.will_be_due"
        case invoiceVoided = "invoice.voided"
        case invoiceitemCreated = "invoiceitem.created"
        case invoiceitemDeleted = "invoiceitem.deleted"
        case issuingAuthorizationCreated = "issuing_authorization.created"
        case issuingAuthorizationRequest = "issuing_authorization.request"
        case issuingAuthorizationUpdated = "issuing_authorization.updated"
        case issuingCardCreated = "issuing_card.created"
        case issuingCardUpdated = "issuing_card.updated"
        case issuingCardholderCreated = "issuing_cardholder.created"
        case issuingCardholderUpdated = "issuing_cardholder.updated"
        case issuingDisputeClosed = "issuing_dispute.closed"
        case issuingDisputeCreated = "issuing_dispute.created"
        case issuingDisputeFundsReinstated = "issuing_dispute.funds_reinstated"
        case issuingDisputeSubmitted = "issuing_dispute.submitted"
        case issuingDisputeUpdated = "issuing_dispute.updated"
        case issuingTransactionCreated = "issuing_transaction.created"
        case issuingTransactionUpdated = "issuing_transaction.updated"
        case mandateUpdated = "mandate.updated"
        case paymentIntentAmountCapturableUpdated = "payment_intent.amount_capturable_updated"
        case paymentIntentCanceled = "payment_intent.canceled"
        case paymentIntentCreated = "payment_intent.created"
        case paymentIntentPartiallyFunded = "payment_intent.partially_funded"
        case paymentIntentPaymentFailed = "payment_intent.payment_failed"
        case paymentIntentProcessing = "payment_intent.processing"
        case paymentIntentRequiresAction = "payment_intent.requires_action"
        case paymentIntentSucceeded = "payment_intent.succeeded"
        case paymentLinkCreated = "payment_link.created"
        case paymentLinkUpdated = "payment_link.updated"
        case paymentMethodAttached = "payment_method.attached"
        case paymentMethodAutomaticallyUpdated = "payment_method.automatically_updated"
        case paymentMethodDetached = "payment_method.detached"
        case paymentMethodUpdated = "payment_method.updated"
        case payoutCanceled = "payout.canceled"
        case payoutCreated = "payout.created"
        case payoutFailed = "payout.failed"
        case payoutPaid = "payout.paid"
        case payoutReconciliationCompleted = "payout.reconciliation_completed"
        case payoutUpdated = "payout.updated"
        case personCreated = "person.created"
        case personDeleted = "person.deleted"
        case personUpdated = "person.updated"
        case planCreated = "plan.created"
        case planDeleted = "plan.deleted"
        case planUpdated = "plan.updated"
        case priceCreated = "price.created"
        case priceDeleted = "price.deleted"
        case priceUpdated = "price.updated"
        case productCreated = "product.created"
        case productDeleted = "product.deleted"
        case productUpdated = "product.updated"
        case promotionCodeCreated = "promotion_code.created"
        case promotionCodeUpdated = "promotion_code.updated"
        case quoteAccepted = "quote.accepted"
        case quoteCanceled = "quote.canceled"
        case quoteCreated = "quote.created"
        case quoteFinalized = "quote.finalized"
        case radarEarlyFraudWarningCreated = "radar.early_fraud_warning.created"
        case radarEarlyFraudWarningUpdated = "radar.early_fraud_warning.updated"
        case refundCreated = "refund.created"
        case refundUpdated = "refund.updated"
        case reportingReportRunFailed = "reporting.report_run.failed"
        case reportingReportRunSucceeded = "reporting.report_run.succeeded"
        case reportingReportTypeUpdated = "reporting.report_type.updated"
        case reviewClosed = "review.closed"
        case reviewOpened = "review.opened"
        case setupIntentCanceled = "setup_intent.canceled"
        case setupIntentCreated = "setup_intent.created"
        case setupIntentRequiresAction = "setup_intent.requires_action"
        case setupIntentSetupFailed = "setup_intent.setup_failed"
        case setupIntentSucceeded = "setup_intent.succeeded"
        case sigmaScheduledQueryRunCreated = "sigma.scheduled_query_run.created"
        case sourceCanceled = "source.canceled"
        case sourceChargeable = "source.chargeable"
        case sourceFailed = "source.failed"
        case sourceMandateNotification = "source.mandate_notification"
        case sourceRefundAttributesRequired = "source.refund_attributes_required"
        case sourceTransactionCreated = "source.transaction.created"
        case sourceTransactionUpdated = "source.transaction.updated"
        case subscriptionScheduleAborted = "subscription_schedule.aborted"
        case subscriptionScheduleCanceled = "subscription_schedule.canceled"
        case subscriptionScheduleCompleted = "subscription_schedule.completed"
        case subscriptionScheduleCreated = "subscription_schedule.created"
        case subscriptionScheduleExpiring = "subscription_schedule.expiring"
        case subscriptionScheduleReleased = "subscription_schedule.released"
        case subscriptionScheduleUpdated = "subscription_schedule.updated"
        case taxRateCreated = "tax_rate.created"
        case taxRateUpdated = "tax_rate.updated"
        case terminalReaderActionFailed = "terminal.reader.action_failed"
        case terminalReaderActionSucceeded = "terminal.reader.action_succeeded"
        case testHelpersTestClockAdvancing = "testHelpers.test_clock.advancing"
        case testHelpersTestClockCreated = "testHelpers.test_clock.created"
        case testHelpersTestClockDeleted = "testHelpers.test_clock.deleted"
        case testHelpersTestClockInternalFailure = "testHelpers.test_clock.internal_failure"
        case testHelpersTestClockReady = "testHelpers.test_clock.ready"
        case topupCanceled = "topup.canceled"
        case topupCreated = "topup.created"
        case topupFailed = "topup.failed"
        case topupReversed = "topup.reversed"
        case topupSucceeded = "topup.succeeded"
        case transferCreated = "transfer.created"
        case transferReversed = "transfer.reversed"
        case transferUpdated = "transfer.updated"
        case unknownEvent = "unknown"
    }
}
