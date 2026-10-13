import Foundation
import HTML_Form_Coder_Codable
import HTML_Standard

extension HTML.Form.Coder.Decoder {
    package static var stripe: HTML.Form.Coder.Decoder {
        .init(
            dateDecodingStrategy: .seconds,
            arrayParsingStrategy: .bracketsWithIndices
        )
    }
}

extension HTML.Form.Coder.Encoder {
    package static var stripe: HTML.Form.Coder.Encoder {
        .init(
            dateEncodingStrategy: .seconds,
            arrayEncodingStrategy: .bracketsWithIndices
        )
    }
}
