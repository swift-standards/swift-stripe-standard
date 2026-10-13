import Tagged

extension Tagged: @retroactive RawRepresentable
where Tag: ~Copyable & ~Escapable, Underlying: Copyable & Escapable {
    public typealias RawValue = Underlying

    public init?(rawValue: Underlying) {
        self.init(rawValue)
    }

    public var rawValue: Underlying {
        self.underlying
    }
}
