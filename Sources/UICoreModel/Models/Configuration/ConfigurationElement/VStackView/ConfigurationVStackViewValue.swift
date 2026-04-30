import Foundation

struct ConfigurationVStackViewValue: Codable, Hashable {
    
    enum HorizontalAlignment: String, Codable {
        case leading
        case center
        case trailing
    }
    
    var alignment: HorizontalAlignment?
    var spacing: ConfigurationFloat?
}
