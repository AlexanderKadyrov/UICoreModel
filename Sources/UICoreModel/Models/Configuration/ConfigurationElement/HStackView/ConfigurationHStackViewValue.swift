import Foundation

struct ConfigurationHStackViewValue: Codable, Hashable {
    
    enum VerticalAlignment: String, Codable {
        case top
        case center
        case bottom
        case firstTextBaseline
        case lastTextBaseline
    }
    
    var alignment: VerticalAlignment?
    var spacing: ConfigurationFloat?
}
