public import Foundation
import Stripe_Types_Models
import Stripe_Types_Shared
import Tagged

extension Stripe.Tax.Calculations {
    public enum Create {}
    public enum List {}
}

extension Stripe.Tax.Calculations.Create {
    public struct Request: Codable, Equatable, Sendable {
        public var currency: Stripe.Currency
        public var customer: Stripe.Customers.Customer.ID?
        public var customerDetails: CustomerDetails?
        public var lineItems: [LineItem]
        public var shippingCost: ShippingCost?
        public var shipFromDetails: ShipFromDetails?
        public var taxDate: Date?
        public var expand: [String]?

        private enum CodingKeys: String, CodingKey {
            case currency
            case customer
            case customerDetails = "customer_details"
            case lineItems = "line_items"
            case shippingCost = "shipping_cost"
            case shipFromDetails = "ship_from_details"
            case taxDate = "tax_date"
            case expand
        }

        public init(
            currency: Stripe.Currency,
            customer: Stripe.Customers.Customer.ID? = nil,
            customerDetails: CustomerDetails? = nil,
            lineItems: [LineItem] = [],
            shippingCost: ShippingCost? = nil,
            shipFromDetails: ShipFromDetails? = nil,
            taxDate: Date? = nil,
            expand: [String]? = nil
        ) {
            self.currency = currency
            self.customer = customer
            self.customerDetails = customerDetails
            self.lineItems = lineItems
            self.shippingCost = shippingCost
            self.shipFromDetails = shipFromDetails
            self.taxDate = taxDate
            self.expand = expand
        }
    }

    public struct CustomerDetails: Codable, Equatable, Sendable {
        public var address: Address?
        public var addressSource: AddressSource?
        public var ipAddress: String?
        public var taxability: Taxability?
        public var taxIds: [TaxID]?

        private enum CodingKeys: String, CodingKey {
            case address
            case addressSource = "address_source"
            case ipAddress = "ip_address"
            case taxability
            case taxIds = "tax_ids"
        }

        public init(
            address: Address? = nil,
            addressSource: AddressSource? = nil,
            ipAddress: String? = nil,
            taxability: Taxability? = nil,
            taxIds: [TaxID]? = nil
        ) {
            self.address = address
            self.addressSource = addressSource
            self.ipAddress = ipAddress
            self.taxability = taxability
            self.taxIds = taxIds
        }

        public enum AddressSource: String, Codable, Sendable {
            case billing
            case shipping
        }

        public enum Taxability: String, Codable, Sendable {
            case exempt
            case none
            case reverse
        }
    }

    public struct LineItem: Codable, Equatable, Sendable {
        public var amount: Int
        public var product: Stripe.Products.Product.ID?
        public var quantity: Int?
        public var reference: String?
        public var taxBehavior: TaxBehavior?
        public var taxCode: String?

        private enum CodingKeys: String, CodingKey {
            case amount
            case product
            case quantity
            case reference
            case taxBehavior = "tax_behavior"
            case taxCode = "tax_code"
        }

        public init(
            amount: Int,
            product: Stripe.Products.Product.ID? = nil,
            quantity: Int? = nil,
            reference: String? = nil,
            taxBehavior: TaxBehavior? = nil,
            taxCode: String? = nil
        ) {
            self.amount = amount
            self.product = product
            self.quantity = quantity
            self.reference = reference
            self.taxBehavior = taxBehavior
            self.taxCode = taxCode
        }

        public enum TaxBehavior: String, Codable, Sendable {
            case exclusive
            case inclusive
        }
    }

    public struct ShippingCost: Codable, Equatable, Sendable {
        public var amount: Int
        public var shippingRate: Stripe.Products.Shipping.Rate.ID?
        public var taxBehavior: TaxBehavior?
        public var taxCode: String?

        private enum CodingKeys: String, CodingKey {
            case amount
            case shippingRate = "shipping_rate"
            case taxBehavior = "tax_behavior"
            case taxCode = "tax_code"
        }

        public init(
            amount: Int,
            shippingRate: Stripe.Products.Shipping.Rate.ID? = nil,
            taxBehavior: TaxBehavior? = nil,
            taxCode: String? = nil
        ) {
            self.amount = amount
            self.shippingRate = shippingRate
            self.taxBehavior = taxBehavior
            self.taxCode = taxCode
        }

        public enum TaxBehavior: String, Codable, Sendable {
            case exclusive
            case inclusive
        }
    }

