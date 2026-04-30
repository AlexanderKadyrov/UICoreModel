import Foundation

public struct ConfigurationVStackViewValue: Codable, Hashable, Sendable {
    
    public enum HorizontalAlignment: String, Codable, Sendable {
        case leading
        case center
        case trailing
    }
    
    public let alignment: HorizontalAlignment?
    public let spacing: ConfigurationFloat?
    
    public init(alignment: HorizontalAlignment?, spacing: ConfigurationFloat?) {
        self.alignment = alignment
        self.spacing = spacing
    }
}
