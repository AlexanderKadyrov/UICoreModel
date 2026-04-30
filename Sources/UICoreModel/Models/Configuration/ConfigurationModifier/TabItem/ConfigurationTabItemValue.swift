import Foundation

public struct ConfigurationTabItemValue: Codable, Hashable {
    
    public let name: String
    public let systemImage: String
    
    public init(name: String, systemImage: String) {
        self.name = name
        self.systemImage = systemImage
    }
}