    public struct ShipFromDetails: Codable, Equatable, Sendable {
        public var address: Address

        public init(address: Address) {
            self.address = address
        }
    }

    public struct TaxID: Codable, Equatable, Sendable {
        public var type: TaxIDType
        public var value: String

        public init(type: TaxIDType, value: String) {
            self.type = type
            self.value = value
        }

        public enum TaxIDType: String, Codable, Sendable {
            case adNrt = "ad_nrt"
            case aetrn = "ae_trn"
            case arCuit = "ar_cuit"
            case auAbn = "au_abn"
            case auArn = "au_arn"
            case bgUic = "bg_uic"
            case bhVat = "bh_vat"
            case boTin = "bo_tin"
            case brCnpj = "br_cnpj"
            case brCpf = "br_cpf"
            case caAgencyCode = "ca_agency_code"
            case caBn = "ca_bn"
            case caGstHst = "ca_gst_hst"
            case caPstBc = "ca_pst_bc"
            case caPstMb = "ca_pst_mb"
            case caPstSk = "ca_pst_sk"
            case caQst = "ca_qst"
            case chUid = "ch_uid"
            case chVat = "ch_vat"
            case clTin = "cl_tin"
            case cnTin = "cn_tin"
            case coNit = "co_nit"
            case crTin = "cr_tin"
            case deStn = "de_stn"
            case doRcn = "do_rcn"
            case ecRuc = "ec_ruc"
            case egTin = "eg_tin"
            case esCif = "es_cif"
            case euOssVat = "eu_oss_vat"
            case euVat = "eu_vat"
            case gbVat = "gb_vat"
            case geVat = "ge_vat"
            case hkBr = "hk_br"
            case hrOib = "hr_oib"
            case huTin = "hu_tin"
            case idNpwp = "id_npwp"
            case ilVat = "il_vat"
            case inGst = "in_gst"
            case isVat = "is_vat"
            case jpCn = "jp_cn"
            case jpRn = "jp_rn"
            case jpTrn = "jp_trn"
            case kePin = "ke_pin"
            case krBrn = "kr_brn"
            case kzBin = "kz_bin"
            case liUid = "li_uid"
            case mxRfc = "mx_rfc"
            case myFrp = "my_frp"
            case myItn = "my_itn"
            case mySst = "my_sst"
            case ngTin = "ng_tin"
            case noVat = "no_vat"
            case noVoec = "no_voec"
            case nzGst = "nz_gst"
            case omVat = "om_vat"
            case peRuc = "pe_ruc"
            case phTin = "ph_tin"
            case roTin = "ro_tin"
            case rsPib = "rs_pib"
            case ruInn = "ru_inn"
            case ruKpp = "ru_kpp"
            case saVat = "sa_vat"
            case sgGst = "sg_gst"
            case sgUen = "sg_uen"
            case siTin = "si_tin"
            case svNit = "sv_nit"
            case thVat = "th_vat"
            case trTin = "tr_tin"
            case twVat = "tw_vat"
            case uaVat = "ua_vat"
            case usEin = "us_ein"
            case uyRuc = "uy_ruc"
            case veRif = "ve_rif"
            case vnTin = "vn_tin"
            case zaVat = "za_vat"
        }
    }
}

extension Stripe.Tax.Calculations.List {
    public enum LineItems {}
}

extension Stripe.Tax.Calculations.List.LineItems {
    public struct Request: Codable, Equatable, Sendable {
        public var endingBefore: String?
        public var limit: Int?
        public var startingAfter: String?

        private enum CodingKeys: String, CodingKey {
            case endingBefore = "ending_before"
            case limit
            case startingAfter = "starting_after"
        }

        public init(
            endingBefore: String? = nil,
            limit: Int? = nil,
            startingAfter: String? = nil
        ) {
            self.endingBefore = endingBefore
            self.limit = limit
            self.startingAfter = startingAfter
        }
    }

    public struct Response: Codable, Sendable {
        public var object: String
        public var data: [Stripe.Tax.Calculation.LineItem]
        public var hasMore: Bool
        public var url: String

        private enum CodingKeys: String, CodingKey {
            case object
            case data
            case hasMore = "has_more"
            case url
        }

        public init(
            object: String,
            data: [Stripe.Tax.Calculation.LineItem],
            hasMore: Bool,
            url: String
        ) {
            self.object = object
            self.data = data
            self.hasMore = hasMore
            self.url = url
        }
    }
}
