import Foundation

public struct ModifierDTO: Codable, Hashable, Sendable {
    
    public let id: Int?
    public let modifierTypeId: Int?
    public let elementId: Int?
    public let configuration: Configuration
    
    public init(id: Int?, modifierTypeId: Int?, elementId: Int?, configuration: Configuration) {
        self.id = id
        self.modifierTypeId = modifierTypeId
        self.elementId = elementId
        self.configuration = configuration
    }
}
