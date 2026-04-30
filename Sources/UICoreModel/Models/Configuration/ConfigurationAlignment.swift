import Foundation

public enum ConfigurationAlignment: String, Codable, Hashable, Sendable {
    case bottom
    case bottomLeading
    case bottomTrailing
    case center
    case centerFirstTextBaseline
    case centerLastTextBaseline
    case leading
    case leadingFirstTextBaseline
    case leadingLastTextBaseline
    case top
    case topLeading
    case topTrailing
    case trailing
    case trailingFirstTextBaseline
    case trailingLastTextBaseline
}
