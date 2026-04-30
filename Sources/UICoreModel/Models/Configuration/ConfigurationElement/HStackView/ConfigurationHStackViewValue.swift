import Foundation

public struct ConfigurationHStackViewValue: Codable, Hashable {
    
    public enum VerticalAlignment: String, Codable {
        case top
        case center
        case bottom
        case firstTextBaseline
        case lastTextBaseline
    }
    
    public let alignment: VerticalAlignment?
    public let spacing: ConfigurationFloat?
}
