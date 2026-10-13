import Foundation
public import Stripe_Types_Shared
public import Tagged

public struct TerminalConfiguration: Codable, Hashable, Sendable, Identifiable {
    public typealias ID = Tagged<Self, String>
    public var id: ID
    public var bbposWiseposE: TerminalConfigurationBbposWiseposE?
    public var isAccountDefault: Bool?
    public var tiping: TerminalConfigurationTipping?
    public var verifoneP400: TerminalConfigurationVerifoneP400?
    public var object: String
    public var livemode: Bool

    public init(
        id: ID,
        bbposWiseposE: TerminalConfigurationBbposWiseposE? = nil,
        isAccountDefault: Bool? = nil,
        tiping: TerminalConfigurationTipping? = nil,
        verifoneP400: TerminalConfigurationVerifoneP400? = nil,
        object: String,
        livemode: Bool
    ) {
        self.id = id
        self.bbposWiseposE = bbposWiseposE
        self.isAccountDefault = isAccountDefault
        self.tiping = tiping
        self.verifoneP400 = verifoneP400
        self.object = object
        self.livemode = livemode
    }
}

public struct TerminalConfigurationBbposWiseposE: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Files.File> public var splashScreen

    public init(
        splashScreen: Stripe.Files.File.ID? = nil
    ) {
        self._splashScreen = Expandable(id: splashScreen)
    }
}

public struct TerminalConfigurationTipping: Codable, Hashable, Sendable {
    public var aud: TerminalConfigurationTippingDetails?
    public var cad: TerminalConfigurationTippingDetails?
    public var chf: TerminalConfigurationTippingDetails?
    public var czk: TerminalConfigurationTippingDetails?
    public var dkk: TerminalConfigurationTippingDetails?
    public var eur: TerminalConfigurationTippingDetails?
    public var gbp: TerminalConfigurationTippingDetails?
    public var hkd: TerminalConfigurationTippingDetails?
    public var myr: TerminalConfigurationTippingDetails?
    public var nok: TerminalConfigurationTippingDetails?
    public var nzd: TerminalConfigurationTippingDetails?
    public var sek: TerminalConfigurationTippingDetails?
    public var sgd: TerminalConfigurationTippingDetails?
    public var usd: TerminalConfigurationTippingDetails?

    public init(
        aud: TerminalConfigurationTippingDetails? = nil,
        cad: TerminalConfigurationTippingDetails? = nil,
        chf: TerminalConfigurationTippingDetails? = nil,
        czk: TerminalConfigurationTippingDetails? = nil,
        dkk: TerminalConfigurationTippingDetails? = nil,
        eur: TerminalConfigurationTippingDetails? = nil,
        gbp: TerminalConfigurationTippingDetails? = nil,
        hkd: TerminalConfigurationTippingDetails? = nil,
        myr: TerminalConfigurationTippingDetails? = nil,
        nok: TerminalConfigurationTippingDetails? = nil,
        nzd: TerminalConfigurationTippingDetails? = nil,
        sek: TerminalConfigurationTippingDetails? = nil,
        sgd: TerminalConfigurationTippingDetails? = nil,
        usd: TerminalConfigurationTippingDetails? = nil
    ) {
        self.aud = aud
        self.cad = cad
        self.chf = chf
        self.czk = czk
        self.dkk = dkk
        self.eur = eur
        self.gbp = gbp
        self.hkd = hkd
        self.myr = myr
        self.nok = nok
        self.nzd = nzd
        self.sek = sek
        self.sgd = sgd
        self.usd = usd
    }
}

public struct TerminalConfigurationTippingDetails: Codable, Hashable, Sendable {
    public var fixedAmounts: [Int]?
    public var percentages: [Int]?
    public var smartTipThreshold: Int?

    public init(
        fixedAmounts: [Int]? = nil,
        percentages: [Int]? = nil,
        smartTipThreshold: Int? = nil
    ) {
        self.fixedAmounts = fixedAmounts
        self.percentages = percentages
        self.smartTipThreshold = smartTipThreshold
    }
}

public struct TerminalConfigurationVerifoneP400: Codable, Hashable, Sendable {
    @ExpandableOf<Stripe.Files.File> public var splashScreen

    public init(
        splashScreen: Stripe.Files.File.ID? = nil
    ) {
        self._splashScreen = Expandable(id: splashScreen)
    }
}

public struct TerminalConfigurationList: Codable, Hashable, Sendable {
    public var object: String
    public var hasMore: Bool?
    public var url: String?
    public var data: [TerminalConfiguration]?

    public init(
        object: String,
        hasMore: Bool? = nil,
        url: String? = nil,
        data: [TerminalConfiguration]? = nil
    ) {
        self.object = object
        self.hasMore = hasMore
        self.url = url
        self.data = data
    }
}
