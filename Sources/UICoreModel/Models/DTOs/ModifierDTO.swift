import Foundation

public struct ModifierDTO: Codable, Hashable {
    
    public let id: Int?
    public let modifierTypeId: Int?
    public let elementId: Int?
    public let configuration: Configuration
    
    public let createdAt: Date?
    public let updatedAt: Date?
    public let deletedAt: Date?
    
    public init(id: Int?, modifierTypeId: Int?, elementId: Int?, configuration: Configuration, createdAt: Date?, updatedAt: Date?, deletedAt: Date?) {
        self.id = id
        self.modifierTypeId = modifierTypeId
        self.elementId = elementId
        self.configuration = configuration
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
    }
}
