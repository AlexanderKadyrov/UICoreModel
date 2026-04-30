import Foundation

public struct ConfigurationHStackViewValue: Codable, Hashable, Sendable {
    
    public enum VerticalAlignment: String, Codable, Sendable {
        case top
        case center
        case bottom
        case firstTextBaseline
        case lastTextBaseline
    }
    
    public let alignment: VerticalAlignment?
    public let spacing: ConfigurationFloat?
    
    public init(alignment: VerticalAlignment?, spacing: ConfigurationFloat?) {
        self.alignment = alignment
        self.spacing = spacing
    }
}
