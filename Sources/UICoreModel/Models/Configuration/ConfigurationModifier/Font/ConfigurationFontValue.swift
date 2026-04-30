import Foundation

public struct ConfigurationFontValue: Codable, Hashable, Sendable {
    
    public let name: String
    public let size: ConfigurationFloat
    
    public init(name: String, size: ConfigurationFloat) {
        self.name = name
        self.size = size
    }
}
