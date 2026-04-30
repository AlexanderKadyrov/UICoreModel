import Foundation

public struct ConfigurationTabItemValue: Codable, Hashable, Sendable {
    
    public let name: String
    public let systemImage: String
    
    public init(name: String, systemImage: String) {
        self.name = name
        self.systemImage = systemImage
    }
}
