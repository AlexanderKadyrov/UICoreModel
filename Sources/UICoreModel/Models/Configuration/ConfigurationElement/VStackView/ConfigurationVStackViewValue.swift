import Foundation

public struct ConfigurationVStackViewValue: Codable, Hashable {
    
    public enum HorizontalAlignment: String, Codable {
        case leading
        case center
        case trailing
    }
    
    public let alignment: HorizontalAlignment?
    public let spacing: ConfigurationFloat?
}
