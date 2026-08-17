//
//  Parity Support.swift
//  swift-stripe-types
//
//  Batch-0 wire-shape parity corpus support (url-routing-stack migration).
//

import Testing

// §A9 toolchain gate (swift-institute/Research/swift-compiler-bug-catalog.md §A9):
// every Stripe router materializes `Tagged` inside deep generic parser chains
// (`.string.representing(<Tagged ID>.self)`); on Swift 6.3.x the first
// parse/print SIGSEGVs the runner (null metadata from
// `swift_getTypeByMangledName` during witness-table instantiation — verified
// empirically for this suite on 2026-07-21, crash report
// swiftpm-testing-helper-2026-07-21-005610.ips). `.disabled(if:)`, not
// `withKnownIssue`, because the crash kills the runner. Auto-retires at the
// 6.4 toolchain move, at which point the suite compares against the
// Swift-embedded Batch-0 corpus in `Corpus.swift`.
#if compiler(<6.4)
    let taggedMetadataSIGSEGV = true
#else
    let taggedMetadataSIGSEGV = false
#endif

/// Compares a corpus against its Swift-embedded reference document.
func assertParity(
    _ corpus: String,
    fixture name: String
) throws {
    guard let expected = Corpus[name] else {
        Issue.record(Comment(rawValue: "No embedded parity corpus named \(name)"))
        return
    }
    guard corpus != expected else { return }
    let report = difference(expected: expected, actual: corpus)
    Issue.record(Comment(rawValue: "Parity mismatch for \(name):\n\(report)"))
}

/// Renders the first differing lines of two corpora, for a readable failure.
private func difference(expected: String, actual: String) -> String {
    let expectedLines = expected.split(separator: "\n", omittingEmptySubsequences: false)
    let actualLines = actual.split(separator: "\n", omittingEmptySubsequences: false)
    var differences: [String] = []
    for index in 0..<max(expectedLines.count, actualLines.count) {
        let expected = index < expectedLines.count ? expectedLines[index] : "<absent>"
        let actual = index < actualLines.count ? actualLines[index] : "<absent>"
        if expected != actual {
            differences.append("line \(index + 1):\n  - \(expected)\n  + \(actual)")
        }
        if differences.count >= 40 {
            differences.append("… (further differences truncated)")
            break
        }
    }
    return differences.joined(separator: "\n")
}
