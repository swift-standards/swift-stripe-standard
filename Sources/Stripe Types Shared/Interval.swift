import Foundation

extension Stripe {
    public enum Interval: String, Codable, Hashable, Sendable, CaseIterable {
        case day
        case week
        case month
        case year
    }
}
