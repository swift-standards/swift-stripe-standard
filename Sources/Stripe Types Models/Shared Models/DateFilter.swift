import Foundation
public import Stripe_Types_Shared

extension Stripe {
    public struct DateFilter: Codable, Equatable, Sendable, RawRepresentable {
        public typealias RawValue = String
        public let gt: Int?
        public let gte: Int?
        public let lt: Int?
        public let lte: Int?

        public init(
            gt: Int? = nil,
            gte: Int? = nil,
            lt: Int? = nil,
            lte: Int? = nil
        ) {
            self.gt = gt
            self.gte = gte
            self.lt = lt
            self.lte = lte
        }

        public init?(rawValue: String) {
            var gt: Int?
            var gte: Int?
            var lt: Int?
            var lte: Int?

            let components = rawValue.split(separator: ",")
            for component in components {
                let parts = component.split(separator: ":")
                guard parts.count == 2 else { continue }

                let key = String(parts[0]).trimmingCharacters(in: .whitespaces)
                let valueStr = String(parts[1]).trimmingCharacters(in: .whitespaces)
                guard let value = Int(valueStr) else { continue }

                switch key {
                case "gt": gt = value
                case "gte": gte = value
                case "lt": lt = value
                case "lte": lte = value
                default: break
                }
            }

            guard gt != nil || gte != nil || lt != nil || lte != nil else {
                return nil
            }

            self.gt = gt
            self.gte = gte
            self.lt = lt
            self.lte = lte
        }

        public var rawValue: String {
            var components: [String] = []

            if let gt {
                components.append("gt:\(gt)")
            }
            if let gte {
                components.append("gte:\(gte)")
            }
            if let lt {
                components.append("lt:\(lt)")
            }
            if let lte {
                components.append("lte:\(lte)")
            }

            return components.joined(separator: ",")
        }
    }
}
